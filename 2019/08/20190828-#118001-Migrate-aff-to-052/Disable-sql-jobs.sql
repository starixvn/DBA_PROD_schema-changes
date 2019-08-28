/*
	Task: Migrate DBAFF to DB052/DB053
		+ Disable sql jobs
	Run on DBAFF
*/

use msdb
GO
--==Affiliate_AonCash
EXEC dbo.sp_update_job @job_name = N'Affiliate_AonCash: Backup Commission Group', @enabled = 0
EXEC dbo.sp_update_job @job_name = N'Affiliate_AonCash: Clear Login', @enabled = 0
EXEC dbo.sp_update_job @job_name = N'Affiliate_AonCash: Commission Monthly Transfer', @enabled = 0
EXEC dbo.sp_update_job @job_name = N'Affiliate_AonCash: Daily Summary Rate', @enabled = 0

--==Affiliate_Athena000
EXEC dbo.sp_update_job @job_name = N'Affiliate_Athena000: Backup Commission Group', @enabled = 0
EXEC dbo.sp_update_job @job_name = N'Affiliate_Athena000: Clear Login', @enabled = 0
EXEC dbo.sp_update_job @job_name = N'Affiliate_Athena000: Commission Monthly Transfer', @enabled = 0
EXEC dbo.sp_update_job @job_name = N'Affiliate_Athena000: Daily Summary Rate', @enabled = 0

--==Affiliate_itcbet
EXEC dbo.sp_update_job @job_name = N'Affiliate_itcbet: Backup Commission Group', @enabled = 0
EXEC dbo.sp_update_job @job_name = N'Affiliate_itcbet: Clear Login', @enabled = 0
EXEC dbo.sp_update_job @job_name = N'Affiliate_itcbet: Commission Monthly Transfer', @enabled = 0
EXEC dbo.sp_update_job @job_name = N'Affiliate_itcbet: Daily Summary Rate', @enabled = 0

--==Affiliate_MacauBet
EXEC dbo.sp_update_job @job_name = N'Affiliate_MacauBet: Backup Commission Group', @enabled = 0
EXEC dbo.sp_update_job @job_name = N'Affiliate_MacauBet: Clear Login', @enabled = 0
EXEC dbo.sp_update_job @job_name = N'Affiliate_MacauBet: Commission Monthly Transfer', @enabled = 0
EXEC dbo.sp_update_job @job_name = N'Affiliate_MacauBet: Daily Summary Rate', @enabled = 0

GO