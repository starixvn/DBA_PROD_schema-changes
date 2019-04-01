/*
	Creator:	20190401@Billy
	Task:		Add SSIS of [SMP_Market_bk] & [SMP_MarketSelection_bk] to Archive DR job - Sync - [Redmine: #110006]
	Server:		DBMNL
*/

SET NOCOUNT ON;

USE msdb;
GO

BEGIN TRANSACTION;

DECLARE @ReturnCode		INT
	,	@JobId			BINARY(16)
	,	@Loop			INT
	,	@StepName		NVARCHAR(128)
	,	@Msg			NVARCHAR(MAX)
	;

-- Input --
DECLARE	@JobName		NVARCHAR(128)	= N'_SYNC: [DBMNL-DB06@MNL] Synchonizing Archive Data'
	,	@Steps			INT				= 43
	;

SELECT	@JobId	= job.job_id
FROM	msdb.dbo.sysjobs AS job WITH (NOLOCK)
WHERE	job.name = @JobName;


-- Init job steps -- 2 new steps: 42 & 43
BEGIN;
	SELECT	@Loop	= 42
		;

	WHILE	@Loop <= @Steps
	BEGIN;
		SELECT	@StepName	= N'Step ' + CAST(@Loop AS NVARCHAR);

		EXECUTE	@ReturnCode	= msdb.dbo.sp_add_jobstep
								@job_id						= @JobId
							,	@step_name					= @StepName
							,	@step_id					= @Loop
							;
					
		IF	@@ERROR <> 0 OR @ReturnCode <> 0
			GOTO QuitWithRollback;

		SELECT	@Loop = @Loop + 1;
	END;

	SELECT	@Msg = N'INITIATED ' + CAST(@Steps AS NVARCHAR) + N' STEPS';
	RAISERROR(@Msg, 0, 0) WITH NOWAIT;
END;


---- Step 1 ---- Update on fail step id
BEGIN;
	SELECT	@Loop = 1;

	EXECUTE	@ReturnCode	= msdb.dbo.sp_update_jobstep
							@job_id						= @JobId
						,	@step_name					= N'Check date'
						,	@step_id					= @Loop
						,	@cmdexec_success_code		= 0
						,	@on_success_action			= 3
						,	@on_success_step_id			= 0
						,	@on_fail_action				= 4
						,	@on_fail_step_id			= 42	-- Jump to step [Check Rowcount]
						,	@retry_attempts				= 0
						,	@retry_interval				= 0
						,	@os_run_priority			= 0
						,	@subsystem					= N'TSQL'
						,	@database_name				= N'bodb_Archive_staging'
						,	@flags						= 0
						,	@command					= N'
IF	NOT EXISTS (SELECT 1 FROM Task_MNL_ArchiveData WITH (NOLOCK) WHERE isStaged = 1 AND isDone = 0)
	RAISERROR(''All date are synced!'', 11, 0);
';

	IF	@@ERROR <> 0 OR @ReturnCode <> 0
		GOTO QuitWithRollback;

	SELECT	@Msg = N'STEP %d ADDED';
	RAISERROR(@Msg, 0, 0, @Loop) WITH NOWAIT;
END;

---- Step 38 ---- Add [SMP_Market_bk]
BEGIN;
	SELECT	@Loop = 38;

	EXECUTE	@ReturnCode	= msdb.dbo.sp_update_jobstep
							@job_id						= @JobId
						,	@step_name					= N'SMP_Market_bk'
						,	@step_id					= @Loop
						,	@cmdexec_success_code		= 0
						,	@on_success_action			= 3
						,	@on_success_step_id			= 0
						,	@on_fail_action				= 2
						,	@on_fail_step_id			= 0
						,	@retry_attempts				= 0
						,	@retry_interval				= 0
						,	@os_run_priority			= 0
						,	@subsystem					= N'SSIS'
						,	@database_name				= N'master'
						,	@flags						= 0
						,	@command					= N'/FILE "G:\IBC_DB\_SSIS\DBMNL_Sync_DB06\SMP_Market_bk.dtsx" /DECRYPT "ss1s@w3e" /CHECKPOINTING OFF /REPORTING E';

	IF	@@ERROR <> 0 OR @ReturnCode <> 0
		GOTO QuitWithRollback;

	SELECT	@Msg = N'STEP %d UPDATED';
	RAISERROR(@Msg, 0, 0, @Loop) WITH NOWAIT;
END;

---- Step 39 ---- Add [SMP_MarketSelection_bk]
BEGIN;
	SELECT	@Loop = 39;

	EXECUTE	@ReturnCode	= msdb.dbo.sp_update_jobstep
							@job_id						= @JobId
						,	@step_name					= N'SMP_MarketSelection_bk'
						,	@step_id					= @Loop
						,	@cmdexec_success_code		= 0
						,	@on_success_action			= 3
						,	@on_success_step_id			= 0
						,	@on_fail_action				= 2
						,	@on_fail_step_id			= 0
						,	@retry_attempts				= 0
						,	@retry_interval				= 0
						,	@os_run_priority			= 0
						,	@subsystem					= N'SSIS'
						,	@database_name				= N'master'
						,	@flags						= 0
						,	@command					= N'/FILE "G:\IBC_DB\_SSIS\DBMNL_Sync_DB06\SMP_MarketSelection_bk.dtsx" /DECRYPT "ss1s@w3e" /CHECKPOINTING OFF /REPORTING E';

	IF	@@ERROR <> 0 OR @ReturnCode <> 0
		GOTO QuitWithRollback;

	SELECT	@Msg = N'STEP %d UPDATED';
	RAISERROR(@Msg, 0, 0, @Loop) WITH NOWAIT;
END;

