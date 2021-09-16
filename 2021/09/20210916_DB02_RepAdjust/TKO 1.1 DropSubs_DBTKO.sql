/*
	Task: Drop all subscriptions from the indicated publication
	Run @ DBTKO 
*/

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBTKO_Sync_DR_P', @subscriber = N'DB02', @destination_db = N'bodb02', @article = N'all'
GO

