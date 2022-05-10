/*
	Task: Drop all subscriptions from the indicated publication
	Run @ DBTRANS
*/

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBTrans_API_Data', @subscriber = N'DBTP10C', @destination_db = N'bodb02', @article = N'all'
GO

