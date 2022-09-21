/*
	Task: Drop all subscriptions from the indicated publication
	Run @ DBTP - Must RDP to DBTP03C
*/


-- Dropping the transactional subscriptions
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBTP_bodb_licensee', @subscriber = N'DBBAL', @destination_db = N'bodb_licensee', @article = N'all'
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBTP_bodb_licensee', @subscriber = N'DBTKO', @destination_db = N'bodb_Licensee', @article = N'all'
GO

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_CustInfo_AWS', @subscriber = N'DBBAL', @destination_db = N'bodb02', @article = N'all'
GO

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Customer_Info', @subscriber = N'DBDW', @destination_db = N'bodb02', @article = N'all'
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Customer_Info', @subscriber = N'DBDW2', @destination_db = N'bodb02', @article = N'all'
GO

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Customer_n_Setting', @subscriber = N'DBTKO', @destination_db = N'bodb02', @article = N'all'
GO

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Sync_DR', @subscriber = N'DBTKO', @destination_db = N'bodb02', @article = N'all'
GO

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Odds_Info', @subscriber = N'DBDW', @destination_db = N'bodb02', @article = N'all'
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Odds_Info', @subscriber = N'DBDW2', @destination_db = N'bodb02', @article = N'all'
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Odds_Info', @subscriber = N'DBTKO', @destination_db = N'bodb02', @article = N'all'
GO