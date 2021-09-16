/*
	Task: Drop all subscriptions from the indicated publication
	Run @ DB02
*/

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DB02_Trans_Odds_Info', @subscriber = N'DBTRANS', @destination_db = N'bodb02', @article = N'all'
GO

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DB02_Sync_DR', @subscriber = N'DBTP', @destination_db = N'bodb02', @article = N'all'
GO

