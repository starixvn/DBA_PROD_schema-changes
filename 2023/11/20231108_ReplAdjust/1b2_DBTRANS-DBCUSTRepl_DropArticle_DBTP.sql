/*
	Task: Drop article from publication for renaming
	Run on DBTP10C
*/

-- Dropping the transactional articles
use [bodb02]
GO
exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_1', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_1', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_13', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_13', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_1324', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_1324', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_135', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_135', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_2', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_2', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_24', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_24', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_25', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_25', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_26', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_26', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_27', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_27', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_28', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_28', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_3', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_3', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_4', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_4', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_468', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_468', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_5', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_5', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_6', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_6', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_603', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_603', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_7', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_7', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_8', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_8', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_901', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_901', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_911', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_911', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_9999', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_9999', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_MP_9', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_MP_9', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_Refund_901', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_Refund_901', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_RefundAll', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_RefundAll', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_RefundFT', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_RefundFT', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_RefundHT', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_RefundHT', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_PreCalculate_s160', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_PreCalculate_s160', @force_invalidate_snapshot = 1
GO

----
-- Dropping the transactional articles
use [bodb02]
GO
exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_1', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_1', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_13', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_13', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_1324', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_1324', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_135', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_135', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_2', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_2', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_24', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_24', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_25', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_25', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_26', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_26', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_27', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_27', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_28', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_28', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_3', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_3', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_4', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_4', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_468', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_468', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_5', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_5', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_6', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_6', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_603', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_603', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_7', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_7', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_8', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_8', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_901', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_901', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_911', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_911', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_9999', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_9999', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_MP_9', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_MP_9', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_Refund_901', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_Refund_901', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_RefundAll', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_RefundAll', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_RefundFT', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_RefundFT', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_RefundHT', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_RefundHT', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_PreCalculate_s160', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_PreCalculate_s160', @force_invalidate_snapshot = 1
GO



--==================================================

-- Dropping the transactional articles
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Customer_Info', @article = N'custInfo', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTP_Customer_Info', @article = N'custInfo', @force_invalidate_snapshot = 1
GO

-- Dropping the transactional articles
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_CustInfo_AWS', @article = N'custInfo', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTP_CustInfo_AWS', @article = N'custInfo', @force_invalidate_snapshot = 1
GO

-- Dropping the transactional articles
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Customer_Info_Casino', @article = N'custInfo', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTP_Customer_Info_Casino', @article = N'custInfo', @force_invalidate_snapshot = 1
GO

-- Dropping the transactional articles
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Customer_n_Setting', @article = N'custInfo', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTP_Customer_n_Setting', @article = N'custInfo', @force_invalidate_snapshot = 1
GO


--==================================================
-- Dropping the transactional articles
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_DR_sync', @article = N'SportBettypeSettingMatrix', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTP_DR_sync', @article = N'SportBettypeSettingMatrix', @force_invalidate_snapshot = 1
GO


