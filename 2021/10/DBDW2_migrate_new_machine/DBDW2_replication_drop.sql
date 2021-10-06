                  

-- Dropping the transactional subscriptions
 
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Customer_Info', @subscriber = N'DBDW2', @destination_db = N'bodb02', @article = N'all'
GO
       

-- Dropping the transactional subscriptions
 
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Dot_n_Login', @subscriber = N'DBDW2', @destination_db = N'bodb02', @article = N'all'
GO
    
-- Dropping the transactional subscriptions
 
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_ExecRepAcc', @subscriber = N'DBDW2', @destination_db = N'bodb02', @article = N'all'
GO
 
-- Dropping the transactional subscriptions
 
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_ExecRepAcc_Cust', @subscriber = N'DBDW2', @destination_db = N'bodb02', @article = N'all'
GO
 
-- Dropping the transactional subscriptions
 
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Odds_3rd', @subscriber = N'DBDW2', @destination_db = N'bodb02', @article = N'all'
GO
 
-- Dropping the transactional subscriptions
 
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Odds_Info', @subscriber = N'DBDW2', @destination_db = N'bodb02', @article = N'all'
GO
  
-- Dropping the transactional subscriptions
 
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Odds_Odds', @subscriber = N'DBDW2', @destination_db = N'bodb02', @article = N'all'
GO
 
-- Dropping the registered subscriber
exec sp_dropsubscriber @subscriber = N'DBDW2'
GO
