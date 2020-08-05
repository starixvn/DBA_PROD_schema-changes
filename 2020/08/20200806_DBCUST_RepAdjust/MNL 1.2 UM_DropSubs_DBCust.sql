/*
	Task: Drop all subscriptions from the indicated publication
	Run @ MNL DBCUST
*/

-- Dropping the transactional subscriptions
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBCust_bodb_licensee', @subscriber = N'DB052', @destination_db = N'bodb_licensee', @article = N'all'
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBCust_bodb_licensee', @subscriber = N'DB06', @destination_db = N'bodb_licensee', @article = N'all'
GO

-- Dropping the transactional subscriptions
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_Exchange', @subscriber = N'DBTRANS', @destination_db = N'CustDB', @article = N'all'
GO

-- Dropping the transactional subscriptions
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB043', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB044', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB05', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB052', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB055', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB06', @destination_db = N'bodb02', @article = N'all'
GO