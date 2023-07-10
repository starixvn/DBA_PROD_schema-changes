/*
	Task: Drop all subscribers of related publication
	Run on DB02
*/

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DB02_Sync_DR', @subscriber = N'DBTP10C', @destination_db = N'bodb02', @article = N'all'
GO