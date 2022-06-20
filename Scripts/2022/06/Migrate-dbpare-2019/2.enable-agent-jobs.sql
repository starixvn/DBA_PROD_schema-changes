/*
	Task - Upgrade SQL Server DBSPARE to 2019
		1- Check & Map Orphaned UserName With LoginID 
	Run on DBSPARE
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

-- 3.Enable Agent Jobs

GO
EXEC msdb.dbo.sp_update_job @job_name = N'DBA : GetClientMAPInfo', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'MonDBDW: Generate Yesterday SPPF Statistics', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA: Task - Check Throughput Bet - DBTP & DBMNL', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'syspolicy_purge_history', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Diff_Backup', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA : DBA_MonDBDW_ReIndex', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBNOTI : Skype Notification Service Health Check', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'vnDBA : Automation Check CustDB', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_GetDBSize_AVG_PastTwelveMonths', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'vndba - AutoCS zzControl Dummy workload and performance collect', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Task : UserLogP Clean (DB06)', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'vnDBA_autoCS_monitor', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'vnDBA_autoCS', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'vndba - DanielTest', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb02: Check Settlement status', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA: Task - Push sample data for SIT', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA : MonDB Collect Report Data', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'vndba - CheckDataDB : Data Checksum', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Full_Backup', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'vndba - MonDB - Get Blocking Info - Testing', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Script_Instance_Object', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'UPDATE STATISTICS & Recompile SP', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'vndba - CheckDataDB : CustData correct', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'vndba - AutoCS - Generate blocking Info', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Deadlock_Monitor', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA : MonDB Deploy AllServerlist', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_RunTest1', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_MonDB_Reorg', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Task : UserLogArchive_CleanUp', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA : MonDB Get DB Info', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Task : UserLogPArchiveBackup (Prod DB061)', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'MonDBDW  : twdba_WeeklyReport', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Switch_Errorlog', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBNOTI : Daily Data Purge', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'CDW_DBSPARE_DBSPARE_0_1', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'test ac', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBCUST - CUSTDB - Soccer - VR Setting Auto Update', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA : Monitor Job Fail', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'CDW_DBSPARE_DBSPARE_0', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Task : UserLogP Clean (DB061)', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'MonDBDW: Task_vndba_Mon_Anomaly_Report', @enabled = 1;

go
