/*
	Task - Upgrade SQL Server DB055 to 2019
		1- DB054_Drop LS @bodb_N88Log, bodb_NAPLog @DB054
*/
--++run on db054
EXEC master.dbo.sp_delete_log_shipping_primary_secondary
	@primary_database = N'bodb_N88Log'
	,@secondary_server = N'DB055'
	,@secondary_database = N'bodb_N88Log'
GO
EXEC master.dbo.sp_delete_log_shipping_primary_secondary
	@primary_database = N'bodb_NAPLog'
	,@secondary_server = N'DB055'
	,@secondary_database = N'bodb_NAPLog'
GO

--2. On the secondary server, execute sp_delete_log_shipping_secondary_database to delete 
--the secondary database.
--++run on DB055
EXEC sp_delete_log_shipping_secondary_database N'bodb_N88Log'
EXEC sp_delete_log_shipping_secondary_database N'bodb_NAPLog'

GO