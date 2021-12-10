/*
	Task - Upgrade SQL Server DB055 to 2019
		1- Check & Map Orphaned UserName With LoginID 
	Run on db055
*/
USE msdb
GO
-- 1.Check Job State (Disabled=8, Enabled=20)
SELECT CASE enabled WHEN 0 THEN 'Disabled' ELSE 'Enabled' END
  ,COUNT(enabled) [Enabled]
FROM msdb.dbo.sysjobs
WHERE category_id <> 6
GROUP BY enabled
GO

-- 2.Enable Job (Exclude log shipping job category_id=6)
SELECT 'EXEC msdb.dbo.sp_update_job @job_name = N''' + name +''', @enabled = 1;'
FROM msdb.dbo.sysjobs
WHERE enabled = 1
  AND category_id <> 6
GO

-- 3.Enable Agent Jobs (20)

GO
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_CustomerLog_Archive: Delete Data', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Diff_Backup', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA: update stats', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'vnDBA : Syncing data to standby server check', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Deadlock_Monitor', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA : MonDB Get DB Info', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Full_Backup', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'vndba_monitor_whoisactive', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'ServiceBrokerDB : Correct Settled Ticket', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_ost: ReplLog', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_ost: data_cleanup', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb02: Check Settlement status', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb02 : Remove Settlement Logs', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb02: Verify BA Tickets', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb02: daily delete tickets', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Reorg_Index', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Getwaitinfo 5 Secs', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_CustomerLog_Archive: Copy Data', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA: Database BackupHistory Cleanup', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_ost:replication misssing checking', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA : Monitor Job Fail', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_MonDB_Reorg', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_ost:check_replication_latency', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_CustomerLog: NAP Settlement Performance Report', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_CustomerLog: DBALog_MBU_Process_History', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Script_Instance_Object', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA : Send SQL Service Restart Alert Mail', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Getlockinfo 5 Secs', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'syspolicy_purge_history', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb02: Retrieve BA Transaction', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb02 : Capture Movebet days', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_customerLog: sync Logs to standby server', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_CustomerLog - Daily Delete the History Log Data', @enabled = 1;

go
