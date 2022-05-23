/*
	Task - Upgrade SQL Server DBCUST to 2019: Change DBs properties after restoring
		1- owner db to 'sa'
		2- COMPATIBILITY_LEVEL=150
		3- is_broker_enabled
		4- Full Recovery MODE
		5- is_auto_update_stats_async_on
		6- is_trustworthy_on (No DBs)
		7- is_parameterization_forced
	
	Run on new server DBCUST19

*/

USE master
GO
EXEC [IPDB].dbo.sp_changedbowner @loginame = N'sa'
GO
EXEC [MonDB].dbo.sp_changedbowner @loginame = N'sa'
GO
EXEC [bodb_CustomerLog].dbo.sp_changedbowner @loginame = N'sa'
GO
EXEC [CustDB].dbo.sp_changedbowner @loginame = N'sa'
GO
EXEC [SiteConfig].dbo.sp_changedbowner @loginame = N'sa'
GO
EXEC [NAP_UserControl].dbo.sp_changedbowner @loginame = N'sa'
GO
EXEC [bodb_Licensee].dbo.sp_changedbowner @loginame = N'sa'
GO
EXEC [AUTHDB].dbo.sp_changedbowner @loginame = N'sa'
GO
EXEC [N88_UserControl].dbo.sp_changedbowner @loginame = N'sa'



USE master
GO
ALTER DATABASE [AUTHDB] SET COMPATIBILITY_LEVEL = 150;
GO
ALTER DATABASE [bodb_CustomerLog] SET COMPATIBILITY_LEVEL = 150;
GO
ALTER DATABASE [bodb_Licensee] SET COMPATIBILITY_LEVEL = 150;
GO
ALTER DATABASE [CustDB] SET COMPATIBILITY_LEVEL = 150;
GO
ALTER DATABASE [IPDB] SET COMPATIBILITY_LEVEL = 150;
GO
ALTER DATABASE [MonDB] SET COMPATIBILITY_LEVEL = 150;
GO
ALTER DATABASE [N88_UserControl] SET COMPATIBILITY_LEVEL = 150;
GO
ALTER DATABASE [NAP_UserControl] SET COMPATIBILITY_LEVEL = 150;
GO
ALTER DATABASE [SiteConfig] SET COMPATIBILITY_LEVEL = 150;
GO


USE master
GO
ALTER DATABASE [bodb_CustomerLog] SET ENABLE_BROKER WITH NO_WAIT;
GO


USE master
GO
ALTER DATABASE [AUTHDB] SET RECOVERY FULL WITH NO_WAIT;
GO
ALTER DATABASE [IPDB] SET RECOVERY FULL WITH NO_WAIT;
GO
ALTER DATABASE [NAP_UserControl] SET RECOVERY FULL WITH NO_WAIT;
GO


USE master
GO
ALTER DATABASE [bodb_Licensee] SET AUTO_UPDATE_STATISTICS_ASYNC ON WITH NO_WAIT;
GO
ALTER DATABASE [CustDB] SET AUTO_UPDATE_STATISTICS_ASYNC ON WITH NO_WAIT;
GO
ALTER DATABASE [N88_UserControl] SET AUTO_UPDATE_STATISTICS_ASYNC ON WITH NO_WAIT;
GO
ALTER DATABASE [NAP_UserControl] SET AUTO_UPDATE_STATISTICS_ASYNC ON WITH NO_WAIT;
GO
ALTER DATABASE [SiteConfig] SET AUTO_UPDATE_STATISTICS_ASYNC ON WITH NO_WAIT;
GO


USE master
GO
ALTER DATABASE [CustDB] SET PARAMETERIZATION FORCED;
GO
ALTER DATABASE [SiteConfig] SET PARAMETERIZATION FORCED;
GO