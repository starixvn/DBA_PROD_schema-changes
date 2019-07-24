/*
	Task: CS_ProductBetSetting: Drop artical / remove table from replication
	Using UI or run script below @ MNL DBCUST 
*/

use [custDB]
GO
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CS_ProductBetSetting', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CS_ProductBetSetting', @force_invalidate_snapshot = 1