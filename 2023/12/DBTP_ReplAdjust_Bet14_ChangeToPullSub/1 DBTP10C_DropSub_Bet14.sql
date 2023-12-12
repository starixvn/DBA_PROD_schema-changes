/*
	Task: Drop subscription
	Created: Daniel@20231212
	Run on DBTP10C

*/


-- Dropping the push transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Bet14', @subscriber = N'DBKLC1', @destination_db = N'bodb02', @article = N'all'
GO