USE msdb
GO

--==Affiliate_9Bet
EXEC dbo.sp_update_job @job_name = N'Affiliate_9Bet: Daily Summary Rate', @enabled = 0;
EXEC dbo.sp_update_job @job_name = N'Affiliate_9Bet: Backup Commission Group', @enabled = 0;
EXEC dbo.sp_update_job @job_name = N'Affiliate_9Bet: Clear Login', @enabled = 0;
EXEC dbo.sp_update_job @job_name = N'Affiliate_9Bet: Commission Monthly Transfer', @enabled = 0;

--==Affiliate_Allbetclub
EXEC dbo.sp_update_job @job_name = N'Affiliate_Allbetclub: Clear Login', @enabled = 0;
EXEC dbo.sp_update_job @job_name = N'Affiliate_Allbetclub: Backup Commission Group', @enabled = 0;
EXEC dbo.sp_update_job @job_name = N'Affiliate_Allbetclub: Commission Monthly Transfer', @enabled = 0;
EXEC dbo.sp_update_job @job_name = N'Affiliate_Allbetclub: Daily Summary Rate', @enabled = 0;

--==Affiliate_Aragon88
EXEC dbo.sp_update_job @job_name = N'Affiliate_Aragon88: Commission Monthly Transfer', @enabled = 0;
EXEC dbo.sp_update_job @job_name = N'Affiliate_Aragon88: Clear Login', @enabled = 0;
EXEC dbo.sp_update_job @job_name = N'Affiliate_Aragon88: Backup Commission Group', @enabled = 0;
EXEC dbo.sp_update_job @job_name = N'Affiliate_Aragon88: Daily Summary Rate', @enabled = 0;

--==Affiliate_BE7
EXEC dbo.sp_update_job @job_name = N'Affiliate_BE7: Commission Monthly Transfer', @enabled = 0;
EXEC dbo.sp_update_job @job_name = N'Affiliate_BE7: Backup Commission Group', @enabled = 0;
EXEC dbo.sp_update_job @job_name = N'Affiliate_BE7: Daily Summary Rate', @enabled = 0;
EXEC dbo.sp_update_job @job_name = N'Affiliate_BE7: Clear Login', @enabled = 0;

--==Affiliate_BE7TH
EXEC dbo.sp_update_job @job_name = N'Affiliate_BE7TH: Backup Commission Group', @enabled = 0;
EXEC dbo.sp_update_job @job_name = N'Affiliate_BE7TH: Clear Login', @enabled = 0;
EXEC dbo.sp_update_job @job_name = N'Affiliate_BE7TH: Commission Monthly Transfer', @enabled = 0;
EXEC dbo.sp_update_job @job_name = N'Affiliate_BE7TH: Daily Summary Rate', @enabled = 0;

--==Affiliate_Bolanation
EXEC dbo.sp_update_job @job_name = N'Affiliate_Bolanation: Backup Commission Group', @enabled = 0;
EXEC dbo.sp_update_job @job_name = N'Affiliate_Bolanation: Commission Monthly Transfer', @enabled = 0;
EXEC dbo.sp_update_job @job_name = N'Affiliate_Bolanation: Clear Login', @enabled = 0;
EXEC dbo.sp_update_job @job_name = N'Affiliate_Bolanation: Daily Summary Rate', @enabled = 0;

--==Affiliate_Hbobet
EXEC dbo.sp_update_job @job_name = N'Affiliate_Hbobet: Clear Login', @enabled = 0;
EXEC dbo.sp_update_job @job_name = N'Affiliate_Hbobet: Commission Monthly Transfer', @enabled = 0;
EXEC dbo.sp_update_job @job_name = N'Affiliate_Hbobet: Backup Commission Group', @enabled = 0;
EXEC dbo.sp_update_job @job_name = N'Affiliate_Hbobet: Daily Summary Rate', @enabled = 0;

--==Affiliate_Indowin
EXEC dbo.sp_update_job @job_name = N'Affiliate_Indowin: Clear Login', @enabled = 0;
EXEC dbo.sp_update_job @job_name = N'Affiliate_Indowin: Backup Commission Group', @enabled = 0;
EXEC dbo.sp_update_job @job_name = N'Affiliate_Indowin: Commission Monthly Transfer', @enabled = 0;
EXEC dbo.sp_update_job @job_name = N'Affiliate_Indowin: Daily Summary Rate', @enabled = 0;

--==Affiliate_Mgm88
EXEC dbo.sp_update_job @job_name = N'Affiliate_Mgm88: Backup Commission Group', @enabled = 0;
EXEC dbo.sp_update_job @job_name = N'Affiliate_Mgm88: Commission Monthly Transfer', @enabled = 0;
EXEC dbo.sp_update_job @job_name = N'Affiliate_Mgm88: Daily Summary Rate', @enabled = 0;
EXEC dbo.sp_update_job @job_name = N'Affiliate_Mgm88: Clear Login', @enabled = 0;

--==Affiliate_THBET
EXEC dbo.sp_update_job @job_name = N'Affiliate_THBET: Commission Monthly Transfer', @enabled = 0;
EXEC dbo.sp_update_job @job_name = N'Affiliate_THBET: Daily Summary Rate', @enabled = 0;
EXEC dbo.sp_update_job @job_name = N'Affiliate_THBET: Backup Commission Group', @enabled = 0;
EXEC dbo.sp_update_job @job_name = N'Affiliate_THBET: Clear Login', @enabled = 0;

--==Affiliate_Winner99
EXEC dbo.sp_update_job @job_name = N'Affiliate_Winner99: Commission Monthly Transfer', @enabled = 0;
EXEC dbo.sp_update_job @job_name = N'Affiliate_Winner99: Clear Login', @enabled = 0;
EXEC dbo.sp_update_job @job_name = N'Affiliate_Winner99: Backup Commission Group', @enabled = 0;
EXEC dbo.sp_update_job @job_name = N'Affiliate_Winner99: Daily Summary Rate', @enabled = 0;

GO
