/*
	Task: Drop all subscriptions from the indicated publication
	Run @ MNL DBCUST
*/

-- Dropping the transactional subscriptions
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @subscriber = N'DBTRANS', @destination_db = N'CustDB', @article = N'all'
GO

-- Dropping the transactional subscriptions
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @subscriber = N'DB06', @destination_db = N'bodb02', @article = N'all'
GO

-- Dropping the transactional subscriptions
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB043', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB044', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB05', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB052', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB055', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB06', @destination_db = N'bodb02', @article = N'all'
GO

-- Dropping the transactional subscriptions
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB02', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB043', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB044', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB05', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB052', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB055', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB06', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DBODDS163', @destination_db = N'bodb_Odds', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DBODDS33', @destination_db = N'bodb_Odds', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DBODDS77', @destination_db = N'bodb_Odds', @article = N'all'
GO

-- Dropping the transactional subscriptions
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_Exchange', @subscriber = N'DBTRANS', @destination_db = N'CustDB', @article = N'all'
GO
