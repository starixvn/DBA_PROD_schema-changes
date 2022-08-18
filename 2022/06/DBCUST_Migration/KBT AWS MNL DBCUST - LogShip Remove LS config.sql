/*
	Task - Upgrade SQL Server DBCUST to 2019: Remove/disable Log Shipping info on Primary & secondaries
	Follow comments run on primary DBCUST and on Related Secondaries at DR AWS/MNL
*/

--=================================================================================================
--1. Run on primary server DBCUST (Old Server) to delete log shipping config
EXEC master.dbo.sp_delete_log_shipping_primary_secondary
	@primary_database = N'AUTHDB'
	,@secondary_server = N'10.11.1.32'-- MNL DBCUST
	,@secondary_database = N'AUTHDB'
GO
EXEC master.dbo.sp_delete_log_shipping_primary_secondary
	@primary_database = N'AUTHDB'
	,@secondary_server = N'10.14.1.191'-- AWS DBCUST
	,@secondary_database = N'AUTHDB'
GO

EXEC master.dbo.sp_delete_log_shipping_primary_secondary
	@primary_database = N'IPDB'
	,@secondary_server = N'10.11.1.32'-- MNL DBCUST
	,@secondary_database = N'IPDB'
GO

EXEC master.dbo.sp_delete_log_shipping_primary_secondary
	@primary_database = N'NAP_UserControl'
	,@secondary_server = N'10.11.1.32'-- MNL DBCUST
	,@secondary_database = N'NAP_UserControl'
GO
EXEC master.dbo.sp_delete_log_shipping_primary_secondary
	@primary_database = N'NAP_UserControlLS'
	,@secondary_server = N'10.14.1.191'-- AWS DBCUST
	,@secondary_database = N'NAP_UserControl'
GO


--=================================================================================================
--2. Run on the secondary servers @ AWS/MNL to delete log shipping database config
--Run on AWS DBCUST
EXEC sp_delete_log_shipping_secondary_database N'AUTHDB'
EXEC sp_delete_log_shipping_secondary_database N'NAP_UserControlLS'
GO

--Run on MNL DBCUST
EXEC sp_delete_log_shipping_secondary_database N'AUTHDB'
EXEC sp_delete_log_shipping_secondary_database N'IPDB'
EXEC sp_delete_log_shipping_secondary_database N'NAP_UserControl'
GO


--=================================================================================================
--3. Run on the primary server DBCUST (OLD) to delete log shipping database config
EXEC sp_delete_log_shipping_primary_database N'AUTHDB'
EXEC sp_delete_log_shipping_primary_database N'IPDB'
EXEC sp_delete_log_shipping_primary_database N'NAP_UserControl'
GO
