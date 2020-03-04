/*
	Task: Drop all subscriptions from the indicated publication
	Run @ DBCUST
*/

-- Dropping the transactional subscriptions
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @subscriber = N'DB06', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @subscriber = N'DB061', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @subscriber = N'DBTP', @destination_db = N'bodb02', @article = N'all'
GO


-- Dropping the transactional subscriptions
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @subscriber = N'DB06', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @subscriber = N'DB061', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @subscriber = N'DBTP', @destination_db = N'bodb02', @article = N'all'
GO



