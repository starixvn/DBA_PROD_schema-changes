/*
	Task: ProductLaunchedSiteCurrency: Drop artical / remove table from replication
	Using UI or run script below @DBTP
*/

use [bodb02]
GO
exec sp_dropsubscription @publication = N'DBTP_Customer_n_Setting', @article = N'ProductLaunchedSiteCurrency', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Customer_n_Setting', @article = N'ProductLaunchedSiteCurrency', @force_invalidate_snapshot = 1