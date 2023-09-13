/*
	Task: Drop articles from publication for renaming
	Run on DBCUST
*/

-- Dropping the transactional articles
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeCustComm', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeCustComm', @force_invalidate_snapshot = 1
use [bodb_Licensee]
GO
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeGroupComm', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeGroupComm', @force_invalidate_snapshot = 1
