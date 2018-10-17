/*
	Creator:	20181017@Billy
	Task:		Remove jobs of old Fraud Detection (Fraud Sensor 1.0) - [Redmine: #103348]
	Server:		DB054
*/


SET NOCOUNT ON;

USE msdb;
GO

BEGIN TRANSACTION;

DECLARE @ReturnCode		INT
	,	@jobId			BINARY(16)
	,	@msg			NVARCHAR(MAX)
	;

-- Input --
DECLARE	@jobname		NVARCHAR(128)
	;

SELECT	@ReturnCode		= 0;

-- Delete job [SPU_FraudDetection: Get Bet IP] --

SELECT	@jobname = 'SPU_FraudDetection: Get Bet IP';

SELECT	@jobId	= job.job_id
FROM	msdb.dbo.sysjobs AS job WITH (NOLOCK)
WHERE	job.name = @jobname;

IF	@@ROWCOUNT <> 0
BEGIN;
	EXECUTE	@ReturnCode	= msdb.dbo.sp_delete_job
							@job_id						= @jobId
						,	@delete_history				= 1
						,	@delete_unused_schedule		= 1
						;

	IF	@@ERROR <> 0 OR @ReturnCode <> 0
		GOTO QuitWithRollback;

	SELECT	@msg = N'JOB [%s] DELETED';
	RAISERROR(@msg, 0, 0, @jobname) WITH NOWAIT;
END;

-- Delete job [SPU_FraudDetection: Del Old Data] --

SELECT	@jobname = 'SPU_FraudDetection: Del Old Data';

SELECT	@jobId	= job.job_id
FROM	msdb.dbo.sysjobs AS job WITH (NOLOCK)
WHERE	job.name = @jobname;

IF	@@ROWCOUNT <> 0
BEGIN;
	EXECUTE	@ReturnCode	= msdb.dbo.sp_delete_job
							@job_id						= @jobId
						,	@delete_history				= 1
						,	@delete_unused_schedule		= 1
						;

	IF	@@ERROR <> 0 OR @ReturnCode <> 0
		GOTO QuitWithRollback;

	SELECT	@msg = N'JOB [%s] DELETED';
	RAISERROR(@msg, 0, 0, @jobname) WITH NOWAIT;
END;

-- All success -- Commit changes --
COMMIT TRANSACTION;
SELECT	@msg = N'*** JOB DELETED SUCCESSFULLY ***';
RAISERROR(@msg, 0, 0) WITH NOWAIT;
GOTO EndSave;

-- Jump point -- Failure --
QuitWithRollback:
IF	@@TRANCOUNT > 0
	ROLLBACK TRANSACTION;

-- Jump point -- Finish --
EndSave:
GO