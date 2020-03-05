

-- DB042 disable SQL Agent jobs

-- Gen Script to disable Job
--SELECT 'EXEC msdb.dbo.sp_update_job @job_name = N''' + name +''', @enabled = 1;'
--FROM msdb.dbo.sysjobs
--WHERE enabled=1
--AND name NOT LIKE 'LS%'
--ORDER BY 1
GO

EXEC msdb.dbo.sp_update_job @job_name = N'bodb_ost: data_cleanup', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_ost: ReplLog', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_ost:check_replication_latency', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_ost:replication misssing checking', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb02 : Capture Movebet days', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb02: daily delete tickets', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb02: Retrieve BA Transaction', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb02: Verify BA Tickets', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA : MonDB Get DB Info', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA : Monitor Job Fail', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA : Send SQL Service Restart Alert Mail', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Deadlock_Monitor', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Diff_Backup', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Full_Backup', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Getlockinfo 5 Secs', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Getwaitinfo 5 Secs', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_MonDB_Reorg', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Reorg_Index', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Script_Instance_Object', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'ServiceBrokerDB : Correct Settled Ticket', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'syspolicy_purge_history', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'vndba_monitor_whoisactive', @enabled = 0;



--SELECT 'EXEC msdb.dbo.sp_stop_job @job_name = N''' + name  +''''  
--FROM msdb.dbo.sysjobs
--WHERE enabled=1
--AND name NOT LIKE 'LS%'
--ORDER BY 1

EXEC msdb.dbo.sp_stop_job @job_name = N'bodb_ost: data_cleanup'
EXEC msdb.dbo.sp_stop_job @job_name = N'bodb_ost: ReplLog'
EXEC msdb.dbo.sp_stop_job @job_name = N'bodb_ost:check_replication_latency'
EXEC msdb.dbo.sp_stop_job @job_name = N'bodb_ost:replication misssing checking'
EXEC msdb.dbo.sp_stop_job @job_name = N'bodb02 : Capture Movebet days'
EXEC msdb.dbo.sp_stop_job @job_name = N'bodb02: daily delete tickets'
EXEC msdb.dbo.sp_stop_job @job_name = N'bodb02: Retrieve BA Transaction'
EXEC msdb.dbo.sp_stop_job @job_name = N'bodb02: Verify BA Tickets'
EXEC msdb.dbo.sp_stop_job @job_name = N'DBA : MonDB Get DB Info'
EXEC msdb.dbo.sp_stop_job @job_name = N'DBA : Monitor Job Fail'
EXEC msdb.dbo.sp_stop_job @job_name = N'DBA : Send SQL Service Restart Alert Mail'
EXEC msdb.dbo.sp_stop_job @job_name = N'DBA_Deadlock_Monitor'
EXEC msdb.dbo.sp_stop_job @job_name = N'DBA_Diff_Backup'
EXEC msdb.dbo.sp_stop_job @job_name = N'DBA_Full_Backup'
EXEC msdb.dbo.sp_stop_job @job_name = N'DBA_Getlockinfo 5 Secs'
EXEC msdb.dbo.sp_stop_job @job_name = N'DBA_Getwaitinfo 5 Secs'
EXEC msdb.dbo.sp_stop_job @job_name = N'DBA_MonDB_Reorg'
EXEC msdb.dbo.sp_stop_job @job_name = N'DBA_Reorg_Index'
EXEC msdb.dbo.sp_stop_job @job_name = N'DBA_Script_Instance_Object'
EXEC msdb.dbo.sp_stop_job @job_name = N'ServiceBrokerDB : Correct Settled Ticket'
EXEC msdb.dbo.sp_stop_job @job_name = N'syspolicy_purge_history'
EXEC msdb.dbo.sp_stop_job @job_name = N'vndba_monitor_whoisactive'

