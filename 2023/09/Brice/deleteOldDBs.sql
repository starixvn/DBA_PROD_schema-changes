/*
186486 HA Migrate to AG
 - 20230918@Brice: delete lagacy DBs on DB052/DB053
*/

--check log shipping status
exec sp_help_log_shipping_monitor

-- remove log shipping
--1. On the primary server, execute sp_delete_log_shipping_primary_secondary to delete 
--the information about the secondary database from the primary server.
--DB052
EXEC master.dbo.sp_delete_log_shipping_primary_secondary
@primary_database = N'bodb_Maintenance'
,@secondary_server = N'DB053'
,@secondary_database = N'bodb_Maintenance'
GO
EXEC master.dbo.sp_delete_log_shipping_primary_secondary
@primary_database = N'bodb_ChatBot'
,@secondary_server = N'DB053'
,@secondary_database = N'bodb_ChatBot'
GO
EXEC master.dbo.sp_delete_log_shipping_primary_secondary
@primary_database = N'bodb_MMS'
,@secondary_server = N'DB053'
,@secondary_database = N'bodb_MMS'
GO
EXEC master.dbo.sp_delete_log_shipping_primary_secondary
@primary_database = N'bodb_Oddsfeed'
,@secondary_server = N'DB053'
,@secondary_database = N'bodb_Oddsfeed'
GO
EXEC master.dbo.sp_delete_log_shipping_primary_secondary
@primary_database = N'bodb_OIC'
,@secondary_server = N'DB053'
,@secondary_database = N'bodb_OIC'
GO
--/DB052


--2. On the secondary server, execute sp_delete_log_shipping_secondary_database to delete 
--the secondary database.
--DB053
EXEC master.dbo.sp_delete_log_shipping_secondary_database N'bodb_Maintenance'
go
EXEC master.dbo.sp_delete_log_shipping_secondary_database N'bodb_ChatBot'
go
EXEC master.dbo.sp_delete_log_shipping_secondary_database N'bodb_MMS'
go
EXEC master.dbo.sp_delete_log_shipping_secondary_database N'bodb_Oddsfeed'
go
EXEC master.dbo.sp_delete_log_shipping_secondary_database N'bodb_OIC'
--/DB03

--3. On the primary server, execute sp_delete_log_shipping_primary_database to delete information 
--	about the log shipping configuration from the primary server. This also deletes the backup job.
--DB052
EXEC master.dbo.sp_delete_log_shipping_primary_database N'bodb_Maintenance'
go
EXEC master.dbo.sp_delete_log_shipping_primary_database N'bodb_ChatBot'
go
EXEC master.dbo.sp_delete_log_shipping_primary_database N'bodb_MMS'
go
EXEC master.dbo.sp_delete_log_shipping_primary_database N'bodb_Oddsfeed'
go
EXEC master.dbo.sp_delete_log_shipping_primary_database N'bodb_OIC'
go
--/DB052


--4. drop databases
--DB052/DB053
if @@servername in ('db052','db053')
begin
	drop database bodb_Maintenance;
	
	drop database bodb_ChatBot;
	
	drop database bodb_MMS;
	
	drop database bodb_Oddsfeed;
	
	drop database bodb_OIC;
end

GO

EXEC msdb.dbo.sp_delete_job @job_name=N'bodb_ChatBot: Clear Data of ChatBot', @delete_unused_schedule=1
GO
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb_Maintenance:  Cleanup data daily', @delete_unused_schedule=1
GO
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb_oddsfeed: Move PartnerStatistics', @delete_unused_schedule=1
GO
--/DB052/DB053