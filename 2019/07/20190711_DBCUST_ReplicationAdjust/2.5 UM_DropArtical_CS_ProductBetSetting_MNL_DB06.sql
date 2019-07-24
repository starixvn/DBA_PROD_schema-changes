/*
	Task: CS_ProductBetSetting: Drop artical / remove table from replication
	Using UI or run script below @ MNL DB06
*/

use [bodb02]
GO
exec sp_dropsubscription @publication = N'DB06_Customer_n_Setting', @article = N'CS_ProductBetSetting', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DB06_Customer_n_Setting', @article = N'CS_ProductBetSetting', @force_invalidate_snapshot = 1