/*
	Task: Drop all subscriptions from the indicated publication
	Run @ AWS DBTKO 
*/

-- Dropping the transactional subscriptions
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBTKO_bodb_Licensee_C', @subscriber = N'DBCUST', @destination_db = N'bodb_licensee', @article = N'all'
GO

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBTKO_Customer_Info_C', @subscriber = N'DBCUST', @destination_db = N'CustDB', @article = N'all'
GO

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBTKO_Customer_Setting_C', @subscriber = N'DBCUST', @destination_db = N'CustDB', @article = N'all'
GO

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBTKO_DR_sync_C', @subscriber = N'DBCUST', @destination_db = N'CustDB', @article = N'all'
GO

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBTKO_Odds_Info_C', @subscriber = N'DBCUST', @destination_db = N'CustDB', @article = N'all'
GO
