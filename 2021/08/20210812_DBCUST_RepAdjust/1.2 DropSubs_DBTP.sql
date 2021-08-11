/*
	Task: Drop all subscriptions from the indicated publication
	Run @ DBTP - Must RDP to DBTP02C
*/

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Customer_n_Setting', @subscriber = N'DBMNL', @destination_db = N'bodb02', @article = N'all'
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Customer_n_Setting', @subscriber = N'DBTKO', @destination_db = N'bodb02', @article = N'all'
GO