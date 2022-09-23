/*
	Task: Remove articles for rename/change data type
	Run script below @DBTP
*/

--=============================================
-- Dropping the transactional articles
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Customer_Info', @article = N'ProductStatusSiteCurrency', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTP_Customer_Info', @article = N'ProductStatusSiteCurrency', @force_invalidate_snapshot = 1
GO


--=============================================
-- Dropping the transactional articles
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Customer_n_Setting', @article = N'custSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTP_Customer_n_Setting', @article = N'custSetting', @force_invalidate_snapshot = 1
GO

use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Customer_n_Setting', @article = N'CustSetting3rd', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTP_Customer_n_Setting', @article = N'CustSetting3rd', @force_invalidate_snapshot = 1
GO

use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Customer_n_Setting', @article = N'CustWinLimit', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTP_Customer_n_Setting', @article = N'CustWinLimit', @force_invalidate_snapshot = 1
GO

use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Customer_n_Setting', @article = N'CustWinLossLimit_Agent', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTP_Customer_n_Setting', @article = N'CustWinLossLimit_Agent', @force_invalidate_snapshot = 1
GO

use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Customer_n_Setting', @article = N'CustWinLossLimit_Member', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTP_Customer_n_Setting', @article = N'CustWinLossLimit_Member', @force_invalidate_snapshot = 1
GO

use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Customer_n_Setting', @article = N'Dep_CustSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTP_Customer_n_Setting', @article = N'Dep_CustSetting', @force_invalidate_snapshot = 1
GO

use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Customer_n_Setting', @article = N'Dep_CustSetting3rd', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTP_Customer_n_Setting', @article = N'Dep_CustSetting3rd', @force_invalidate_snapshot = 1
GO

use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Customer_n_Setting', @article = N'ProductBetSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTP_Customer_n_Setting', @article = N'ProductBetSetting', @force_invalidate_snapshot = 1
GO

use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Customer_n_Setting', @article = N'ProductGlobalSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTP_Customer_n_Setting', @article = N'ProductGlobalSetting', @force_invalidate_snapshot = 1
GO

use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Customer_n_Setting', @article = N'ProductStatusSiteCurrency', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTP_Customer_n_Setting', @article = N'ProductStatusSiteCurrency', @force_invalidate_snapshot = 1
GO

use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Customer_n_Setting', @article = N'VRBettypeGroup', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTP_Customer_n_Setting', @article = N'VRBettypeGroup', @force_invalidate_snapshot = 1
GO

use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Customer_n_Setting', @article = N'VRLeagueGroup', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTP_Customer_n_Setting', @article = N'VRLeagueGroup', @force_invalidate_snapshot = 1
GO

use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Customer_n_Setting', @article = N'VRSettingHierarchy', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTP_Customer_n_Setting', @article = N'VRSettingHierarchy', @force_invalidate_snapshot = 1
GO

use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Customer_n_Setting', @article = N'VRSettingReference', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTP_Customer_n_Setting', @article = N'VRSettingReference', @force_invalidate_snapshot = 1
GO


--=============================================
-- Dropping the transactional articles
use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_DR_sync', @article = N'Dep_CustBetLimitGameType_Special', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTP_DR_sync', @article = N'Dep_CustBetLimitGameType_Special', @force_invalidate_snapshot = 1
GO