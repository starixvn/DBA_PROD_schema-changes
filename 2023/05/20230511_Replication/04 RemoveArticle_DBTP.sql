/*
	Task: Drop articles
	Run script below @DBTP - add 15 articles to pub CustDB_Customer_Info, CustDB_DBTrans_CustInfo
*/

-- Dropping the transactional articles

use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBTP_bodb_licensee', @article = N'LicenseeCustComm', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'DBTP_bodb_licensee', @article = N'LicenseeCustComm', @force_invalidate_snapshot = 1
GO

use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBTP_bodb_licensee', @article = N'LicenseeGroupComm', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'DBTP_bodb_licensee', @article = N'LicenseeGroupComm', @force_invalidate_snapshot = 1
GO



-- Dropping the transactional articles


use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Customer_n_Setting', @article = N'CustSettingGame', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTP_Customer_n_Setting', @article = N'CustSettingGame', @force_invalidate_snapshot = 1
GO

use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Customer_n_Setting', @article = N'CustGameType', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTP_Customer_n_Setting', @article = N'CustGameType', @force_invalidate_snapshot = 1
GO

use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Customer_n_Setting', @article = N'CustSetting3rd', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTP_Customer_n_Setting', @article = N'CustSetting3rd', @force_invalidate_snapshot = 1
GO

use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Customer_n_Setting', @article = N'CustOverrideGame', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTP_Customer_n_Setting', @article = N'CustOverrideGame', @force_invalidate_snapshot = 1
GO

use [bodb02]
exec sp_dropsubscription @publication = N'DBTP_Customer_n_Setting', @article = N'custOverride3rd', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBTP_Customer_n_Setting', @article = N'custOverride3rd', @force_invalidate_snapshot = 1
GO