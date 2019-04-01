/*
	Creator:	20190401@Billy
	Task:		Add SSIS of [SMP_Market_bk] & [SMP_MarketSelection_bk] to Archive HA job - [Redmine: #110006]
	Server:		DB06
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
DECLARE	@JobName		NVARCHAR(128)	= N'__SYNC: [DB06-DBTP] Archived tables'
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


---- Step 2 ---- Update on fail step id
BEGIN;
	SELECT	@Loop = 2;

	EXECUTE	@ReturnCode	= msdb.dbo.sp_update_jobstep
							@job_id						= @JobId
						,	@step_name					= N'validate run date'
						,	@step_id					= @Loop
						,	@cmdexec_success_code		= 0
						,	@on_success_action			= 3
						,	@on_success_step_id			= 0
						,	@on_fail_action				= 4
						,	@on_fail_step_id			= 42	-- Point to step [Re-sync if there are rowcount mismatch]
						,	@retry_attempts				= 0
						,	@retry_interval				= 0
						,	@os_run_priority			= 0
						,	@subsystem					= N'TSQL'
						,	@database_name				= N'bodb_Archive'
						,	@flags						= 0
						,	@command					= N'
EXEC DB06.bodb_archive.dbo.Task_DBTP_Archive_SelectDate ''VAL'';
';

	IF	@@ERROR <> 0 OR @ReturnCode <> 0
		GOTO QuitWithRollback;

	SELECT	@Msg = N'STEP %d UPDATED';
	RAISERROR(@Msg, 0, 0, @Loop) WITH NOWAIT;
END;

---- Step 39 ---- Add [SMP_Market_bk]
BEGIN;
	SELECT	@Loop = 39;

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
						,	@command					= N'/FILE "H:\IBC_DB\_SSIS_library\DB06 to DBTP\Viet - DB06 to DBTP - SMP_Market_bk.dtsx" /DECRYPT "ss1s@w3e" /CHECKPOINTING OFF /REPORTING E';

	IF	@@ERROR <> 0 OR @ReturnCode <> 0
		GOTO QuitWithRollback;

	SELECT	@Msg = N'STEP %d UPDATED';
	RAISERROR(@Msg, 0, 0, @Loop) WITH NOWAIT;
END;

---- Step 40 ---- Add [SMP_MarketSelection_bk]
BEGIN;
	SELECT	@Loop = 40;

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
						,	@command					= N'/FILE "H:\IBC_DB\_SSIS_library\DB06 to DBTP\Viet - DB06 to DBTP - SMP_MarketSelection_bk.dtsx" /DECRYPT "ss1s@w3e" /CHECKPOINTING OFF /REPORTING E';

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
						,	@step_name					= N'update_done'
						,	@step_id					= @Loop
						,	@cmdexec_success_code		= 0
						,	@on_success_action			= 4
						,	@on_success_step_id			= 2
						,	@on_fail_action				= 2
						,	@on_fail_step_id			= 0
						,	@retry_attempts				= 0
						,	@retry_interval				= 0
						,	@os_run_priority			= 0
						,	@subsystem					= N'SSIS'
						,	@database_name				= N'master'
						,	@flags						= 0
						,	@command					= N'/FILE "H:\IBC_DB\_SSIS_library\DB06 to DBTP\Viet - DB06 to DBTP - update_done.dtsx" /DECRYPT "ss1s@w3e" /CHECKPOINTING OFF /REPORTING E';

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
						,	@step_name					= N'Re-sync if there are rowcount mismatch'
						,	@step_id					= @Loop
						,	@cmdexec_success_code		= 0
						,	@on_success_action			= 3
						,	@on_success_step_id			= 0
						,	@on_fail_action				= 4
						,	@on_fail_step_id			= 1
						,	@retry_attempts				= 0
						,	@retry_interval				= 0
						,	@os_run_priority			= 0
						,	@subsystem					= N'TSQL'
						,	@database_name				= N'bodb_Archive'
						,	@flags						= 0
						,	@command					= N'
IF	EXISTS(SELECT 1 FROM DB06.bodb_Archive.dbo.Task_DBTP_ArchiveCheckRowcount WITH (NOLOCK))
	RAISERROR(''Re-sync data!'', 16, 1) WITH NOWAIT;
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
						,	@step_name					= N'Letstalk Notification'
						,	@step_id					= @Loop
						,	@cmdexec_success_code		= 0
						,	@on_success_action			= 1
						,	@on_success_step_id			= 0
						,	@on_fail_action				= 1
						,	@on_fail_step_id			= 0
						,	@retry_attempts				= 0
						,	@retry_interval				= 0
						,	@os_run_priority			= 0
						,	@subsystem					= N'TSQL'
						,	@database_name				= N'master'
						,	@flags						= 0
						,	@command					= N'
DECLARE	@JobName	NVARCHAR(128) = N''__SYNC: [DB06-DBTP] Archived tables''
	,	@Time		BIGINT
	,	@msg		NVARCHAR(MAX)
	;

BEGIN TRY
	SELECT	@Time = DATEDIFF(MILLISECOND, jc.start_execution_date, GETDATE())
	FROM msdb.dbo.sysjobs j
	CROSS APPLY (
		SELECT	TOP 1
				ja.start_execution_date, ja.stop_execution_date
		FROM	msdb.dbo.sysjobactivity ja
		WHERE	ja.job_id = j.job_id
		ORDER BY ja.session_id DESC
	) jc
	WHERE	j.name = @JobName
		AND	jc.start_execution_date IS NOT NULL
		AND	jc.stop_execution_date IS NULL
	ORDER BY j.name;
END TRY
BEGIN CATCH
	SELECT	@Time = DATEDIFF(SECOND, jc.start_execution_date, GETDATE()) * 1000
	FROM msdb.dbo.sysjobs j
	CROSS APPLY (
		SELECT	TOP 1
				ja.start_execution_date, ja.stop_execution_date
		FROM	msdb.dbo.sysjobactivity ja
		WHERE	ja.job_id = j.job_id
		ORDER BY ja.session_id DESC
	) jc
	WHERE	j.name = @JobName
		AND	jc.start_execution_date IS NOT NULL
		AND	jc.stop_execution_date IS NULL
	ORDER BY j.name;
END CATCH;

SELECT	@msg	= N''Job completed.
Duration: ''		+ CASE WHEN @Time / 1000 / 60 / 60 / 24 = 0 THEN '''' ELSE CAST(@Time / 1000 / 60 / 60 / 24 AS NVARCHAR) + '' d '' END
				+ CASE WHEN @Time / 1000 / 60 / 60 % 60 < 10 THEN ''0'' + CAST(@Time / 1000 / 60 / 60 % 60 AS NVARCHAR) ELSE CAST(@Time / 1000 / 60 / 60 % 60 AS NVARCHAR) END
+ '':''			+ CASE WHEN @Time / 1000 / 60 % 60 < 10 THEN ''0'' + CAST(@Time / 1000 / 60 % 60 AS NVARCHAR) ELSE CAST(@Time / 1000 / 60 % 60 AS NVARCHAR) END
+ '':''			+ CASE WHEN @Time / 1000 % 60 < 10 THEN ''0'' + CAST(@Time / 1000 % 60 AS NVARCHAR) ELSE CAST(@Time / 1000 % 60 AS NVARCHAR) END
+ ''.''			+ CASE WHEN @Time % 1000 < 10 THEN ''00'' + CAST(@Time % 1000 AS NVARCHAR) WHEN @Time % 1000 < 100 THEN ''0'' + CAST(@Time % 1000 AS NVARCHAR) ELSE CAST(@Time % 1000 AS NVARCHAR) END
;

EXECUTE DBMONDW.MonDBDW.dbo.[DBA_Letstalk_NewJobMessage] 
			@ServerName	= @@SERVERNAME
		,	@JobId		= NULL
		,	@JobName	= @JobName
		,	@Message	= @msg
		;
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