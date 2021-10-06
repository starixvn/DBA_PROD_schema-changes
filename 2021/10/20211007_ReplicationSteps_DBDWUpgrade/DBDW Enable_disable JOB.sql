/*
	Task: Disable / enable Jobs
	Run on DBDW/TMPDBDW
*/

-- Gen script to disable all jobs then copy & run commands
select 'EXEC msdb.dbo.sp_update_job @job_name=''' + name + ''',@enabled = 0' from sysjobs

--Enable spec jobs on new DBDW from saved settings, re-check again the list before UM 1h
EXEC msdb.dbo.sp_update_job @job_name='bodb_Account - Gen data for Auto Bet Limit Control',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='bodb_Account - Generate Account Transfer',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='bodb_Account - Generate Monthly DW',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='bodb_Account - Purge old data',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='bodb_Account - Update Dimensions',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='bodb_Account - Update Direct cust group',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='bodb_Account - Update Exchange',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='bodb_Account - Update League',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='bodb_Account - Update Oanda Daily Exchange for Licensee',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='bodb_Account: Update Completed Match',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA - Backup Diff Daily',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA - Backup Full Weekly',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA - DBA_MonDB_ReIndex',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA - MonDB Get DB Info',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA - Monitor Job Fail',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA - Send SQL Service Restart Alert Mail',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA - System Database Backup',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA_Deadlock_Monitor',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA_Diff_Backup_New',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA_Full_Backup_New',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA_Getlockinfo 5 Secs',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA_Script_Instance_Object',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DR_ Check data DW KBT and MNL',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DR_Sync data',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='syspolicy_purge_history',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='vnDBA : Objects Monitoring - Collect Data',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='vndba_monitor_whoisactive',@enabled = 0