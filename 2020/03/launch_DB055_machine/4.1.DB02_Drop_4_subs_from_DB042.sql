


 
-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DB02_event14', @subscriber = N'DB042', @destination_db = N'bodb02', @article = N'all'
GO
  
-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DB02_Odds_3rd', @subscriber = N'DB042', @destination_db = N'bodb02', @article = N'all'
GO
  
-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DB02_Odds_Info', @subscriber = N'DB042', @destination_db = N'bodb02', @article = N'all'
GO
 
-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DB02_Odds_Odds', @subscriber = N'DB042', @destination_db = N'bodb02', @article = N'all'
GO
 

-- Dropping the registered subscriber
exec sp_dropsubscriber @subscriber = N'DB042'
GO 

