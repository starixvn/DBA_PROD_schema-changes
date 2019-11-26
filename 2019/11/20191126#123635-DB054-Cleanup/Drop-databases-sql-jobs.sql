/*
	Setup DB054 such as DB042
	- Run on DB054

*/
use master
GO

--//bring databases online first
ALTER DATABASE bodb_Summary SET ONLINE
ALTER DATABASE bodb_AGE SET ONLINE
ALTER DATABASE bodb_ChatBot SET ONLINE
ALTER DATABASE bodb_staging SET ONLINE
ALTER DATABASE CheckResultDB SET ONLINE
ALTER DATABASE Sportscast SET ONLINE
ALTER DATABASE bk SET ONLINE
ALTER DATABASE bodb_LicenseeReport SET ONLINE
ALTER DATABASE bodb_LicenseeReportArchive SET ONLINE
ALTER DATABASE bodb_PlaytechCS SET ONLINE
ALTER DATABASE bodb_Licensee_View SET ONLINE
ALTER DATABASE bodb_Archive SET ONLINE
ALTER DATABASE bodb_Invoice SET ONLINE
ALTER DATABASE bodb_3rdProduct SET ONLINE

--//drop databases
DROP DATABASE bodb_Summary
DROP DATABASE bodb_AGE
DROP DATABASE bodb_ChatBot
DROP DATABASE bodb_staging
DROP DATABASE CheckResultDB
DROP DATABASE Sportscast
DROP DATABASE bk
DROP DATABASE bodb_LicenseeReport
DROP DATABASE bodb_LicenseeReportArchive
DROP DATABASE bodb_PlaytechCS
DROP DATABASE bodb_Licensee_View
DROP DATABASE bodb_Archive
DROP DATABASE bodb_Invoice
DROP DATABASE bodb_3rdProduct

--//sql jobs
EXEC msdb.dbo.sp_delete_job @job_name=N'__SYNC: [DB052 to DB054] bodb_Invoice - bodb_PlaytechCS', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'__SYNC: [DB053-DB054] bodb02 - DownlineTurnover_Setting', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb_3rdProduct: Check Exchange data monthly', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb_age: bettrans_forecast_agent', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb_Age: LimitLoss_Setting totalBalance update', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb_CustomerLog - Daily Delete the History Log Data', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb_EAS: Clear Login (eaOn_User)', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb_invoice: Copy exchange rate', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb_LicenseeReport: Daily Check Sum House Net Income', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb_licenseeReport: Daily CHECKSUM DepositData', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb_LicenseeReport: Daily Gen Daily rptLicIpBetting', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb_LicenseeReport: Daily Summary Licensee Winloss', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb_LicenseeReport: DW - Check and Correct Data', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb_LicenseeReport: DW - Generate Daily', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb_LicenseeReport: Licensee Winloss - Check and Correct Data', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb_oddsfeed: Move PartnerStatistics', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb_PlaytechCS: Execute Product3rd_ImportQueue Background', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb_RMS: Clean OLD data from BettransParlay', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb_RMS: Clear login (rmOn_user)', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb_RMS: Copy tickets to rmBettrans', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb_RMS: SumWinloss & Archive', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb_staging: check bettrans data (1 hour)', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb_staging: verify bettrans data', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb_Summary: Check and Correct Data - After MoveBets', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb_Summary: Generate Data - Before MoveBets', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb_Summary: Generate Data - CN88', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'BODB02 - Daily Retrieve Exchange Rate History', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : bettrans_forecast_agent cleanup', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : bettrans_running DELETE', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : DownlineTurnOver_Setting totalTurnOver update', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02: Check/Verify ExchangeDaily', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02: Check/Verify Reset Winning', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02: SSB - TO Control -  Get tickets - Insert', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02: TOControl Delete old transition', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02-CheckWinlostdateConsistency', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'Check Casino''s data', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'CheckLicenseeDB: Get licensee config data from DBLIC', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'checkResultDB: Check RnG casino data', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'Clear login (On_user) for bodb_licensee & LasDB', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'DB054: Database Backup', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'DB054: Verify daily settled tickets', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'DBA_B4UM_Full_backup', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'DBA_Diff_Backup', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'DBA_Full_Backup', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'DBA_Txn_Backup', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'DBTRANS : VERIFY DailySummary (Move Bet)', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'PIH_GEN_rpt_betting', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'serviceBrokerDB: arrange bettrans_running data', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'serviceBrokerDB: delete temp data and logs', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'SYNC log from DB052', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'Task : Replication for DBTrans.bodb02.dbo.CustOverride', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'Task : Replication for DBTrans.bodb02.dbo.CustSetting', @delete_unused_schedule=1
EXEC msdb.dbo.sp_delete_job @job_name=N'vnDBA: Monitor_dba_tasks', @delete_unused_schedule=1