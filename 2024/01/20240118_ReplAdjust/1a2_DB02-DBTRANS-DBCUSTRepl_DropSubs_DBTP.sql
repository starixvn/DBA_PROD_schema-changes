/*
	Task: Drop all subscribers in related publication for add/remove articles
	Run on DBTP10C
*/

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Sync_DR', @subscriber = N'DBKLC1', @destination_db = N'bodb02', @article = N'all'
GO

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep', @subscriber = N'DBKLC1', @destination_db = N'bodb02', @article = N'all'
GO

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_DR_sync', @subscriber = N'DBKLC1', @destination_db = N'bodb02', @article = N'all'
GO