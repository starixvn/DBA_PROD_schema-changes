/*
	Task: MNL - Drop sub DB055 from pub DBCust_bodb_licensee_BA for applying full replication to DB055
	Run on MNL DBCUST
*/


use [bodb_Licensee]
exec sp_dropsubscription @publication = N'DBCust_bodb_licensee_BA', @subscriber = N'DB055', @destination_db = N'bodb_licensee', @article = N'all'
GO