---- Step 40 ---- Move step 38 to 40
BEGIN;
	SELECT	@Loop = 40;

	EXECUTE	@ReturnCode	= msdb.dbo.sp_update_jobstep
							@job_id						= @JobId
						,	@step_name					= N'Delete match_bk'
						,	@step_id					= @Loop
						,	@cmdexec_success_code		= 0
						,	@on_success_action			= 3
						,	@on_success_step_id			= 0
						,	@on_fail_action				= 2
						,	@on_fail_step_id			= 0
						,	@retry_attempts				= 0
						,	@retry_interval				= 0
						,	@os_run_priority			= 0
						,	@subsystem					= N'SSIS'
						,	@database_name				= N'master'
						,	@flags						= 0
						,	@command					= N'/FILE "G:\IBC_DB\_SSIS\DBMNL_Sync_DB06\match_bk_delete.dtsx" /DECRYPT "ss1s@w3e" /CHECKPOINTING OFF /REPORTING E';

	IF	@@ERROR <> 0 OR @ReturnCode <> 0
		GOTO QuitWithRollback;

	SELECT	@Msg = N'STEP %d UPDATED';
	RAISERROR(@Msg, 0, 0, @Loop) WITH NOWAIT;
END;

---- Step 41 ---- Move step 39 to 41
BEGIN;
	SELECT	@Loop = 41;

	EXECUTE	@ReturnCode	= msdb.dbo.sp_update_jobstep
							@job_id						= @JobId
						,	@step_name					= N'Update Task_MNL_ArchiveData'
						,	@step_id					= @Loop
						,	@cmdexec_success_code		= 0
						,	@on_success_action			= 4
						,	@on_success_step_id			= 1
						,	@on_fail_action				= 2
						,	@on_fail_step_id			= 0
						,	@retry_attempts				= 0
						,	@retry_interval				= 0
						,	@os_run_priority			= 0
						,	@subsystem					= N'TSQL'
						,	@database_name				= N'bodb_Archive_staging'
						,	@flags						= 0
						,	@command					= N'
UPDATE	TOP(1) tbl
SET		isDone = 1
FROM	dbo.Task_MNL_ArchiveData tbl
WHERE	winlostdate = (SELECT MIN(winlostdate) FROM Task_MNL_ArchiveData WITH (NOLOCK) WHERE isStaged = 1 AND isDone = 0);

IF	@@ROWCOUNT <> 1
	RAISERROR(''Something wrong is happening!'', 11, 0);
';

	IF	@@ERROR <> 0 OR @ReturnCode <> 0
		GOTO QuitWithRollback;

	SELECT	@Msg = N'STEP %d UPDATED';
	RAISERROR(@Msg, 0, 0, @Loop) WITH NOWAIT;
END;

---- Step 42 ---- Move step 40 to 42
BEGIN;
	SELECT	@Loop = 42;

	EXECUTE	@ReturnCode	= msdb.dbo.sp_update_jobstep
							@job_id						= @JobId
						,	@step_name					= N'Check Rowcount'
						,	@step_id					= @Loop
						,	@cmdexec_success_code		= 0
						,	@on_success_action			= 3
						,	@on_success_step_id			= 0
						,	@on_fail_action				= 2
						,	@on_fail_step_id			= 0
						,	@retry_attempts				= 0
						,	@retry_interval				= 0
						,	@os_run_priority			= 0
						,	@subsystem					= N'TSQL'
						,	@database_name				= N'bodb_Archive_staging'
						,	@flags						= 0
						,	@command					= N'
EXECUTE dbo.Task_MNL_CheckRowcount;
';

	IF	@@ERROR <> 0 OR @ReturnCode <> 0
		GOTO QuitWithRollback;

	SELECT	@Msg = N'STEP %d UPDATED';
	RAISERROR(@Msg, 0, 0, @Loop) WITH NOWAIT;
END;

---- Step 43 ---- Move step 41 to 43
BEGIN;
	SELECT	@Loop = 43;

	EXECUTE	@ReturnCode	= msdb.dbo.sp_update_jobstep
							@job_id						= @JobId
						,	@step_name					= N'Re-sync if there are rowcount mismatch'
						,	@step_id					= @Loop
						,	@cmdexec_success_code		= 0
						,	@on_success_action			= 1
						,	@on_success_step_id			= 0
						,	@on_fail_action				= 2
						,	@on_fail_step_id			= 0
						,	@retry_attempts				= 0
						,	@retry_interval				= 0
						,	@os_run_priority			= 0
						,	@subsystem					= N'TSQL'
						,	@database_name				= N'msdb'
						,	@flags						= 0
						,	@command					= N'
IF	EXISTS(SELECT 1 FROM bodb_Archive_staging.dbo.Task_MNL_ArchiveCheckRowcount WITH (NOLOCK))
	EXECUTE dbo.sp_start_job @job_name = ''_SYNC: [KBT-DBMNL] Staging Archive Data'', @step_name = ''Mark Unsync Dates'';
';

	IF	@@ERROR <> 0 OR @ReturnCode <> 0
		GOTO QuitWithRollback;

	SELECT	@Msg = N'STEP %d UPDATED';
	RAISERROR(@Msg, 0, 0, @Loop) WITH NOWAIT;
END;

-- All success -- Commit changes --
COMMIT TRANSACTION;
SELECT	@Msg = N'*** JOB UPDATED SUCCESSFULLY ***';
RAISERROR(@Msg, 0, 0) WITH NOWAIT;
GOTO EndSave;

-- Jump point -- Failure --
QuitWithRollback:
IF	@@TRANCOUNT > 0
	ROLLBACK TRANSACTION;

-- Jump point -- Finish --
EndSave:
GO