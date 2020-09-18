/*
	Task: Drop sub SITDB055 from pub bodb_Licensee_BA for applying full replication to SITDB055
	Run on SIT Env - SITDBCUST
*/


use [bodb_Licensee]
exec sp_dropsubscription @publication = N'bodb_Licensee_BA', @subscriber = N'SITDB055', @destination_db = N'bodb_Licensee', @article = N'all'
GO