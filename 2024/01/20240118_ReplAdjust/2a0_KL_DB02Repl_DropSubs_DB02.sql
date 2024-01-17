/*
	Task: Drop all subscribers in related publication for add/remove articles
	Run on DB02
*/

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DB02_Sync_DR', @subscriber = N'DBTP10C', @destination_db = N'bodb02', @article = N'all'
GO

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DB02_Trans_Odds_Info', @subscriber = N'DBGRP01L', @destination_db = N'bodb02', @article = N'all'
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DB02_Trans_Odds_Info', @subscriber = N'DBGRP02L', @destination_db = N'bodb02', @article = N'all'
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DB02_Trans_Odds_Info', @subscriber = N'DBGRP03L', @destination_db = N'bodb02', @article = N'all'
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DB02_Trans_Odds_Info', @subscriber = N'DBTRANS', @destination_db = N'bodb02', @article = N'all'
GO