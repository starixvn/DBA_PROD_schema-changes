/*
	Task: Drop all subscriptions from the indicated publication
	Run @ AWS DBTRANS
*/

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBTrans_Sync_DB06', @subscriber = N'DB061', @destination_db = N'bodb02', @article = N'all'
GO