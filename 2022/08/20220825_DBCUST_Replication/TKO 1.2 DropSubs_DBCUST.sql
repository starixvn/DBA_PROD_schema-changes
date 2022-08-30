/*
	Task: Drop all subscriptions from the indicated publication
	Run @ AWS DBTRANS
*/

-- Dropping the transactional subscriptions
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @subscriber = N'DBTRANS', @destination_db = N'CustDB', @article = N'all'
GO

-- Dropping the transactional subscriptions
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB02', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB04ADMIN1', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB05', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB052', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB054', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB061', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DBDW', @destination_db = N'bodb02', @article = N'all'
GO