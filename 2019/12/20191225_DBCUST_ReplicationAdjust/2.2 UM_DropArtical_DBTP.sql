/*
	Task: CS_ProductBetSetting: Drop artical / remove table from replication
	Using UI or run script below @DBTP
*/


--Drop article Acc_GroupExtraPTSetting
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Odds_Odds', @article = N'Acc_GroupExtraPTSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTP_Odds_Odds', @article = N'Acc_GroupExtraPTSetting', @force_invalidate_snapshot = 1
GO