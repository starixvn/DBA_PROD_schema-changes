
/*
	Creator:	20200605@vnLukas
	Task:		Replace DB053 to DB055 role - [Redmine: #134692]
	Server:		MNL - DB02 
*/

-- Dropping the transactional subscriptions
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DB02_Dot', @subscriber = N'DB053', @destination_db = N'bodb02', @article = N'all'
GO 

-- Dropping the transactional subscriptions
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DB02_event14', @subscriber = N'DB053', @destination_db = N'bodb02', @article = N'all'
GO
  
-- Dropping the transactional subscriptions
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DB02_Odds_3rd', @subscriber = N'DB053', @destination_db = N'bodb02', @article = N'all'
GO
  
-- Dropping the transactional subscriptions
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DB02_Odds_Info', @subscriber = N'DB053', @destination_db = N'bodb02', @article = N'all'
GO  

-- Dropping the transactional subscriptions
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DB02_Odds_Odds', @subscriber = N'DB053', @destination_db = N'bodb02', @article = N'all'
GO      
 
GO
-- Dropping the registered subscriber
exec sp_dropsubscriber @subscriber = N'DB053'
GO
 