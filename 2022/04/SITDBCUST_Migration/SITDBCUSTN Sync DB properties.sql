/*
	Task - Upgrade SQL Server SITDBCUST to 2019
		1- Check DB Property
		2- Change Full Recovery MODE (0)
		3- Change is_auto_update_stats_async_on (4)
		4- Change is_trustworthy_on (0)
		5- Change is_parameterization_forced (1)
		6- Change is_broker_enabled (1)
		7- Set COMPATIBILITY_LEVEL=150 (8)
		8- Set owner db to 'sa'
	Run on db055
*/

USE [master]
GO
-- 1- Check DB Property
SELECT name,compatibility_level,recovery_model_desc,page_verify_option_desc
,is_auto_update_stats_async_on,is_trustworthy_on,is_parameterization_forced
,is_broker_enabled
FROM sys.databases
WHERE database_id > 4
ORDER BY 1
GO

--ALTER DATABASE SCOPED CONFIGURATION

/*
  a.FULL Recovery Mode = 0
  b.is_auto_update_stats_async_on = 4
  c.is_trustworthy_on = 0
  d.is_parameterization_forced = 1
  e.is_broker_enabled = 1
  f.compatibility_level(100->150) = 8
*/

--2- Change Full Recovery MODE (0)
SELECT 'ALTER DATABASE [' + name +'] SET RECOVERY FULL WITH NO_WAIT;'
FROM sys.databases
WHERE database_id > 4 AND recovery_model=1
ORDER BY 1
GO

--

--3- Change is_auto_update_stats_async_on (4) -- might no need since this property unchanged when restoring DB
SELECT 'ALTER DATABASE [' + name +'] SET AUTO_UPDATE_STATISTICS_ASYNC ON WITH NO_WAIT;'
FROM sys.databases
WHERE database_id > 4 AND is_auto_update_stats_async_on=1
ORDER BY 1
GO

ALTER DATABASE [bodb_Licensee] SET AUTO_UPDATE_STATISTICS_ASYNC ON WITH NO_WAIT;
ALTER DATABASE [CustDB] SET AUTO_UPDATE_STATISTICS_ASYNC ON WITH NO_WAIT;
ALTER DATABASE [SiteConfig] SET AUTO_UPDATE_STATISTICS_ASYNC ON WITH NO_WAIT;
--ALTER DATABASE [SITECONFIG_1029] SET AUTO_UPDATE_STATISTICS_ASYNC ON WITH NO_WAIT;

-- 4- Change is_trustworthy_on (0)
SELECT 'ALTER DATABASE [' + name +'] SET TRUSTWORTHY ON;'
FROM sys.databases
WHERE database_id > 4 AND is_trustworthy_on=1
ORDER BY 1
GO

ALTER DATABASE [ReleaseToolDB] SET TRUSTWORTHY ON;

-- 5- Change is_parameterization_forced (1) -- might no need since this property unchanged when restoring DB
SELECT 'ALTER DATABASE [' + name +'] SET PARAMETERIZATION FORCED;'
FROM sys.databases
WHERE database_id > 4 AND is_parameterization_forced=1
ORDER BY 1
GO

ALTER DATABASE [CustDB] SET PARAMETERIZATION FORCED;
ALTER DATABASE [SiteConfig] SET PARAMETERIZATION FORCED;
--ALTER DATABASE [SITECONFIG_1029] SET PARAMETERIZATION FORCED;

-- 6- Change is_broker_enabled (1)
SELECT 'ALTER DATABASE [' + name + '] SET ENABLE_BROKER WITH NO_WAIT;'
FROM sys.databases
WHERE database_id > 4 AND is_broker_enabled=1
ORDER BY 1
GO

ALTER DATABASE [bodb_CustomerLog] SET ENABLE_BROKER WITH NO_WAIT;
ALTER DATABASE [NAP_UserControl] SET ENABLE_BROKER WITH NO_WAIT;
ALTER DATABASE [ReleaseToolDB] SET ENABLE_BROKER WITH NO_WAIT;

-- 7- Set COMPATIBILITY_LEVEL=150 (8)
SELECT 'ALTER DATABASE [' + name +'] SET COMPATIBILITY_LEVEL = 150;'
FROM sys.databases
WHERE database_id > 4 AND compatibility_level < 150
ORDER BY 1
GO

ALTER DATABASE [AUTHDB] SET COMPATIBILITY_LEVEL = 150;
ALTER DATABASE [bodb_CustomerLog] SET COMPATIBILITY_LEVEL = 150;
ALTER DATABASE [bodb_Licensee] SET COMPATIBILITY_LEVEL = 150;
ALTER DATABASE [CustDB] SET COMPATIBILITY_LEVEL = 150;
ALTER DATABASE [IPDB] SET COMPATIBILITY_LEVEL = 150;
ALTER DATABASE [MonDB] SET COMPATIBILITY_LEVEL = 150;
ALTER DATABASE [NAP_UserControl] SET COMPATIBILITY_LEVEL = 150;
ALTER DATABASE [ReleaseToolDB] SET COMPATIBILITY_LEVEL = 150;
ALTER DATABASE [SiteConfig] SET COMPATIBILITY_LEVEL = 150;
--ALTER DATABASE [SITECONFIG_1029] SET COMPATIBILITY_LEVEL = 150;
--ALTER DATABASE [SiteConfig_1101] SET COMPATIBILITY_LEVEL = 150;

-- 8- Set owner db to 'sa'
select db.name as [Database Name], sp.name [SQL Login Name]
	, 'EXEC ['+db.name+'].dbo.sp_changedbowner @loginame = N''sa''' cmd
from sys.databases db 
	left join sys.server_principals sp on db.owner_sid = sp.sid
where sp.name = 'sa'
GO


EXEC [MonDB].dbo.sp_changedbowner @loginame = N'sa'
EXEC [CustDB].dbo.sp_changedbowner @loginame = N'sa'
EXEC [IPDB].dbo.sp_changedbowner @loginame = N'sa'
EXEC [bodb_CustomerLog].dbo.sp_changedbowner @loginame = N'sa'
EXEC [SiteConfig].dbo.sp_changedbowner @loginame = N'sa'
EXEC [bodb_Licensee].dbo.sp_changedbowner @loginame = N'sa'
EXEC [NAP_UserControl].dbo.sp_changedbowner @loginame = N'sa'
EXEC [AUTHDB].dbo.sp_changedbowner @loginame = N'sa'
--EXEC [SITECONFIG_1029].dbo.sp_changedbowner @loginame = N'sa'
--EXEC [SiteConfig_1101].dbo.sp_changedbowner @loginame = N'sa'
