/*
	Task: ProductLaunchedSiteCurrency: Drop artical / remove table from replication
	Using UI or run script below @ DBMNL 
*/

use [bodb02]
GO
exec sp_droparticle @publication = N'DBMNL_Customer_Setting_C', @article = N'ProductLaunchedSiteCurrency', @force_invalidate_snapshot = 1