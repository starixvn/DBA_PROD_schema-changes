/*
	Task: Drop all subscriptions from the indicated publication
	Run @ DBTP - Must RDP to DBTP03C
*/


-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep', @subscriber = N'DBTKO', @destination_db = N'bodb02', @article = N'all'
GO

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep_AWS', @subscriber = N'DBBAL', @destination_db = N'bodb02', @article = N'all'
GO

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_DR_sync', @subscriber = N'DBTKO', @destination_db = N'bodb02', @article = N'all'
GO