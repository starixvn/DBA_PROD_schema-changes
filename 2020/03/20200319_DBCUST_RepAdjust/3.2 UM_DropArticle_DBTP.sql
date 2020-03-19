/*
	Task: Drop article from replication for truncate data/change PK/remove unused objects/etc
	Using UI or run script below @DBTP
*/

-- Dropping the transactional articles
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Odds_Info', @article = N'TOControl_GlobalSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTP_Odds_Info', @article = N'TOControl_GlobalSetting', @force_invalidate_snapshot = 1
GO
