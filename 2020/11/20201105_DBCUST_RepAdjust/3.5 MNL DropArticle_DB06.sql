/*
	Task: Drop article from replication
	Using UI or run script below @MNL DB06
*/


use [bodb02]
exec sp_dropsubscription @publication = N'DB06_Customer_n_Setting', @article = N'CustPTSetting3rd_Agent', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DB06_Customer_n_Setting', @article = N'CustPTSetting3rd_Agent', @force_invalidate_snapshot = 1
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DB06_Customer_n_Setting', @article = N'CustPTSetting3rd_Member', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DB06_Customer_n_Setting', @article = N'CustPTSetting3rd_Member', @force_invalidate_snapshot = 1
GO