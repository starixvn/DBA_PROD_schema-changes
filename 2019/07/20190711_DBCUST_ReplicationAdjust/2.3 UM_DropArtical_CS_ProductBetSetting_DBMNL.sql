/*
	Task: CS_ProductBetSetting: Drop artical / remove table from replication
	Using UI or run script below @ DBMNL 
*/

use [bodb02]
GO
exec sp_dropsubscription @publication = N'DBMNL_Customer_Setting_C', @article = N'CS_ProductBetSetting', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBMNL_Customer_Setting_C', @article = N'CS_ProductBetSetting', @force_invalidate_snapshot = 1