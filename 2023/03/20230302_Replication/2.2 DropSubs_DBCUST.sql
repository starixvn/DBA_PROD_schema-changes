/*
	Task: Drop all subscriptions from the indicated publication
	Run @ DBCUST
*/

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
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB061', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB062', @destination_db = N'bodb02', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DBTP10C', @destination_db = N'bodb02', @article = N'all'
GO


-- Dropping the transactional subscriptions
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @subscriber = N'DBGRP01L', @destination_db = N'CustDB', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @subscriber = N'DBGRP02L', @destination_db = N'CustDB', @article = N'all'
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @subscriber = N'DBTRANS', @destination_db = N'CustDB', @article = N'all'
GO