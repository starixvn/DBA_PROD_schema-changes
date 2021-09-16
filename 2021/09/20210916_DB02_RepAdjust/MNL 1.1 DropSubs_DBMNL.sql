/*
	Task: Drop all subscriptions from the indicated publication
	Run @ DBMNL 
*/

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBMNL_Sync_DR_P', @subscriber = N'DB02', @destination_db = N'bodb02', @article = N'all'
GO