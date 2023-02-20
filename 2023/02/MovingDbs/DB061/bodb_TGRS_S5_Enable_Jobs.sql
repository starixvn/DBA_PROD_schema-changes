/*<info serverAlias="DB061-bodb_TGRS"></info>*/
/*
	Created: 20230217@Sol
	Task: enable job of bodb_TGRS
	DB: DB061-bodb_TGRS
*/

GO

---bodb_TGRS
EXEC msdb.dbo.sp_update_job @job_name = N'TGRS-Staging OS Data Daily', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'TGRS-RobotTrading DailyData', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'TGRS-Staging Data Daily', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'TGRS-RobotTrading HourlyData', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'TGRS-Staging Data Hourly', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'TGRS_OS_Market_DailyData', @enabled = 1;

GO

---log shipping - backup job of bodb_TGRS
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_bodb_TGRS', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'LSAlert_DB061', @enabled = 1;

GO