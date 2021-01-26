/*
	Task: Drop all subscriptions from the indicated publication
	Run @ DBTRANS
*/

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBTrans_Sync_DB06', @subscriber = N'DB061', @destination_db = N'bodb02', @article = N'all'
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DBTrans_Sync_DB06', @subscriber = N'DB06C2\DB06', @destination_db = N'bodb02', @article = N'all'
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DBTrans_Sync_DB06', @subscriber = N'DBTP', @destination_db = N'bodb02', @article = N'all'
GO





