-- run on tmpDBDW2

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
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Deadlock_Monitor', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_ODS - Update Operational Data Store', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Account - Update League', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Account - Update Exchange', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA - DBA_MonDB_ReIndex', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Account: Update Completed Match', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Account - Purge old data', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Account - Update TA League Category', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Account - Capture Sportbook Winloss', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Account - Update IP table', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'syspolicy_purge_history', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA - MonDB Get DB Info', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Account - Update Dimensions', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Account - Licensee Performance BI - ETL', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Getlockinfo 5 Secs', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'vndba_monitor_whoisactive', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Account - Generate rptWinloss', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Account - Update Direct cust group', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Account - Update Oanda Daily Exchange for Licensee', @enabled = 0;

go
--- stop job
EXEC msdb.dbo.sp_stop_job @job_name = N'DBA_Deadlock_Monitor'
EXEC msdb.dbo.sp_stop_job @job_name = N'bodb_ODS - Update Operational Data Store'
EXEC msdb.dbo.sp_stop_job @job_name = N'bodb_Account - Update League'
EXEC msdb.dbo.sp_stop_job @job_name = N'bodb_Account - Update Exchange'
EXEC msdb.dbo.sp_stop_job @job_name = N'DBA - DBA_MonDB_ReIndex'
EXEC msdb.dbo.sp_stop_job @job_name = N'bodb_Account: Update Completed Match'
EXEC msdb.dbo.sp_stop_job @job_name = N'bodb_Account - Purge old data'
EXEC msdb.dbo.sp_stop_job @job_name = N'bodb_Account - Update TA League Category'
EXEC msdb.dbo.sp_stop_job @job_name = N'bodb_Account - Capture Sportbook Winloss'
EXEC msdb.dbo.sp_stop_job @job_name = N'bodb_Account - Update IP table'
EXEC msdb.dbo.sp_stop_job @job_name = N'syspolicy_purge_history'
EXEC msdb.dbo.sp_stop_job @job_name = N'DBA - MonDB Get DB Info'
EXEC msdb.dbo.sp_stop_job @job_name = N'bodb_Account - Update Dimensions'
EXEC msdb.dbo.sp_stop_job @job_name = N'bodb_Account - Licensee Performance BI - ETL'
EXEC msdb.dbo.sp_stop_job @job_name = N'DBA_Getlockinfo 5 Secs'
EXEC msdb.dbo.sp_stop_job @job_name = N'vndba_monitor_whoisactive'
EXEC msdb.dbo.sp_stop_job @job_name = N'bodb_Account - Generate rptWinloss'
EXEC msdb.dbo.sp_stop_job @job_name = N'bodb_Account - Update Direct cust group'
EXEC msdb.dbo.sp_stop_job @job_name = N'bodb_Account - Update Oanda Daily Exchange for Licensee'
