

-- run on DBDW2

ALTER LOGIN bodbAdminNet DISABLE
GO
ALTER LOGIN [bodbLicenseeNet] DISABLE
GO
ALTER LOGIN [bodbSPUNet] DISABLE
GO
ALTER LOGIN [dwrs] DISABLE
GO
ALTER LOGIN [dwrs2] DISABLE
GO
ALTER LOGIN [vnSPU] DISABLE
GO
ALTER LOGIN [sqllink] DISABLE
GO
  EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Account - Update Direct cust group', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Account - Update IP table', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Account - Capture Sportbook Winloss', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Account - Update Oanda Daily Exchange for Licensee', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Account - Update CTS Data', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Account - Generate statistical data for CTS', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Account - Gen data for Auto Bet Limit Control', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_DT - CCSnapshot', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA - Backup Diff Daily', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA - MonDB Get DB Info', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA - Backup Full Weekly', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Account - Gen FactSMAWinlossMonthly', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Account - Licensee Performance BI - ETL', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'syspolicy_purge_history', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_DT - Backup', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Account - Gen Keyscore Performance', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA - Monitor Job Fail', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Account - Generate Account Transfer', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_ODS - Update Operational Data Store', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA - Send SQL Service Restart Alert Mail', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Deadlock_Monitor', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Account - Generate rptWinloss', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Account - Data Monitor', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'vnDBA : Objects Monitoring - Collect Data', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'vndba_monitor_whoisactive', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Account - Update Exchange', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Account: Update Completed Match', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Account - Generate Monthly DW', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Account - Gen HNI data', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Account - Data Quality Monitor', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_VR2Model - Classify Robot Users', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Getlockinfo 5 Secs', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Account - Update Dimensions', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Account - DW ETL Daily', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Account - Update TA League Category', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Account - Purge old data', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Script_Instance_Object', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA - DBA_MonDB_ReIndex', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Account - Import data for Virtual rate monitor', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Diff_Backup_New', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA - System Database Backup', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Account - Update League', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Full_Backup_New', @enabled = 0;
