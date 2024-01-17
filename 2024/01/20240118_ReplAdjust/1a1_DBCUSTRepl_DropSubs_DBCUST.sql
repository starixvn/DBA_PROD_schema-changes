/*
	Task: Drop all subscribers in related publication for add/remove articles
	Run on DBCUST
*/
-- Dropping the transactional subscriptions
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @subscriber = N'DB061', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @subscriber = N'DB062', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @subscriber = N'DBTP10C', @destination_db = N'bodb02', @article = N'all'
GO