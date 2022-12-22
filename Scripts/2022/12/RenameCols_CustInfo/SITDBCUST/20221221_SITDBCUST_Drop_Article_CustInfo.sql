/*<info serverAlias="SITDBCUST-CustDB"></info>*/
/*
	Created: 20221221@Sol
	Task: Drop custinfo article
	DB: SITDBCUST-CustDB
*/


-- ### PUBLICATION = CUSTDB_CUSTINFO ###

-- Dropping the transactional articles
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustInfo', @article = N'custInfo', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustInfo', @article = N'custInfo', @force_invalidate_snapshot = 1
GO


-- ### PUBLICATION = CUSTDB_CUSTOMER_INFO ###

-- Dropping the transactional articles
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'custInfo', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'custInfo', @force_invalidate_snapshot = 1
GO

-- ### PUBLICATION = CUSTDB_DBTRANS_CUSTINFO ###

-- Dropping the transactional articles
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'custInfo', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'custInfo', @force_invalidate_snapshot = 1
GO

