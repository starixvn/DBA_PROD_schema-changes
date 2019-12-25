/*
	Task: Drop all subscriptions from the indicated publication
	Run @ DBTP
*/


-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Customer_Info', @subscriber = N'DBDW', @destination_db = N'bodb02', @article = N'all'
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Customer_Info', @subscriber = N'DBDW2', @destination_db = N'bodb02', @article = N'all'
GO

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Odds_Odds', @subscriber = N'DBDW', @destination_db = N'bodb02', @article = N'all'
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Odds_Odds', @subscriber = N'DBDW2', @destination_db = N'bodb02', @article = N'all'
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Odds_Odds', @subscriber = N'DBMNL', @destination_db = N'bodb02', @article = N'all'
GO




