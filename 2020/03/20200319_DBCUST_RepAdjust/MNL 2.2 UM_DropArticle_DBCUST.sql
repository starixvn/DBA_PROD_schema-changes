/*
	Task: Drop article from replication for alter PK, truncate, drop tables, etc
	Using UI or run script below @ MNL DBCUST
*/

-- Dropping the transactional articles
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExchangeDaily', @article = N'TOControl_GlobalSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_ExchangeDaily', @article = N'TOControl_GlobalSetting', @force_invalidate_snapshot = 1
GO