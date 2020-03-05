
--- SQL Agent job, enable


go

--EXEC msdb.dbo.sp_update_job @job_name = N'bodb_ost: data_cleanup', @enabled = 0;
--EXEC msdb.dbo.sp_update_job @job_name = N'bodb_ost: ReplLog', @enabled = 0;
--EXEC msdb.dbo.sp_update_job @job_name = N'bodb_ost:check_replication_latency', @enabled = 0;
--EXEC msdb.dbo.sp_update_job @job_name = N'bodb_ost:replication misssing checking', @enabled = 0;
--EXEC msdb.dbo.sp_update_job @job_name = N'bodb02 : Capture Movebet days', @enabled = 0;
--EXEC msdb.dbo.sp_update_job @job_name = N'bodb02: daily delete tickets', @enabled = 0;
--EXEC msdb.dbo.sp_update_job @job_name = N'bodb02: Retrieve BA Transaction', @enabled = 0;
--EXEC msdb.dbo.sp_update_job @job_name = N'bodb02: Verify BA Tickets', @enabled = 0;
--EXEC msdb.dbo.sp_update_job @job_name = N'DBA : MonDB Get DB Info', @enabled = 0;
--EXEC msdb.dbo.sp_update_job @job_name = N'DBA : Monitor Job Fail', @enabled = 0;
--EXEC msdb.dbo.sp_update_job @job_name = N'DBA : Send SQL Service Restart Alert Mail', @enabled = 0;
--EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Deadlock_Monitor', @enabled = 0;
--EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Diff_Backup', @enabled = 0;
--EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Full_Backup', @enabled = 0;
--EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Getlockinfo 5 Secs', @enabled = 0;
--EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Getwaitinfo 5 Secs', @enabled = 0;
--EXEC msdb.dbo.sp_update_job @job_name = N'DBA_MonDB_Reorg', @enabled = 0;
--EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Reorg_Index', @enabled = 0;
--EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Script_Instance_Object', @enabled = 0;
--EXEC msdb.dbo.sp_update_job @job_name = N'ServiceBrokerDB : Correct Settled Ticket', @enabled = 0;
----EXEC msdb.dbo.sp_update_job @job_name = N'syspolicy_purge_history', @enabled = 0;
--EXEC msdb.dbo.sp_update_job @job_name = N'vndba_monitor_whoisactive', @enabled = 0;

go

EXEC msdb.dbo.sp_update_job @job_name = N'bodb_ost: data_cleanup', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_ost: ReplLog', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_ost:check_replication_latency', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_ost:replication misssing checking', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb02 : Capture Movebet days', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb02: daily delete tickets', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb02: Retrieve BA Transaction', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb02: Verify BA Tickets', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA : MonDB Get DB Info', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA : Monitor Job Fail', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA : Send SQL Service Restart Alert Mail', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Deadlock_Monitor', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Diff_Backup', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Full_Backup', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Getlockinfo 5 Secs', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Getwaitinfo 5 Secs', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_MonDB_Reorg', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Reorg_Index', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Script_Instance_Object', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'ServiceBrokerDB : Correct Settled Ticket', @enabled = 1;
--EXEC msdb.dbo.sp_update_job @job_name = N'syspolicy_purge_history', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'vndba_monitor_whoisactive', @enabled = 1;

go
