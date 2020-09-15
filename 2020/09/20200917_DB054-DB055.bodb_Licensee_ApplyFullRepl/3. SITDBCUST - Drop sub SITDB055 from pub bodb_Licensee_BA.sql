/*
	Task: Drop sub DB054, DB055 from pub CustDB_bodb_Licensee_BA for applying full replication to DB054, DB055
	Run on DBCUST
*/


-- Dropping the transactional subscriptions
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'CustDB_bodb_Licensee_BA', @subscriber = N'DB054', @destination_db = N'bodb_licensee', @article = N'all'
GO
use [bodb_Licensee]
exec sp_dropsubscription @publication = N'CustDB_bodb_Licensee_BA', @subscriber = N'DB055', @destination_db = N'bodb_licensee', @article = N'all'
GO