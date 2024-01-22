/*
	Task: Drop all subscribers in related publication for add/remove articles
	Run on KL DB02
*/

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DB02_Trans_Odds_Info', @subscriber = N'DBTRANS', @destination_db = N'bodb02', @article = N'all'
GO