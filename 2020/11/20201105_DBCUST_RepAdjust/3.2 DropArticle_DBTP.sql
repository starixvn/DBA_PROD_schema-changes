/*
	Task: Drop article
	Run script below @DBTP
*/


-- Dropping the transactional articles
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Customer_n_Setting', @article = N'CustPTSetting3rd_Agent', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTP_Customer_n_Setting', @article = N'CustPTSetting3rd_Agent', @force_invalidate_snapshot = 1
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Customer_n_Setting', @article = N'CustPTSetting3rd_Member', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTP_Customer_n_Setting', @article = N'CustPTSetting3rd_Member', @force_invalidate_snapshot = 1
GO