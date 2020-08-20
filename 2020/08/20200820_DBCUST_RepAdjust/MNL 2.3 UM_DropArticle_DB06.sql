/*
	Task: Drop article from replication for alter PK, truncate, drop tables, etc
	Using UI or run script below @ MNL DB06
*/

-- Dropping the transactional articles
use [bodb02]
exec sp_dropsubscription @publication = N'DB06_Customer_n_Setting', @article = N'Dep_CustVIP', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DB06_Customer_n_Setting', @article = N'Dep_CustVIP', @force_invalidate_snapshot = 1
GO

-- Dropping the transactional articles
use [bodb02]
exec sp_dropsubscription @publication = N'DB06_Odds_Info', @article = N'Exchange', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DB06_Odds_Info', @article = N'Exchange', @force_invalidate_snapshot = 1
GO