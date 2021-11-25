/*
	Task: Drop all subscriptions from the indicated publication
	Run @ DBTP - Must RDP to DBTP02C
*/

-- *** WARNING **** CHECK BU DONE ON DBBAL Before run or CANCEL!!! --> Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep_AWS', @subscriber = N'DBBAL', @destination_db = N'bodb02', @article = N'all'
GO

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Customer_n_Setting', @subscriber = N'DBMNL', @destination_db = N'bodb02', @article = N'all'
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Customer_n_Setting', @subscriber = N'DBTKO', @destination_db = N'bodb02', @article = N'all'
GO