/*
	Task: Drop articles from publication
	Run on KL DBTRANS
*/
-- Dropping the transactional articles
use [bodb02]
GO
exec sp_dropsubscription @publication = N'DBTrans_ExecRep_UAT', @article = N'NAP_Admin_Calculate_MP_9_UAT1', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTrans_ExecRep_UAT', @article = N'NAP_Admin_Calculate_MP_9_UAT1', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTrans_ExecRep_UAT', @article = N'NAP_Admin_Calculate_MP_9_UAT2', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTrans_ExecRep_UAT', @article = N'NAP_Admin_Calculate_MP_9_UAT2', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTrans_ExecRep_UAT', @article = N'NAP_Admin_Calculate_MP_9_UAT3', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTrans_ExecRep_UAT', @article = N'NAP_Admin_Calculate_MP_9_UAT3', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTrans_ExecRep_UAT', @article = N'NAP_Admin_Calculate_MP_9_UAT4', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTrans_ExecRep_UAT', @article = N'NAP_Admin_Calculate_MP_9_UAT4', @force_invalidate_snapshot = 1
GO


