/*
	Creator:	20180828@Billy
	Task:		Update archive rptStatement job - [Redmine: #99955]
	Server:		DB06, DBTP
*/

SET NOCOUNT ON;

USE msdb;
GO

BEGIN TRANSACTION;

DECLARE @ReturnCode		INT
	,	@jobId			BINARY(16)
	,	@loop			INT
	,	@msg			NVARCHAR(MAX)
	;
	
DECLARE	@jobname		NVARCHAR(128)	= N'bodb_Report: Weekly Archive Into rptStatementOld'
	;

SELECT	@jobId	= job.job_id
FROM	msdb.dbo.sysjobs AS job WITH (NOLOCK)
WHERE	job.name = @jobname;

IF	@@ROWCOUNT = 0 AND @jobId IS NULL
	GOTO QuitWithRollback;

---- Step 1 ----
BEGIN;
	SELECT	@loop = 1;

	EXECUTE	@ReturnCode	= msdb.dbo.sp_update_jobstep
							@job_id						= @jobId
						,	@step_name					= N'archive rptStatement_Old from rptStatement'
						,	@step_id					= @loop
						,	@cmdexec_success_code		= 0
						,	@on_success_action			= 1
						,	@on_success_step_id			= 0
						,	@on_fail_action				= 2
						,	@on_fail_step_id			= 0
						,	@retry_attempts				= 0
						,	@retry_interval				= 0
						,	@os_run_priority			= 0
						,	@subsystem					= N'TSQL'
						,	@database_name				= N'bodb_Report'
						,	@flags						= 0
						,	@command					= N'
DECLARE	@InputDate	DATETIME;
DECLARE	@TempDate	DATETIME;
DECLARE	@Count		INT;
DECLARE	@DateName	VARCHAR(10);

DECLARE	@MBUDay		AS TABLE (BalanceUpDay SMALLDATETIME, MoveBetsDay SMALLDATETIME);

IF	@InputDate IS NULL
BEGIN;
	INSERT INTO @MBUDay(BalanceUpDay, MoveBetsDay)
	EXECUTE	bodb02.dbo.Age_SelBalanceUpDay;

	SELECT	@InputDate = BalanceUpDay
	FROM	@MBUDay;
END;

SELECT	@TempDate = DATEADD(DAY, 1, MAX(WinlostDate))
FROM	dbo.rptStatement_Old WITH (NOLOCK)
WHERE	CustID < 1000;

IF	@InputDate = @TempDate
	RAISERROR(''BalanceUp is not run yet!!!!!'', 16, 1) WITH NOWAIT;

SELECT	@DateName = DATENAME(WEEKDAY, CONVERT(DATE, DATEADD(WEEK, -1, GETDATE())));

IF	@DateName = ''Thursday''
BEGIN;
	SELECT	@count = -7;
	WHILE	@count < 0
	BEGIN;
		SELECT	@TempDate = DATEADD(DAY, @Count, @InputDate);
		EXECUTE	dbo.Task_archive_rptStatement_Insert @TempDate;
		SELECT	@count = @count + 1;
	END;
END;
ELSE IF	@DateName = ''Friday''
BEGIN
	SELECT	@count = -7;
	WHILE	@count < 0
	BEGIN;
		SELECT	@TempDate = DATEADD(DAY, @Count, @InputDate);
		EXECUTE	dbo.Task_archive_rptStatement_Delete @TempDate;
		SELECT	@count = @count + 1;
	END;
END
ELSE
	RAISERROR (''Invalid BalanceUp Date!!!!!'', 16, 1) WITH NOWAIT;
';

	IF	@@ERROR <> 0 OR @ReturnCode <> 0
		GOTO QuitWithRollback;

	SELECT	@msg = N'STEP %d UPDATED';
	RAISERROR(@msg, 0, 0, @loop) WITH NOWAIT;
END;

-- All success -- Commit changes --
COMMIT TRANSACTION;
SELECT	@msg = N'*** JOB UPDATED SUCCESSFULLY ***';
RAISERROR(@msg, 0, 0) WITH NOWAIT;
GOTO EndSave;

-- Jump point -- Failure --
QuitWithRollback:
IF	@@TRANCOUNT > 0
	ROLLBACK TRANSACTION;

-- Jump point -- Finish --
EndSave:
GO