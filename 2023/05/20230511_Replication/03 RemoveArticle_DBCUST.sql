/*
	Task: Drop article
	Run script below @DBCUST
*/


-- Dropping the transactional articles

use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeCustComm', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeCustComm', @force_invalidate_snapshot = 1
GO

use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeGroupComm', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeGroupComm', @force_invalidate_snapshot = 1
GO


-- Dropping the transactional articles

use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CustSettingGame', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CustSettingGame', @force_invalidate_snapshot = 1
GO

use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CustGameType', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CustGameType', @force_invalidate_snapshot = 1
GO

use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CustSetting3rd', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CustSetting3rd', @force_invalidate_snapshot = 1
GO

use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'CustOverrideGame', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'CustOverrideGame', @force_invalidate_snapshot = 1
GO

use [CustDB]
exec sp_dropsubscription @publication = N'CustDB_CustSetting', @article = N'custOverride3rd', @subscriber = N'all', @destination_db = N'all'
GO
use [CustDB]
exec sp_droparticle @publication = N'CustDB_CustSetting', @article = N'custOverride3rd', @force_invalidate_snapshot = 1
GO