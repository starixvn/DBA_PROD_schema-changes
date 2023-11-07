/*
	Task: Drop article from publication for renaming
	Run on CASINOADMINCS
*/
-- Dropping the transactional articles
use [LiveCasinoAdmin]
exec sp_dropsubscription @publication = N'A2Archive_Table', @article = N'custInfo', @subscriber = N'all', @destination_db = N'all'
GO
use [LiveCasinoAdmin]
exec sp_droparticle @publication = N'A2Archive_Table', @article = N'custInfo', @force_invalidate_snapshot = 1
GO

-- Dropping the transactional articles
use [LiveCasinoAdmin]
exec sp_dropsubscription @publication = N'A2C_CustInfo', @article = N'custInfo', @subscriber = N'all', @destination_db = N'all'
GO
use [LiveCasinoAdmin]
exec sp_droparticle @publication = N'A2C_CustInfo', @article = N'custInfo', @force_invalidate_snapshot = 1
GO

-- Dropping the transactional articles
use [LiveCasinoAdmin]
exec sp_dropsubscription @publication = N'A2Q_Custinfo', @article = N'custInfo', @subscriber = N'all', @destination_db = N'all'
GO
use [LiveCasinoAdmin]
exec sp_droparticle @publication = N'A2Q_Custinfo', @article = N'custInfo', @force_invalidate_snapshot = 1
GO

