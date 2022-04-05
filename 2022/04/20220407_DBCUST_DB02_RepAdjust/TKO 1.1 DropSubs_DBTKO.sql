/*
	Task: Drop all subscriptions from the indicated publication
	Run @ DBTKO 
*/

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBTKO_Bet_n_ExecRep_T', @subscriber = N'DBTRANS', @destination_db = N'bodb02', @article = N'all'
GO
