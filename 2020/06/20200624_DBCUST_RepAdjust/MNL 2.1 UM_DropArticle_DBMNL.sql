/*
	Task: Drop article from replication for alter PK, truncate, drop tables, etc
	Using UI or run script below @ DBMNL
*/

-- Dropping the transactional articles
use [bodb02]
exec sp_dropsubscription @publication = N'DBMNL_Customer_Setting_C', @article = N'CustSettingAutoSuspend', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBMNL_Customer_Setting_C', @article = N'CustSettingAutoSuspend', @force_invalidate_snapshot = 1
GO