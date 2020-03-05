
-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBTrans_Bet', @subscriber = N'DB042', @destination_db = N'bodb02', @article = N'all'
GO 

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBTrans_Bet14', @subscriber = N'DB042', @destination_db = N'bodb02', @article = N'all'
GO
 
-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBTrans_ExecRep', @subscriber = N'DB042', @destination_db = N'bodb02', @article = N'all'
GO
 
-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBTrans_ExecRep_UAT', @subscriber = N'DB042', @destination_db = N'bodb02', @article = N'all'
GO
 
-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBTrans_ExecRepAcc', @subscriber = N'DB042', @destination_db = N'bodb02', @article = N'all'
GO
 
-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBTrans_Vendor', @subscriber = N'DB042', @destination_db = N'bodb02', @article = N'all'
GO 

-- Dropping the transactional subscriptions
 
--use [bodb02]
--exec sp_dropsubscription @publication = N'DBTrans_Vendor14', @subscriber = N'DB042', @destination_db = N'bodb02', @article = N'all'
GO
  
-- Dropping the registered subscriber
exec sp_dropsubscriber @subscriber = N'DB042'
GO
 