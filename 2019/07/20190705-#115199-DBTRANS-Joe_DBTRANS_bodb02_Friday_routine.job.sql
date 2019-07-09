/*
	Creator:	@
	Job Name:	[Joe : DBTRANS_bodb02 : Friday routine]
	Server:		DBTRANS
	Revision:
		- 20180725@Billy:	Initiate on GIT - [Redmine: #00000]
		- 20180725@Billy:	Change the way of deleting data (except [bettransm14]) - [Redmine: #98857]
		- 20181018@Billy:	Update Category - [Redmine: #103430]
		- 20181218@Daniel:	Add table [Transfer_Coll] - [Redmine: #106220]
		- 20190704@Billy:	Add [MarkedTransaction] to Friday Routine - [Redmine: #115199]
*/

SET NOCOUNT ON;

USE msdb;
GO

BEGIN TRANSACTION;

DECLARE @ReturnCode		INT
	,	@JobId			BINARY(16)
	,	@StepId			INT
	,	@Msg			NVARCHAR(MAX)
	;
	
-- Input --
DECLARE	@Category		NVARCHAR(128)	= N'MoveBet/BalanceUp'
	,	@JobName		NVARCHAR(128)	= N'Joe : DBTRANS_bodb02 : Friday routine'
	;

SELECT	@ReturnCode		= 0;

IF	ISNULL(@Category, N'') = N''
OR	ISNULL(@JobName, N'') = N''
BEGIN;
	RAISERROR('Invalid Input!', 16, 1) WITH NOWAIT;
	RETURN;
END;

-- Add job --
SELECT	@JobId	= job.job_id
FROM	msdb.dbo.sysjobs AS job WITH (NOLOCK)
WHERE	job.name = @JobName;

IF	@@ROWCOUNT = 0 AND @JobId IS NULL
BEGIN;
	SELECT	@Msg = N'~~ JOB DOESN''T EXIST ~~';
	RAISERROR(@Msg, 0, 0) WITH NOWAIT;

	GOTO QuitWithRollback;
END;
ELSE
BEGIN;
	SELECT	@Msg = N'~~ JOB EXISTS ~~';
	RAISERROR(@Msg, 0, 0) WITH NOWAIT;
END;

-- Define job steps --
---- Step 1 ----
BEGIN;
	SELECT	@StepId = 1;

	EXECUTE	@ReturnCode	= msdb.dbo.sp_update_jobstep
							@job_id						= @JobId
						,	@step_name					= N'Archive Event'
						,	@step_id					= @StepId
						,	@cmdexec_success_code		= 0
						,	@on_success_action			= 3
						,	@on_success_step_id			= 0
						,	@on_fail_action				= 2
						,	@on_fail_step_id			= 0
						,	@retry_attempts				= 0
						,	@retry_interval				= 0
						,	@os_run_priority			= 0
						,	@subsystem					= N'TSQL'
						,	@database_name				= N'bodb02'
						,	@flags						= 0
						,	@command					= N'\
DECLARE @archiveDate TABLE (rid int PRIMARY KEY IDENTITY(1,1), winlostdate smalldatetime)
INSERT INTO @archiveDate (winlostdate)
SELECT winlostdate FROM dbo.task_archivedate
ORDER BY 1

Declare @wldate smalldatetime

SELECT @wldate = MAX(winlostdate) FROM @archiveDate;
EXECUTE dbo.Task_Archive_Bet @winlostdate = @wldate, @DeletedTarget = ''MarkedTransaction'';
WAITFOR DELAY ''00:00:30'';

SELECT @wldate = winlostdate FROM @archiveDate WHERE rid = 1   EXEC DB02.bodb02.dbo.Task_Archive_Event @wldate, @Action = ''delete''
WAITFOR DELAY ''00:00:05''
SELECT @wldate = winlostdate FROM @archiveDate WHERE rid = 2   EXEC DB02.bodb02.dbo.Task_Archive_Event @wldate, @Action = ''delete''
WAITFOR DELAY ''00:01:05''
SELECT @wldate = winlostdate FROM @archiveDate WHERE rid = 3   EXEC DB02.bodb02.dbo.Task_Archive_Event @wldate, @Action = ''delete''
WAITFOR DELAY ''00:00:05''
SELECT @wldate = winlostdate FROM @archiveDate WHERE rid = 4   EXEC DB02.bodb02.dbo.Task_Archive_Event @wldate, @Action = ''delete''
WAITFOR DELAY ''00:01:05''
SELECT @wldate = winlostdate FROM @archiveDate WHERE rid = 5   EXEC DB02.bodb02.dbo.Task_Archive_Event @wldate, @Action = ''delete''
WAITFOR DELAY ''00:00:05''
SELECT @wldate = winlostdate FROM @archiveDate WHERE rid = 6   EXEC DB02.bodb02.dbo.Task_Archive_Event @wldate, @Action = ''delete''
WAITFOR DELAY ''00:01:05''
SELECT @wldate = winlostdate FROM @archiveDate WHERE rid = 7   EXEC DB02.bodb02.dbo.Task_Archive_Event @wldate, @Action = ''delete''

