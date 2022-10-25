/*
	Task: Drop all subscriptions from the indicated publication
	Run @ AWS DBCUST
*/

-- Dropping the transactional subscriptions
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @subscriber = N'DB061', @destination_db = N'bodb02', @article = N'all'
GO
