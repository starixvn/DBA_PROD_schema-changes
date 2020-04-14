

-- DB053 disable SQL Agent jobs

-- Gen Script to disable Job
SELECT 'EXEC msdb.dbo.sp_update_job @job_name = N''' + name +''', @enabled = 0;'
FROM msdb.dbo.sysjobs
WHERE enabled=1
AND name NOT LIKE 'LS%'
ORDER BY 1
GO

EXEC msdb.dbo.sp_update_job @job_name = N'__SYNC: [DB052 to DB053] - bodb_PlaytechCS', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'BK : Clear Old Bet', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'BK : FC Rej', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'BK : FC', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_3rdProduct: Check Exchange data monthly', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Age: LimitLoss_Setting totalBalance update', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_licenseeReport: Daily CHECKSUM DepositData', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_LicenseeReport: Daily Gen Daily rptLicIpBetting', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_LicenseeReport: Daily Summary Licensee Winloss', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_LicenseeReport: DW - Check and Correct Data', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_LicenseeReport: DW - Generate Daily', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_LicenseeReport: DWPromotion - Generate Daily', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_LicenseeReport: Licensee Winloss - Check and Correct Data', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_PlaytechCS: Execute Product3rd_ImportQueue Background', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_PlayTechCS: Sync data from DB052', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Ploutos: Get New Data', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Ploutos: Task_BetTicket_Process', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Ploutus: Check Data Consistency', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Summary: Check and Correct Data - After MoveBets', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Summary: Generate Data - Before MoveBets', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Summary: Generate Data - CN88', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb02: Check/Verify ExchangeDaily', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb02: Retrieve BA Transaction', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb02: SSB - Get settled tickets', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb02: SSB - TO Control -  Get tickets', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb02: TOControl Delete old transition', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb02: Verify BA Tickets', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DB053: Database BackupHistory Cleanup', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA : MonDB Get DB Info', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA : Monitor Job Fail', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA: update stats', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Deadlock_Monitor', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Diff_Backup', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Full_Backup', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Getlockinfo 5 Secs', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Getwaitinfo 5 Secs', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_MonDB_Reorg', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Reorg_Index', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Script_Instance_Object', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'FS-ArchiveCleanUpData', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'FS-CustomerTicketCountDaily', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'FS-Daily Data Capturing', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'FS-Get Tickets By IP', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'vnDBA : Objects Monitoring - Collect Data', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'vnDBA: Monitor_dba_tasks', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'vndba_monitor_whoisactive', @enabled = 0;