WAITFOR DELAY ''00:01:10''

SELECT @wldate = winlostdate FROM @archiveDate WHERE rid = 1
EXEC Task_Archive_Bet @winlostdate = @wldate, @DeletedTarget = ''betParlayResult''
WAITFOR DELAY ''00:00:30''
EXEC Task_Archive_Bet @winlostdate = @wldate, @DeletedTarget = ''betParlayDetail''
WAITFOR DELAY ''00:01:00''

SELECT @wldate = winlostdate FROM @archiveDate WHERE rid = 2
EXEC Task_Archive_Bet @winlostdate = @wldate, @DeletedTarget = ''betParlayResult''
WAITFOR DELAY ''00:00:30''
EXEC Task_Archive_Bet @winlostdate = @wldate, @DeletedTarget = ''betParlayDetail''
WAITFOR DELAY ''00:01:00''

SELECT @wldate = winlostdate FROM @archiveDate WHERE rid = 3
EXEC Task_Archive_Bet @winlostdate = @wldate, @DeletedTarget = ''betParlayResult''
WAITFOR DELAY ''00:00:30''
EXEC Task_Archive_Bet @winlostdate = @wldate, @DeletedTarget = ''betParlayDetail''
WAITFOR DELAY ''00:01:00''

SELECT @wldate = winlostdate FROM @archiveDate WHERE rid = 4
EXEC Task_Archive_Bet @winlostdate = @wldate, @DeletedTarget = ''betParlayResult''
WAITFOR DELAY ''00:00:30''
EXEC Task_Archive_Bet @winlostdate = @wldate, @DeletedTarget = ''betParlayDetail''
WAITFOR DELAY ''00:01:00''

SELECT @wldate = winlostdate FROM @archiveDate WHERE rid = 5
EXEC Task_Archive_Bet @winlostdate = @wldate, @DeletedTarget = ''betParlayResult''
WAITFOR DELAY ''00:00:30''
EXEC Task_Archive_Bet @winlostdate = @wldate, @DeletedTarget = ''betParlayDetail''
WAITFOR DELAY ''00:01:00''

SELECT @wldate = winlostdate FROM @archiveDate WHERE rid = 6
EXEC Task_Archive_Bet @winlostdate = @wldate, @DeletedTarget = ''betParlayResult''
WAITFOR DELAY ''00:00:30''
EXEC Task_Archive_Bet @winlostdate = @wldate, @DeletedTarget = ''betParlayDetail''
WAITFOR DELAY ''00:01:00''

SELECT @wldate = winlostdate FROM @archiveDate WHERE rid = 7
EXEC Task_Archive_Bet @winlostdate = @wldate, @DeletedTarget = ''betParlayResult''
WAITFOR DELAY ''00:00:30''
EXEC Task_Archive_Bet @winlostdate = @wldate, @DeletedTarget = ''betParlayDetail''

WAITFOR DELAY ''00:01:30''

SELECT @wldate = MAX(winlostdate) FROM @archiveDate;
EXECUTE dbo.Task_Archive_Bet @winlostdate = @wldate, @DeletedTarget = ''Task_bettrans14_IP2Country''
WAITFOR DELAY ''00:00:30'';
EXECUTE dbo.Task_Archive_Bet @winlostdate = @wldate, @DeletedTarget = ''Task_bettransRNG14_IP2Country''
WAITFOR DELAY ''00:00:30'';
EXECUTE dbo.Task_Archive_Bet @winlostdate = @wldate, @DeletedTarget = ''Task_bettransLC14_IP2Country''
WAITFOR DELAY ''00:00:30'';

--- delete old data for NG2
SELECT @wldate = MAX(winlostdate)
FROM @archiveDate 

DELETE b 
FROM dbo.bettrans_Staging b 
	INNER JOIN SettlementNG2_Message m WITH(NOLOCK) ON b.SeqId = m.SeqID
WHERE
	m.EventDate <= @wldate
WAITFOR DELAY ''00:01:20''

DELETE FROM SettlementNG2_Message
WHERE EventDate <= @wldate

WAITFOR DELAY ''00:01:30''
';

	IF	@@ERROR <> 0 OR @ReturnCode <> 0
		GOTO QuitWithRollback;

	SELECT	@Msg = N'STEP %d UPDATED';
	RAISERROR(@Msg, 0, 0, @StepId) WITH NOWAIT;
END;

-- All success -- Commit changes --
COMMIT TRANSACTION;
SELECT	@msg = N'*** JOB CHANGED SUCCESSFULLY ***';
RAISERROR(@msg, 0, 0) WITH NOWAIT;
GOTO EndSave;

-- Jump point -- Failure --
QuitWithRollback:
IF	@@TRANCOUNT > 0
	ROLLBACK TRANSACTION;

-- Jump point -- Finish --
EndSave:
GO