/*
	Task: Drop all subscribers in related publication for add/remove articles
	Run on DBTP10C
*/

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Customer_Info', @subscriber = N'DBDW', @destination_db = N'bodb02', @article = N'all'
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Customer_Info', @subscriber = N'DBDW2', @destination_db = N'bodb02', @article = N'all'
GO