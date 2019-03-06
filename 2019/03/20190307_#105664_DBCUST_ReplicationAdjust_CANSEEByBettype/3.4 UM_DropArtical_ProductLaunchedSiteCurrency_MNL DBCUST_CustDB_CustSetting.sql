/*
	Task: ProductLaunchedSiteCurrency: Drop artical / remove table from replication
	Using UI or run script below @ MNL DBCUST 
*/

use [custDB]
GO
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'ProductLaunchedSiteCurrency', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'ProductLaunchedSiteCurrency', @force_invalidate_snapshot = 1