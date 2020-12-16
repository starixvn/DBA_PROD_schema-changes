/*
	Task - Remove unused sql jobs
	Run on DB052
*/

EXEC msdb.dbo.sp_delete_job @job_name=N'bodb_CustomerLog: DBALog_MBU_Process_History', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb_CustomerLog: NAP Settlement Performance Report', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb_customerLog: sync Logs to standby server', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb_CustomerLog_Archive: Copy Data', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb_CustomerLog_Archive: Delete Data', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb_EAS: Clear Login (eaOn_User)', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb_invoice: Copy exchange rate', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'vnDBA: Monitor_dba_tasks', @delete_unused_schedule=1