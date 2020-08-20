/*
	Task: Drop all subscriptions from the indicated publication
	Run @ DBCUST
*/

-- Dropping the transactional subscriptions
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @subscriber = N'DBTRANS', @destination_db = N'CustDB', @article = N'all'
GO

-- Dropping the transactional subscriptions
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @subscriber = N'DB06', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @subscriber = N'DB061', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @subscriber = N'DBTP', @destination_db = N'bodb02', @article = N'all'
GO

-- Dropping the transactional subscriptions
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB04ADMIN1', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB04ADMIN2', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB05', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB052', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB053', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB054', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB055', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB05BK1', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB06', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB061', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DBTP', @destination_db = N'bodb02', @article = N'all'
GO

-- Dropping the transactional subscriptions
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB02', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB04ADMIN1', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB04ADMIN2', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB05', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB052', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB053', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB054', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB055', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB05BK1', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB06', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB061', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DBM2STAGE', @destination_db = N'bodb_Odds', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DBODDSC1', @destination_db = N'bodb_Odds', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DBODDSC2', @destination_db = N'bodb_Odds', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DBTP', @destination_db = N'bodb02', @article = N'all'
GO

-- Dropping the transactional subscriptions
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_Exchange', @subscriber = N'DBTRANS', @destination_db = N'CustDB', @article = N'all'
GO