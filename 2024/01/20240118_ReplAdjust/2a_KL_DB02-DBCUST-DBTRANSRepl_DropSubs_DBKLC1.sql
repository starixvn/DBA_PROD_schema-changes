/*
	Task: Drop all subscribers in related publication for add/remove articles
	Run on KL DBKLC1
*/


-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBKLC1_Sync_DR_P', @subscriber = N'DB02', @destination_db = N'bodb02', @article = N'all'
GO

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBKLC1_Bet_n_ExecRep_T', @subscriber = N'DBTRANS', @destination_db = N'bodb02', @article = N'all'
GO

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBKLC1_DR_sync_C', @subscriber = N'DBCUST', @destination_db = N'CustDB', @article = N'all'
GO