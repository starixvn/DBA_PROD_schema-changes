/*
	Task: Drop article to related publication
	Run on DBTP10C
*/

-- Dropping the transactional articles

use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_Undo_s213', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_Undo_s213', @force_invalidate_snapshot = 1
GO

use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_Refund_s213', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_Refund_s213', @force_invalidate_snapshot = 1
GO

use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_s213', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'NAP_Admin_Calculate_s213', @force_invalidate_snapshot = 1
GO



-- Dropping the transactional articles

use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_Undo_s213', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_Undo_s213', @force_invalidate_snapshot = 1
GO

use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_Refund_s213', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_Refund_s213', @force_invalidate_snapshot = 1
GO

use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_s213', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_s213', @force_invalidate_snapshot = 1
GO