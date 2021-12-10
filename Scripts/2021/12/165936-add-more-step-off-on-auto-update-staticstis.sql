/*<info serverAlias="DBBOF-bodb02,DBACC-bodb02,DBAGE-bodb02,DBTP-bodb02"></info>*/
/*
	Add more steps OFF/ON auto update statistics to avoid conflict between auto update statistics and reindex
	Run on DB061 | DB06 | DB052 | DB053 | DB054 | DB055 | DBTP
*/

EXEC msdb.dbo.sp_add_jobstep @job_name=N'DBA_Reorg_Index',
		@step_name=N'Turn off auto update statistics', 
		@step_id=1, 
		@cmdexec_success_code=0, 
		@on_success_action=3, 
		@on_success_step_id=0, 
		@on_fail_action=2, 
		@on_fail_step_id=0, 
		@retry_attempts=0, 
		@retry_interval=0, 
		@os_run_priority=0, @subsystem=N'TSQL', 
		@command=N'ALTER DATABASE bodb02 SET AUTO_UPDATE_STATISTICS OFF', 
		@database_name=N'bodb02', 
		@flags=0

EXEC msdb.dbo.sp_add_jobstep @job_name=N'DBA_Reorg_Index',
		@step_name=N'Turn on auto update statistics', 
		@step_id=3, 
		@cmdexec_success_code=0, 
		@on_success_action=3, 
		@on_success_step_id=0, 
		@on_fail_action=2, 
		@on_fail_step_id=0, 
		@retry_attempts=0, 
		@retry_interval=0, 
		@os_run_priority=0, @subsystem=N'TSQL', 
		@command=N'ALTER DATABASE bodb02 SET AUTO_UPDATE_STATISTICS ON', 
		@database_name=N'bodb02', 
		@flags=0

--update on SUCCES/FAILED still go next STEP
EXEC msdb.dbo.sp_update_jobstep @job_name=N'DBA_Reorg_Index',
		@step_name=N'DBA_ReIndex', 
		@step_id=2,
		@on_fail_action=3