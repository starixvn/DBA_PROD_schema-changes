/*

	Task: Create new db bodb_LicenseeReportArchive - part of HA bodb_licensee
	Server: DB053

*/


USE [master]
GO

CREATE DATABASE [bodb_LicenseeReportArchive] ON  PRIMARY 
( NAME = N'bodb_LicenseeReportArchive_Data', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\bodb_LicenseeReportArchive_Data.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ), 
FILEGROUP [BATrans_Data] ( NAME = N'BATrans_Data', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\Audit_Data.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [BATrans_Index] ( NAME = N'BATrans_Index', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\Audit_Data_Index.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_15M09] ( NAME = N'rptCustomerTurnover_bk_15M09', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_15M09.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_15M10] ( NAME = N'rptCustomerTurnover_bk_15M10', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_15M10.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_15M11] ( NAME = N'rptCustomerTurnover_bk_15M11', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_15M11.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_15M12] ( NAME = N'rptCustomerTurnover_bk_15M12', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_15M12.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_16M01] ( NAME = N'rptCustomerTurnover_bk_16M01', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_16M01.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_16M02] ( NAME = N'rptCustomerTurnover_bk_16M02', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_16M02.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_16M03] ( NAME = N'rptCustomerTurnover_bk_16M03', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_16M03.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_16M04] ( NAME = N'rptCustomerTurnover_bk_16M04', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_16M04.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_16M05] ( NAME = N'rptCustomerTurnover_bk_16M05', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_16M05.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_16M06] ( NAME = N'rptCustomerTurnover_bk_16M06', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_16M06.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_16M07] ( NAME = N'rptCustomerTurnover_bk_16M07', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_16M07.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_16M08] ( NAME = N'rptCustomerTurnover_bk_16M08', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_16M08.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_16M09] ( NAME = N'rptCustomerTurnover_bk_16M09', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_16M09.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_16M10] ( NAME = N'rptCustomerTurnover_bk_16M10', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_16M10.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_16M11] ( NAME = N'rptCustomerTurnover_bk_16M11', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_16M11.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_16M12] ( NAME = N'rptCustomerTurnover_bk_16M12', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_16M12.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_17M01] ( NAME = N'rptCustomerTurnover_bk_17M01', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_17M01.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_17M02] ( NAME = N'rptCustomerTurnover_bk_17M02', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_17M02.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_17M03] ( NAME = N'rptCustomerTurnover_bk_17M03', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_17M03.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_17M04] ( NAME = N'rptCustomerTurnover_bk_17M04', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_17M04.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_17M05] ( NAME = N'rptCustomerTurnover_bk_17M05', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_17M05.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_17M06] ( NAME = N'rptCustomerTurnover_bk_17M06', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_17M06.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_17M07] ( NAME = N'rptCustomerTurnover_bk_17M07', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_17M07.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_17M08] ( NAME = N'rptCustomerTurnover_bk_17M08', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_17M08.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_17M09] ( NAME = N'rptCustomerTurnover_bk_17M09', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_17M09.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_17M10] ( NAME = N'rptCustomerTurnover_bk_17M10', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_17M10.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_17M11] ( NAME = N'rptCustomerTurnover_bk_17M11', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_17M11.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_17M12] ( NAME = N'rptCustomerTurnover_bk_17M12', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_17M12.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_18M01] ( NAME = N'rptCustomerTurnover_bk_18M01', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_18M01.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_18M02] ( NAME = N'rptCustomerTurnover_bk_18M02', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_18M02.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_18M03] ( NAME = N'rptCustomerTurnover_bk_18M03', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_18M03.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_18M04] ( NAME = N'rptCustomerTurnover_bk_18M04', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_18M04.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_18M05] ( NAME = N'rptCustomerTurnover_bk_18M05', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_18M05.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_18M06] ( NAME = N'rptCustomerTurnover_bk_18M06', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_18M06.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_18M07] ( NAME = N'rptCustomerTurnover_bk_18M07', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_18M07.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_18M08] ( NAME = N'rptCustomerTurnover_bk_18M08', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_18M08.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_18M09] ( NAME = N'rptCustomerTurnover_bk_18M09', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_18M09.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_18M10] ( NAME = N'rptCustomerTurnover_bk_18M10', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_18M10.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_18M11] ( NAME = N'rptCustomerTurnover_bk_18M11', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_18M11.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_18M12] ( NAME = N'rptCustomerTurnover_bk_18M12', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_18M12.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_19M01] ( NAME = N'rptCustomerTurnover_bk_19M01', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_19M01.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_19M02] ( NAME = N'rptCustomerTurnover_bk_19M02', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_19M02.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_19M03] ( NAME = N'rptCustomerTurnover_bk_19M03', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_19M03.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_19M04] ( NAME = N'rptCustomerTurnover_bk_19M04', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_19M04.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_19M05] ( NAME = N'rptCustomerTurnover_bk_19M05', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_19M05.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_19M06] ( NAME = N'rptCustomerTurnover_bk_19M06', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_19M06.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_19M07] ( NAME = N'rptCustomerTurnover_bk_19M07', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_19M07.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_19M08] ( NAME = N'rptCustomerTurnover_bk_19M08', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_19M08.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_19M09] ( NAME = N'rptCustomerTurnover_bk_19M09', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_19M09.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_19M10] ( NAME = N'rptCustomerTurnover_bk_19M10', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_19M10.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_19M11] ( NAME = N'rptCustomerTurnover_bk_19M11', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_19M11.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_19M12] ( NAME = N'rptCustomerTurnover_bk_19M12', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_19M12.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ),
FILEGROUP [rptCustomerTurnover_bk_MAX] ( NAME = N'rptCustomerTurnover_bk_MAX', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_MAX.ndf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB )
LOG ON ( NAME = N'bodb_LicenseeReportArchive_Log', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\bodb_LicenseeReportArchive_Data_Log.ldf' , SIZE = 256MB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB )
GO
ALTER DATABASE [bodb_LicenseeReportArchive] SET COMPATIBILITY_LEVEL = 100
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bodb_LicenseeReportArchive].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [bodb_LicenseeReportArchive] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [bodb_LicenseeReportArchive] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [bodb_LicenseeReportArchive] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [bodb_LicenseeReportArchive] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [bodb_LicenseeReportArchive] SET ARITHABORT OFF 
GO

ALTER DATABASE [bodb_LicenseeReportArchive] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [bodb_LicenseeReportArchive] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [bodb_LicenseeReportArchive] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [bodb_LicenseeReportArchive] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [bodb_LicenseeReportArchive] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [bodb_LicenseeReportArchive] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [bodb_LicenseeReportArchive] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [bodb_LicenseeReportArchive] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [bodb_LicenseeReportArchive] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [bodb_LicenseeReportArchive] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [bodb_LicenseeReportArchive] SET  ENABLE_BROKER 
GO

ALTER DATABASE [bodb_LicenseeReportArchive] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [bodb_LicenseeReportArchive] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [bodb_LicenseeReportArchive] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [bodb_LicenseeReportArchive] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [bodb_LicenseeReportArchive] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [bodb_LicenseeReportArchive] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [bodb_LicenseeReportArchive] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [bodb_LicenseeReportArchive] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [bodb_LicenseeReportArchive] SET  MULTI_USER 
GO

ALTER DATABASE [bodb_LicenseeReportArchive] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [bodb_LicenseeReportArchive] SET DB_CHAINING OFF 
GO

USE [bodb_LicenseeReportArchive]
GO

CREATE USER [bodbLicenseeNet] FOR LOGIN [bodbLicenseeNet] WITH DEFAULT_SCHEMA=[dbo]
GO

CREATE USER [Dot_Admin] FOR LOGIN [Dot_Admin] WITH DEFAULT_SCHEMA=[dbo]
GO

CREATE USER [Dot_Casino] FOR LOGIN [Dot_Casino] WITH DEFAULT_SCHEMA=[dbo]
GO

CREATE USER [Dot_Member] FOR LOGIN [Dot_Member] WITH DEFAULT_SCHEMA=[dbo]
GO


CREATE USER [sqllink] FOR LOGIN [SqlLink] WITH DEFAULT_SCHEMA=[dbo]
GO

CREATE USER [vndba] FOR LOGIN [vnDBA] WITH DEFAULT_SCHEMA=[dbo]
GO

CREATE USER [vnteam] FOR LOGIN [vnteam] WITH DEFAULT_SCHEMA=[dbo]
GO

GRANT CONNECT TO [bodbLicenseeNet] AS [dbo]
GO

GRANT CONNECT TO [Dot_Admin] AS [dbo]
GO

GRANT CONNECT TO [Dot_Casino] AS [dbo]
GO

GRANT CONNECT TO [Dot_Member] AS [dbo]
GO


GRANT CONNECT TO [sqllink] AS [dbo]
GO

GRANT CONNECT TO [vndba] AS [dbo]
GO

GRANT CONNECT TO [vnteam] AS [dbo]
GO

ALTER DATABASE [bodb_LicenseeReportArchive] SET  READ_WRITE 
GO

USE [bodb_LicenseeReportArchive]
GO
EXEC dbo.sp_changedbowner @loginame = N'sa', @map = false
GO


