/*
	Task - Upgrade SQL Server DB054 to 2019
		1- DB054 - Disable Agent Job State
	Run on db054
*/
USE msdb
GO
-- 1.Check Job State (Disabled=8, Enabled=20)
SELECT CASE enabled WHEN 0 THEN 'Disabled' ELSE 'Enabled' END [STATE]
  ,COUNT(enabled) [COUNT]
FROM msdb.dbo.sysjobs
WHERE category_id <> 6
GROUP BY enabled
GO

-- 2.Disable Job (Exclude log shipping job category_id=6)
SELECT 'EXEC msdb.dbo.sp_update_job @job_name = N''' + name +''', @enabled = 0;'
FROM msdb.dbo.sysjobs
WHERE enabled = 1
  AND category_id <> 6
GO

-- 3.Stop Job
SELECT 'EXEC msdb.dbo.sp_stop_job ''' + name +''''
FROM msdb.dbo.sysjobs
WHERE enabled = 1
  AND category_id <> 6
GO

-- 4.Disable Agent Jobs (20)
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_CustomerLog_Archive: Delete Data', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Diff_Backup', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA: update stats', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'vnDBA : Syncing data to standby server check', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Deadlock_Monitor', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA : MonDB Get DB Info', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Full_Backup', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'vndba_monitor_whoisactive', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'ServiceBrokerDB : Correct Settled Ticket', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_ost: ReplLog', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_ost: data_cleanup', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb02: Check Settlement status', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb02 : Remove Settlement Logs', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb02: Verify BA Tickets', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb02: daily delete tickets', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Reorg_Index', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Getwaitinfo 5 Secs', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_CustomerLog_Archive: Copy Data', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA: Database BackupHistory Cleanup', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_ost:replication misssing checking', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA : Monitor Job Fail', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_MonDB_Reorg', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_ost:check_replication_latency', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_CustomerLog: NAP Settlement Performance Report', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_CustomerLog: DBALog_MBU_Process_History', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Script_Instance_Object', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA : Send SQL Service Restart Alert Mail', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Getlockinfo 5 Secs', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'syspolicy_purge_history', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb02: Retrieve BA Transaction', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb02 : Capture Movebet days', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_customerLog: sync Logs to standby server', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_CustomerLog - Daily Delete the History Log Data', @enabled = 0;

GO

-- 5.Stop Agent Jobs (20)
EXEC msdb.dbo.sp_stop_job 'bodb_CustomerLog_Archive: Delete Data'
EXEC msdb.dbo.sp_stop_job 'DBA_Diff_Backup'
EXEC msdb.dbo.sp_stop_job 'DBA: update stats'
EXEC msdb.dbo.sp_stop_job 'vnDBA : Syncing data to standby server check'
EXEC msdb.dbo.sp_stop_job 'DBA_Deadlock_Monitor'
EXEC msdb.dbo.sp_stop_job 'DBA : MonDB Get DB Info'
EXEC msdb.dbo.sp_stop_job 'DBA_Full_Backup'
EXEC msdb.dbo.sp_stop_job 'vndba_monitor_whoisactive'
EXEC msdb.dbo.sp_stop_job 'ServiceBrokerDB : Correct Settled Ticket'
EXEC msdb.dbo.sp_stop_job 'bodb_ost: ReplLog'
EXEC msdb.dbo.sp_stop_job 'bodb_ost: data_cleanup'
EXEC msdb.dbo.sp_stop_job 'bodb02: Check Settlement status'
EXEC msdb.dbo.sp_stop_job 'bodb02 : Remove Settlement Logs'
EXEC msdb.dbo.sp_stop_job 'bodb02: Verify BA Tickets'
EXEC msdb.dbo.sp_stop_job 'bodb02: daily delete tickets'
EXEC msdb.dbo.sp_stop_job 'DBA_Reorg_Index'
EXEC msdb.dbo.sp_stop_job 'DBA_Getwaitinfo 5 Secs'
EXEC msdb.dbo.sp_stop_job 'bodb_CustomerLog_Archive: Copy Data'
EXEC msdb.dbo.sp_stop_job 'DBA: Database BackupHistory Cleanup'
EXEC msdb.dbo.sp_stop_job 'bodb_ost:replication misssing checking'
EXEC msdb.dbo.sp_stop_job 'DBA : Monitor Job Fail'
EXEC msdb.dbo.sp_stop_job 'DBA_MonDB_Reorg'
EXEC msdb.dbo.sp_stop_job 'bodb_ost:check_replication_latency'
EXEC msdb.dbo.sp_stop_job 'bodb_CustomerLog: NAP Settlement Performance Report'
EXEC msdb.dbo.sp_stop_job 'bodb_CustomerLog: DBALog_MBU_Process_History'
EXEC msdb.dbo.sp_stop_job 'DBA_Script_Instance_Object'
EXEC msdb.dbo.sp_stop_job 'DBA : Send SQL Service Restart Alert Mail'
EXEC msdb.dbo.sp_stop_job 'DBA_Getlockinfo 5 Secs'
EXEC msdb.dbo.sp_stop_job 'syspolicy_purge_history'
EXEC msdb.dbo.sp_stop_job 'bodb02: Retrieve BA Transaction'
EXEC msdb.dbo.sp_stop_job 'bodb02 : Capture Movebet days'
EXEC msdb.dbo.sp_stop_job 'bodb_customerLog: sync Logs to standby server'
EXEC msdb.dbo.sp_stop_job 'bodb_CustomerLog - Daily Delete the History Log Data'

GO

