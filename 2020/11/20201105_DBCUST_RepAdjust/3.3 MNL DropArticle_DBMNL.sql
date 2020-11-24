/*
	Task: Drop article from replication
	Using UI or run script below @ DBMNL
*/

-- Drop the transactional articles
use [bodb02]
exec sp_dropsubscription @publication = N'DBMNL_Customer_Setting_C', @article = N'CustPTSetting3rd_Agent', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBMNL_Customer_Setting_C', @article = N'CustPTSetting3rd_Agent', @force_invalidate_snapshot = 1
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DBMNL_Customer_Setting_C', @article = N'CustPTSetting3rd_Member', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBMNL_Customer_Setting_C', @article = N'CustPTSetting3rd_Member', @force_invalidate_snapshot = 1
GO