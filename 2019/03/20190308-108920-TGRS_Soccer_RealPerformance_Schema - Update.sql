/*
	Creator:	20190304@John
	Task:		[TGR Soccer] Add new report to view Real Performance [Redmine ID: 108920]
	Server:		DB06.bodb_TGRS & DBTP.bodb_TGRS_UAT

	Reviewer: Billy
*/

ALTER TABLE dbo.TraderPerformance_Monthly
DROP COLUMN	  Stake_AR
			, WinLost_AR
			, Comm_AR

ALTER TABLE dbo.TraderPerformance_Monthly
ADD	  Turnover_AR MONEY NULL
	, WinLoss_AR MONEY NULL
	, Comm_AR MONEY NULL

ALTER TABLE dbo.TraderPerformance_Yearly
DROP COLUMN	  Stake_AR
			, WinLost_AR
			, Comm_AR

ALTER TABLE dbo.TraderPerformance_Yearly
ADD	  Turnover_AR MONEY NULL
	, WinLoss_AR MONEY NULL
	, Comm_AR MONEY NULL