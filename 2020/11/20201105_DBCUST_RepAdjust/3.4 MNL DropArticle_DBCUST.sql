/*
	Task: Drop article from replication
	Using UI or run script below @MNL DBCUST
*/


use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CustPTSetting3rd_Agent', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CustPTSetting3rd_Agent', @force_invalidate_snapshot = 1
GO
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CustPTSetting3rd_Member', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CustPTSetting3rd_Member', @force_invalidate_snapshot = 1
GO