/*
	Task: Drop all subscriptions from the indicated publication
	Run @ MNL DBCUST
*/

-- Dropping the transactional subscriptions
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBCust_bodb_licensee', @subscriber = N'DB052', @destination_db = N'bodb_licensee', @article = N'all'
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBCust_bodb_licensee', @subscriber = N'DB055', @destination_db = N'bodb_licensee', @article = N'all'
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBCust_bodb_licensee', @subscriber = N'DB06', @destination_db = N'bodb_licensee', @article = N'all'
GO