/*
	Task: Drop all subscriptions from the indicated publication
	Run @ MNL DBCUST
*/

-- Dropping the transactional subscriptions
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @subscriber = N'DB06', @destination_db = N'bodb02', @article = N'all'
GO