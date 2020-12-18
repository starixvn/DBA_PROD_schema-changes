/*
	Task - Remove logshiping
		1- bodb_Maintenance
		2- bodb_PlaytechCS
		3- bodb_CRM
		4- bodb_3rdProduct
*/

--for db053
--++run on db052
EXEC master.dbo.sp_delete_log_shipping_primary_secondary
	@primary_database = N'bodb_Maintenance'
	,@secondary_server = N'DB053'--> db053 @KBT
	,@secondary_database = N'bodb_Maintenance'
GO
EXEC master.dbo.sp_delete_log_shipping_primary_secondary
	@primary_database = N'bodb_CRM'
	,@secondary_server = N'DB053'--> db053 @KBT
	,@secondary_database = N'bodb_CRM'
GO

--for DB052@MNL
EXEC master.dbo.sp_delete_log_shipping_primary_secondary
	@primary_database = N'bodb_Maintenance'
	,@secondary_server = N'10.11.1.21' --> db052 @MNL
	,@secondary_database = N'bodb_Maintenance'
GO
EXEC master.dbo.sp_delete_log_shipping_primary_secondary
	@primary_database = N'bodb_CRM'
	,@secondary_server = N'10.11.1.21' --> db052 @MNL
	,@secondary_database = N'bodb_CRM'
GO
EXEC master.dbo.sp_delete_log_shipping_primary_secondary
	@primary_database = N'bodb_PlaytechCS'
	,@secondary_server = N'10.11.1.21' --> db052 @MNL
	,@secondary_database = N'bodb_PlaytechCS'
GO
EXEC master.dbo.sp_delete_log_shipping_primary_secondary
	@primary_database = N'bodb_3rdProduct'
	,@secondary_server = N'10.11.1.21' --> db052 @MNL
	,@secondary_database = N'bodb_3rdProduct'
GO

--2. On the secondary server, execute sp_delete_log_shipping_secondary_database to delete 
--the secondary database.
--++run on DB052 @MNL
EXEC sp_delete_log_shipping_secondary_database N'bodb_PlaytechCS'
EXEC sp_delete_log_shipping_secondary_database N'bodb_Maintenance'
EXEC sp_delete_log_shipping_secondary_database N'bodb_CRM'
EXEC sp_delete_log_shipping_secondary_database N'bodb_3rdProduct'

--++run on DB053 @KBT
EXEC sp_delete_log_shipping_secondary_database N'bodb_Maintenance'
EXEC sp_delete_log_shipping_secondary_database N'bodb_CRM'

----3. On the primary server, execute sp_delete_log_shipping_primary_database to delete information 
----	about the log shipping configuration from the primary server. This also deletes the backup job.
--++run on DB052 @KBT
EXEC sp_delete_log_shipping_primary_database N'bodb_PlaytechCS'
EXEC sp_delete_log_shipping_primary_database N'bodb_Maintenance'
EXEC sp_delete_log_shipping_primary_database N'bodb_CRM'
EXEC sp_delete_log_shipping_primary_database N'bodb_3rdProduct'
--go