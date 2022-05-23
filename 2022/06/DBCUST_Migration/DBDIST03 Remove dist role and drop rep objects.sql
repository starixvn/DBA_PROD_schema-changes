/*
	Task: Disable distributor role & Drop related objects on old server
	Run on DBDIST03 (Old server)
*/

-- Dropping the distribution publishers
exec sp_dropdistpublisher @publisher = N'DBCUST'
GO

-- Dropping the distribution databases
use master
exec sp_dropdistributiondb @database = N'distribution'
GO
exec sp_dropdistributiondb @database = N'distribution'
GO
exec sp_dropdistributiondb @database = N'distribution'
GO
exec sp_dropdistributiondb @database = N'distribution'
GO
exec sp_dropdistributiondb @database = N'distribution'
GO
exec sp_dropdistributiondb @database = N'distribution'
GO
exec sp_dropdistributiondb @database = N'distribution'
GO
exec sp_dropdistributiondb @database = N'distribution'
GO

-- Uninstalling the server as a Distributor
use master
exec sp_dropdistributor @no_checks = 1, @ignore_distributor = 1
GO
