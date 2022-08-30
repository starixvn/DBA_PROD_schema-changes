/*
	Task: Drop all subscriptions from the indicated publication
	Run @ DBTKO 
*/

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBTKO_Odds_Info_C', @subscriber = N'DBCUST', @destination_db = N'CustDB', @article = N'all'
GO