/*
	Task: Drop article from replication for truncate data/change PK/remove unused objects/etc
	Using UI or run script below @DBCUST
*/

-- Dropping the transactional articles
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Dep_CustVIP', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustVIP', @force_invalidate_snapshot = 1
GO

-- Dropping the transactional articles
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @article = N'Exchange', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Login_Exchange', @article = N'Exchange', @force_invalidate_snapshot = 1
GO

-- Dropping the transactional articles
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_Exchange', @article = N'Exchange', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_Exchange', @article = N'Exchange', @force_invalidate_snapshot = 1
GO
