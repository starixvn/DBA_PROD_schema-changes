USE [master]
GO

CREATE DATABASE [bodb_CustomerLog_Archive] ON  PRIMARY 
( NAME = N'bodb_CustomerLog_Archive', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\bodb_CustomerLog_Archive.mdf' , SIZE = 32MB , MAXSIZE = UNLIMITED, FILEGROWTH = 32MB )
 LOG ON 
( NAME = N'bodb_CustomerLog_Archive_log', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\bodb_CustomerLog_Archive_log.ldf' , SIZE = 32MB , MAXSIZE = 10240MB , FILEGROWTH = 512MB)
GO


ALTER DATABASE [bodb_CustomerLog_Archive] SET RECOVERY SIMPLE 
GO

USE [bodb_CustomerLog_Archive]
GO

CREATE USER [bodbAdminNet] FOR LOGIN [bodbAdminNet] WITH DEFAULT_SCHEMA=[dbo]
GO

CREATE USER [bodbDownlineNet] FOR LOGIN [bodbDownlineNet] WITH DEFAULT_SCHEMA=[dbo]
GO

CREATE USER [bodbDownlineNetView] FOR LOGIN [bodbDownlineNetView] WITH DEFAULT_SCHEMA=[dbo]
GO

CREATE USER [bodbExtAccNet] FOR LOGIN [bodbExtAccNet] WITH DEFAULT_SCHEMA=[dbo]
GO

CREATE USER [bodbLicenseeNet] FOR LOGIN [bodbLicenseeNet] WITH DEFAULT_SCHEMA=[dbo]
GO

CREATE USER [Dot_Admin] FOR LOGIN [Dot_Admin] WITH DEFAULT_SCHEMA=[dbo]
GO

CREATE USER [Dot_Member] FOR LOGIN [Dot_Member] WITH DEFAULT_SCHEMA=[dbo]
GO

GRANT CONNECT TO [bodbAdminNet] AS [dbo]
GO

GRANT CONNECT TO [bodbDownlineNet] AS [dbo]
GO

GRANT CONNECT TO [bodbDownlineNetView] AS [dbo]
GO

GRANT CONNECT TO [bodbExtAccNet] AS [dbo]
GO

GRANT CONNECT TO [bodbLicenseeNet] AS [dbo]
GO

GRANT CONNECT TO [Dot_Admin] AS [dbo]
GO

