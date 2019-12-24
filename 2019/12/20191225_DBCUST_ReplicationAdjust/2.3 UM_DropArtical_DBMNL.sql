/*
	Task: CS_ProductBetSetting: Drop artical / remove table from replication
	Using UI or run script below @ DBMNL 
*/

--Drop article CS_ProblemAccount
use [bodb02]
exec sp_dropsubscription @publication = N'DBMNL_Customer_Setting_C', @article = N'CS_ProblemAccount', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBMNL_Customer_Setting_C', @article = N'CS_ProblemAccount', @force_invalidate_snapshot = 1
GO

--Drop article Acc_GroupExtraPTSetting
use [bodb02]
exec sp_dropsubscription @publication = N'DBMNL_Odds_Info_C', @article = N'Acc_GroupExtraPTSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBMNL_Odds_Info_C', @article = N'Acc_GroupExtraPTSetting', @force_invalidate_snapshot = 1
GO