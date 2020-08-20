/*
	Task: Drop all subscriptions from the indicated publication
	Run @ MNL DB06
*/

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DB06_Customer_Info', @subscriber = N'DBDW', @destination_db = N'bodb02', @article = N'all'
GO

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DB06_Odds_Info', @subscriber = N'DBDW', @destination_db = N'bodb02', @article = N'all'
GO
