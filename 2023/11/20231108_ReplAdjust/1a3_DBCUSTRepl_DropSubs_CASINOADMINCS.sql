/*
	Task: Drop all subscribers in related publication for add/remove articles
	Run on CASINOADMINCS
*/

-- Dropping the transactional subscriptions
use [LiveCasinoAdmin]
exec sp_dropsubscription @publication = N'A2Archive_Table', @subscriber = N'DBCASINOARV', @destination_db = N'LiveCasinoArchive', @article = N'all'
GO

-- Dropping the transactional subscriptions
use [LiveCasinoAdmin]
exec sp_dropsubscription @publication = N'A2C_CustInfo', @subscriber = N'CASINOMAIN\MAIN', @destination_db = N'LiveCasino', @article = N'all'
GO

-- Dropping the transactional subscriptions
use [LiveCasinoAdmin]
exec sp_dropsubscription @publication = N'A2Q_Custinfo', @subscriber = N'CASINOQAVMN2', @destination_db = N'LiveCasinoAdmin', @article = N'all'
GO