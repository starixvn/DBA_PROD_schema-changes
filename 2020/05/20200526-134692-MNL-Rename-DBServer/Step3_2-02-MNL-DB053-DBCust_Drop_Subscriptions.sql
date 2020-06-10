 
/*
	Creator:	20200605@vnLukas
	Task:		Replace DB053 to DB055 role - [Redmine: #134692]
	Server:		MNL - DBCUST 
*/

-- Dropping the transactional subscriptions
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB053', @destination_db = N'bodb02', @article = N'all'
GO
    
-- Dropping the transactional subscriptions
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExchangeDaily', @subscriber = N'DB053', @destination_db = N'bodb02', @article = N'all'
GO
 

-- Dropping the transactional subscriptions
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExecRepAcc_Cust', @subscriber = N'DB053', @destination_db = N'bodb02', @article = N'all'
GO
 
-- Dropping the transactional subscriptions
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB053', @destination_db = N'bodb02', @article = N'all'
GO
  

-- Dropping the transactional subscriptions
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBCust_bodb_licensee', @subscriber = N'DB053', @destination_db = N'bodb_licensee', @article = N'all'
GO
 
-- Dropping the transactional subscriptions
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBCust_bodb_licensee_BA', @subscriber = N'DB053', @destination_db = N'bodb_licensee', @article = N'all'
GO
   
GO
-- Dropping the registered subscriber
exec sp_dropsubscriber @subscriber = N'DB053'
GO
 