/*
	Task: Remove article for renaming/change data type
	Run script below @DBCUST
*/


--=======================================================
-- Dropping the transactional articles
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'Cusdb_bodb_licensee', @article = N'LA_VendorPaymentSetting ', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb_Licensee]
exec sp_droparticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_VendorPaymentSetting ', @force_invalidate_snapshot = 1
GO
