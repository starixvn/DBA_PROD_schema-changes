/*
	Task: Drop subscription DBDW from the indicated publication
	Run @ DBTP
*/

-- Dropping the transactional subscriptions
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Customer_Info', @subscriber = N'DBDW', @destination_db = N'bodb02', @article = N'all'
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Dot_n_Login', @subscriber = N'DBDW', @destination_db = N'bodb02', @article = N'all'
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_ExecRepAcc', @subscriber = N'DBDW', @destination_db = N'bodb02', @article = N'all'
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_ExecRepAcc_Cust', @subscriber = N'DBDW', @destination_db = N'bodb02', @article = N'all'
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Odds_3rd', @subscriber = N'DBDW', @destination_db = N'bodb02', @article = N'all'
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Odds_Info', @subscriber = N'DBDW', @destination_db = N'bodb02', @article = N'all'
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Odds_Odds', @subscriber = N'DBDW', @destination_db = N'bodb02', @article = N'all'
GO


-- Dropping the registered subscriber
use master
GO 
exec sp_dropsubscriber @subscriber = N'DBDW'
GO