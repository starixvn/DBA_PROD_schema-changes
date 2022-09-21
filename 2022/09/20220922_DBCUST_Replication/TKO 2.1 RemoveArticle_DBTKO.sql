/*
	Task: Remove articles for renaming/change data type
	Run script below @AWS DBTKO

*/


-- Dropping the transactional articles
use [bodb02]
exec sp_dropsubscription @publication = N'DBTKO_Customer_Info_C', @article = N'ProductStatusSiteCurrency', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTKO_Customer_Info_C', @article = N'ProductStatusSiteCurrency', @force_invalidate_snapshot = 1
GO



-- Dropping the transactional articles
use [bodb02]
exec sp_dropsubscription @publication = N'DBTKO_Customer_Setting_C', @article = N'custSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTKO_Customer_Setting_C', @article = N'custSetting', @force_invalidate_snapshot = 1
GO

use [bodb02]
exec sp_dropsubscription @publication = N'DBTKO_Customer_Setting_C', @article = N'CustSetting3rd', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTKO_Customer_Setting_C', @article = N'CustSetting3rd', @force_invalidate_snapshot = 1
GO

use [bodb02]
exec sp_dropsubscription @publication = N'DBTKO_Customer_Setting_C', @article = N'CustWinLimit', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTKO_Customer_Setting_C', @article = N'CustWinLimit', @force_invalidate_snapshot = 1
GO

use [bodb02]
exec sp_dropsubscription @publication = N'DBTKO_Customer_Setting_C', @article = N'CustWinLossLimit_Agent', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTKO_Customer_Setting_C', @article = N'CustWinLossLimit_Agent', @force_invalidate_snapshot = 1
GO

use [bodb02]
exec sp_dropsubscription @publication = N'DBTKO_Customer_Setting_C', @article = N'CustWinLossLimit_Member', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTKO_Customer_Setting_C', @article = N'CustWinLossLimit_Member', @force_invalidate_snapshot = 1
GO

use [bodb02]
exec sp_dropsubscription @publication = N'DBTKO_Customer_Setting_C', @article = N'Dep_CustSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTKO_Customer_Setting_C', @article = N'Dep_CustSetting', @force_invalidate_snapshot = 1
GO

use [bodb02]
exec sp_dropsubscription @publication = N'DBTKO_Customer_Setting_C', @article = N'Dep_CustSetting3rd', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTKO_Customer_Setting_C', @article = N'Dep_CustSetting3rd', @force_invalidate_snapshot = 1
GO

use [bodb02]
exec sp_dropsubscription @publication = N'DBTKO_Customer_Setting_C', @article = N'ProductBetSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTKO_Customer_Setting_C', @article = N'ProductBetSetting', @force_invalidate_snapshot = 1
GO

use [bodb02]
exec sp_dropsubscription @publication = N'DBTKO_Customer_Setting_C', @article = N'ProductGlobalSetting', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTKO_Customer_Setting_C', @article = N'ProductGlobalSetting', @force_invalidate_snapshot = 1
GO

use [bodb02]
exec sp_dropsubscription @publication = N'DBTKO_Customer_Setting_C', @article = N'VRBettypeGroup', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTKO_Customer_Setting_C', @article = N'VRBettypeGroup', @force_invalidate_snapshot = 1
GO

use [bodb02]
exec sp_dropsubscription @publication = N'DBTKO_Customer_Setting_C', @article = N'VRLeagueGroup', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTKO_Customer_Setting_C', @article = N'VRLeagueGroup', @force_invalidate_snapshot = 1
GO

use [bodb02]
exec sp_dropsubscription @publication = N'DBTKO_Customer_Setting_C', @article = N'VRSettingHierarchy', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTKO_Customer_Setting_C', @article = N'VRSettingHierarchy', @force_invalidate_snapshot = 1
GO

use [bodb02]
exec sp_dropsubscription @publication = N'DBTKO_Customer_Setting_C', @article = N'VRSettingReference', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTKO_Customer_Setting_C', @article = N'VRSettingReference', @force_invalidate_snapshot = 1
GO



-- Dropping the transactional articles
use [bodb02]
exec sp_dropsubscription @publication = N'DBTKO_DR_sync_C', @article = N'Dep_CustBetLimitGameType_Special', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTKO_DR_sync_C', @article = N'Dep_CustBetLimitGameType_Special', @force_invalidate_snapshot = 1
GO