

-- Dropping the transactional subscriptions
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB042', @destination_db = N'bodb02', @article = N'all'
GO
     
-- Dropping the transactional subscriptions
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExchangeDaily', @subscriber = N'DB042', @destination_db = N'bodb02', @article = N'all'
GO 

-- Dropping the transactional subscriptions
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_ExecRepAcc_Cust', @subscriber = N'DB042', @destination_db = N'bodb02', @article = N'all'
GO 

-- Dropping the transactional subscriptions
 
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB042', @destination_db = N'bodb02', @article = N'all'
GO
 
-- Dropping the transactional subscriptions
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'CustDB_bodb_Licensee_BA', @subscriber = N'DB042', @destination_db = N'bodb_licensee', @article = N'all'
GO
 
-- Dropping the registered subscriber
exec sp_dropsubscriber @subscriber = N'DB042'
GO
 