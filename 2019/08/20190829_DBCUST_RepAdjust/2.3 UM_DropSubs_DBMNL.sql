/*
	Task: Drop all subscriptions from the indicated publication
	Run @ DBMNL
*/


-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBMNL_Customer_Setting_C', @subscriber = N'DBCUST', @destination_db = N'CustDB', @article = N'all'
GO