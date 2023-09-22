/*
	Task: Drop article from publication for renaming
	Run on DBTP10C
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

