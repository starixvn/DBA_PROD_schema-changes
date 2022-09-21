/*
	Task: Remove article for renaming/change data type
	Run script below @DBCUST
*/


--=======================================================
-- Dropping the transactional articles
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_Customer_Info', @article = N'ProductStatusSiteCurrency', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_Customer_Info', @article = N'ProductStatusSiteCurrency', @force_invalidate_snapshot = 1
GO

--=======================================================
-- Dropping the transactional articles
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CustWinLimit', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CustWinLimit', @force_invalidate_snapshot = 1
GO

use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Dep_CustSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustSetting', @force_invalidate_snapshot = 1
GO

use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Dep_CustSetting3rd', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustSetting3rd', @force_invalidate_snapshot = 1
GO

use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'custSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'custSetting', @force_invalidate_snapshot = 1
GO

use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CustSetting3rd', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CustSetting3rd', @force_invalidate_snapshot = 1
GO

use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CustWinLossLimit_Agent', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CustWinLossLimit_Agent', @force_invalidate_snapshot = 1
GO

use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CustWinLossLimit_Member', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CustWinLossLimit_Member', @force_invalidate_snapshot = 1
GO

use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'Dep_ProductBetSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'Dep_ProductBetSetting', @force_invalidate_snapshot = 1
GO

use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'ProductGlobalSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'ProductGlobalSetting', @force_invalidate_snapshot = 1
GO

use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'VRSettingReference', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'VRSettingReference', @force_invalidate_snapshot = 1
GO

use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'VRBettypeGroup', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'VRBettypeGroup', @force_invalidate_snapshot = 1
GO

use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'VRLeagueGroup', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'VRLeagueGroup', @force_invalidate_snapshot = 1
GO

use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'VRSettingHierarchy', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'VRSettingHierarchy', @force_invalidate_snapshot = 1
GO

--=======================================================
-- Dropping the transactional articles
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DBTrans_CustInfo', @article = N'ProductStatusSiteCurrency', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'ProductStatusSiteCurrency', @force_invalidate_snapshot = 1
GO


--=======================================================
-- Dropping the transactional articles
use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_DR_sync', @article = N'Dep_CustBetLimitGameType_Special', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_DR_sync', @article = N'Dep_CustBetLimitGameType_Special', @force_invalidate_snapshot = 1
GO