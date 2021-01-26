/*
	Task: Drop all subscriptions from the indicated publication
	Run @ DBMNL
*/

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBMNL_API_Data_T', @subscriber = N'DBTRANS', @destination_db = N'bodb02', @article = N'all'
GO