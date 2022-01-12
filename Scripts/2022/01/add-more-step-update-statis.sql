/*<info serverAlias="DBTXN-msdb"></info>*/
/*
	Add more steps manual update statistics for custdb
	Run on DBTrans.msdb
*/

EXEC msdb.dbo.sp_add_jobstep @job_name=N'DBTRANS : recompile all',
		@step_name=N'update stats @custdb', 
		@step_id=2, 
		@cmdexec_success_code=0, 
		@on_success_action=3, 
		@on_success_step_id=0, 
		@on_fail_action=2, 
		@on_fail_step_id=0, 
		@retry_attempts=0, 
		@retry_interval=0, 
		@os_run_priority=0, @subsystem=N'TSQL', 
		@command=N'
IF (SELECT bodb02.dbo.f_CheckJobRunning(''DBA_Reorg_Index'')) = 0
BEGIN
	EXEC sp_updatestats
END', 
		@database_name=N'custdb', 
		@flags=0
