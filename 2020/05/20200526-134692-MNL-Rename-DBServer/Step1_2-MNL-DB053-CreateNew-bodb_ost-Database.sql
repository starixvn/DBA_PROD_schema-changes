/*
	Creator:	20200526@vnBobby
	Task:		Replace DB053 to DB055 role - [Redmine: #134692]
	Server:		DB053[.master]
*/


--	BEGIN STEP :
--		Create new database bodb_ost and objects
----------------------------------------------------------------------------------------------------

-- TODO
-- Create new folder named to "H:\USER_DB\bodb_ost"

USE [master]
GO
/****** Object:  Database [bodb_ost]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE DATABASE [bodb_ost] ON  PRIMARY 
( NAME = N'bodb_ost', FILENAME = N'H:\USER_DB\bodb_ost\bodb_ost.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB ), 
 FILEGROUP [bettrans_index] 
( NAME = N'bettrans_index1', FILENAME = N'H:\USER_DB\bodb_ost\bettrans_index1.ndf' , SIZE = 15225664KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
( NAME = N'bettrans_index2', FILENAME = N'H:\USER_DB\bodb_ost\bettrans_index2.ndf' , SIZE = 16002944KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [bettrans_table] 
( NAME = N'bettrans_table1', FILENAME = N'H:\USER_DB\bodb_ost\bettrans_table1.ndf' , SIZE = 8294464KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
( NAME = N'bettrans_table2', FILENAME = N'H:\USER_DB\bodb_ost\bettrans_table2.ndf' , SIZE = 8077312KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [Data_table]  DEFAULT 
( NAME = N'Data_table', FILENAME = N'H:\USER_DB\bodb_ost\Data_table.ndf' , SIZE = 855040KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'bodb_ost_log', FILENAME = N'H:\USER_DB\bodb_ost\bodb_ost_log.ldf' , SIZE = 3407872KB , MAXSIZE = 2048GB , FILEGROWTH = 262144KB )
GO
ALTER DATABASE [bodb_ost] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bodb_ost].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bodb_ost] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bodb_ost] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bodb_ost] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bodb_ost] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bodb_ost] SET ARITHABORT OFF 
GO
ALTER DATABASE [bodb_ost] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [bodb_ost] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [bodb_ost] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bodb_ost] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bodb_ost] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bodb_ost] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bodb_ost] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bodb_ost] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bodb_ost] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bodb_ost] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bodb_ost] SET  DISABLE_BROKER 
GO
ALTER DATABASE [bodb_ost] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bodb_ost] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bodb_ost] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bodb_ost] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bodb_ost] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bodb_ost] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bodb_ost] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bodb_ost] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [bodb_ost] SET  MULTI_USER 
GO
ALTER DATABASE [bodb_ost] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bodb_ost] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'bodb_ost', N'ON'
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [vnteam]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [vnteam] WITH PASSWORD=N'nzItj0YJNEf6mXiUlTizFyS59Rq89LO8SYSKg7anTfg=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [vnteam] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [vnPatrick]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [vnPatrick] WITH PASSWORD=N'/pam4sc6pJM75EsVqlqDsP/Nqkq+zf2VMjt0uNY7MRI=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [vnPatrick] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [vnLukas]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [vnLukas] WITH PASSWORD=N'5UonA19X/bACLa3cOECvknF4lZhbeQkzjIKf9hsMgMs=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [vnLukas] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [vnJoe]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [vnJoe] WITH PASSWORD=N'18Y2y6pPtTgVPKHITiARhxiqUKWu4Hn7jSsQMYOwpS4=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [vnJoe] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [vnHelen]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [vnHelen] WITH PASSWORD=N'xpz0w373b3mRsdhD+TY40IXGJI2aE5RtBi93pj6FO9I=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [vnHelen] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [vnDBA]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [vnDBA] WITH PASSWORD=N'u68qkpX9i+xDG0yluoxORyN8856Mgm6MihJoev+NxkA=', DEFAULT_DATABASE=[bodb02], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [vnDBA] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [vnDaniel]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [vnDaniel] WITH PASSWORD=N'oipzC7G+B371frqGvGPvnsugKMCr9rt6e3Fqu0cNP3M=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [vnDaniel] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [vnBobby]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [vnBobby] WITH PASSWORD=N'kz8It6HYDxT9BUv2CPrtRHpu3C4sk9HUaEXSt4qkPVo=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [vnBobby] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [vnBilly]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [vnBilly] WITH PASSWORD=N'FsXimYhJ6LnJ7I8P5BmSVO1nFJ7vzR/RtxoFKPrZjtg=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [vnBilly] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [Viet]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [Viet] WITH PASSWORD=N'aXyh3FgEiVPeoNzohM+Cd6UZ+oHyof7+5hp/in9xlx0=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [Viet] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [thien]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [thien] WITH PASSWORD=N'/LatIeBAEQi61oW2Z+8GwUOFHFkoYeuQTVtdVZ8aeW0=', DEFAULT_DATABASE=[bodb02], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [thien] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [SqlLink]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [SqlLink] WITH PASSWORD=N'uRMVDjJUDEFjgr+A0iLPA0Op0DCLX6W+o2LgcLbxt6o=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [SqlLink] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [ServerMonitor]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [ServerMonitor] WITH PASSWORD=N'0M7RbjDhB0vJWjsCKhOxOaSB7hOJ8Dt6gggPsW2dh8E=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [ServerMonitor] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [repl_ap]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [repl_ap] WITH PASSWORD=N'ULg7Bor+iDjmbpxxQiuqtM84aTzbRcNXhB+JQ6Q2bAk=', DEFAULT_DATABASE=[bodb02], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [repl_ap] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [rdvivi]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [rdvivi] WITH PASSWORD=N'PHlC2SK0T16avuPav+LXmgr6ybEW2RgewfFPMobAXYA=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [rdvivi] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [RDVictor]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [RDVictor] WITH PASSWORD=N'stMI2q5UZoNBWpx/G6xha7HWeFtfCPxuQq/zOEdPeb8=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [RDVictor] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [RDSylvia]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [RDSylvia] WITH PASSWORD=N'h6MlvBGGIjC1vpNZiM63XgaxLMa6MqmpqdsCEU2Ez/s=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [RDSylvia] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [rdsvntrack]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [rdsvntrack] WITH PASSWORD=N'xhP28pPhKSP6YDk8RvFWTa9pfA+ljj8DdbXpGDOA7FE=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [rdsvntrack] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [RDLeon]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [RDLeon] WITH PASSWORD=N'RXAdKUN6KHNHWviNsHRjFzu3/K0epDZhEBc/e9168wI=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [RDLeon] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [RDKai]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [RDKai] WITH PASSWORD=N'nFyGroEimU4DuJGfgXZwmiyskzRgKW0ZhRtRBjWErLI=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [RDKai] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [RDJames]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [RDJames] WITH PASSWORD=N'7+PKzcHzxUXFxd5waaZFm/fxKvMyheYBEkQzqUdcTXo=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [RDJames] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [RDFrank]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [RDFrank] WITH PASSWORD=N'FDlhEPENBdAzvk7nEYNuP179PCxPesftXzVxilWSpKI=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [RDFrank] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [RDCooper]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [RDCooper] WITH PASSWORD=N'kw6z6hGAU299nldbFZhWmxY0ZWumDjWNzWnRHoMELaM=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [RDCooper] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [RDBenLee]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [RDBenLee] WITH PASSWORD=N'vgE21ti5VQTd22frO/a9tkWgwn/qAy4PS76k/M/I1rw=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [RDBenLee] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [RDAlfie]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [RDAlfie] WITH PASSWORD=N'VWmSx+PxXfJcufpsWy17lD2Qa7VifRtjWjmMsCTFVNU=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [RDAlfie] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [RB_Member]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [RB_Member] WITH PASSWORD=N's7GE/t/gKz74dAIC5N5H8LERWB1irtAGJnSSrKBQXaw=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [RB_Member] DISABLE
GO
/****** Object:  Login [NT SERVICE\SQLSERVERAGENT]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [NT SERVICE\SQLSERVERAGENT] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\MSSQLSERVER]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [NT SERVICE\MSSQLSERVER] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [NT AUTHORITY\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [MonDB_User]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [MonDB_User] WITH PASSWORD=N'e5i2Zfdp6a1xlEXskXZjM9OH0tfNwjzpYIe9y16m5Cc=', DEFAULT_DATABASE=[MonDB], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [MonDB_User] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [ibcrep]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [ibcrep] WITH PASSWORD=N'E+LL383zqrhU0M3CFLwCILRzf81RY1/+EdNeghkm0LY=', DEFAULT_DATABASE=[bodb02], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [ibcrep] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [Dot_Member]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [Dot_Member] WITH PASSWORD=N'QMHGhSybKpkpgWN0Ko9SYLe4Qd9G4IT0BwmJCUNFmhE=', DEFAULT_DATABASE=[bodb02], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [Dot_Member] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [Dot_Casino]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [Dot_Casino] WITH PASSWORD=N'prnRdyketCZkUi5zo7prR+rzruFSYD5FWp6AXdTapMM=', DEFAULT_DATABASE=[bodb02], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [Dot_Casino] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [Dot_Admin]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [Dot_Admin] WITH PASSWORD=N'jnkDqAc6W/E+gTdBH0pKOZv9SKPgq6qrdWP/rxi+xC8=', DEFAULT_DATABASE=[bodb02], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [Dot_Admin] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [dba_Cert_User]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [dba_Cert_User] WITH PASSWORD=N'Ae1R1GsKr85niqnd+I2zB0WCBwJBaW4nwlEgaDYTQpI=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [dba_Cert_User] DISABLE
GO
/****** Object:  Login [DB055\sql]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [DB055\sql] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [DB055\DBA_Scheduler]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [DB055\DBA_Scheduler] FROM WINDOWS WITH DEFAULT_DATABASE=[MonDB], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [CTO_Test]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [CTO_Test] WITH PASSWORD=N'hbEs9R2+9b7azugv724xCtuFhOGhLqmOx3CnIV/NINE=', DEFAULT_DATABASE=[bodb02], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [CTO_Test] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [bodbLicenseeNet]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [bodbLicenseeNet] WITH PASSWORD=N'eh9QeMruLKLs30MUKgeSkG8gaQoL8cVPXWMMy55WN84=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [bodbLicenseeNet] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [bodbExtAccNet]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [bodbExtAccNet] WITH PASSWORD=N'6j2FMWxeU23XRtZKm51AdPpjt3Hdf7dYsXES6Nh1GLg=', DEFAULT_DATABASE=[bodb02], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [bodbExtAccNet] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [bodbDownlineNetView]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [bodbDownlineNetView] WITH PASSWORD=N'yjUV2OelHD4g8xHZQCG8ztwJE3vrs2s/Y2Y6ygibbPM=', DEFAULT_DATABASE=[bodb02], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [bodbDownlineNetView] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [bodbDownlineNet]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [bodbDownlineNet] WITH PASSWORD=N'7P8wXvFWdFjXSaAex1LJNjpOLQWODWL+f5GBZXGSbOs=', DEFAULT_DATABASE=[bodb02], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [bodbDownlineNet] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [bodbAdminNet]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [bodbAdminNet] WITH PASSWORD=N'sJZq53YgC74Hajrx162PgEtFPjye5BtytezE9OrhKvY=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [bodbAdminNet] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [ANS_Member]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [ANS_Member] WITH PASSWORD=N'S0Bwkf2eR5Pfahik/rrbnwIjGE+tz8iChYiRgkQRGLI=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [ANS_Member] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'D67Bt7a4zzAkPF+86ekGDJ/a19VjEOJNVoY7milVEBw=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'DRatCq+/w2VcUFIpI4nu+TarkZFZcyuiGOIHbTkqbNo=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
GO
/****** Object:  Login [dbacert_user]    Script Date: 5/25/2020 11:01:16 PM ******/
CREATE LOGIN [dbacert_user] FROM CERTIFICATE [serverlevel_cert]
GO
ALTER AUTHORIZATION ON DATABASE::[bodb_ost] TO [sa]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [vnPatrick]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [vnLukas]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [vnJoe]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [vnDaniel]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [vnBilly]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [Viet]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [rdvivi]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [RDVictor]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [RDSylvia]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [RDLeon]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [RDJames]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [RDFrank]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [RDCooper]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [RDBenLee]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [RDAlfie]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLSERVERAGENT]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\MSSQLSERVER]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT AUTHORITY\SYSTEM]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [DB055\sql]
GO
USE [bodb_ost]
GO
/****** Object:  User [vnteam]    Script Date: 5/25/2020 11:01:17 PM ******/
CREATE USER [vnteam] FOR LOGIN [vnteam] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [vnBobby]    Script Date: 5/25/2020 11:01:17 PM ******/
CREATE USER [vnBobby] FOR LOGIN [vnBobby] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SqlLink]    Script Date: 5/25/2020 11:01:17 PM ******/
CREATE USER [SqlLink] FOR LOGIN [SqlLink] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [repl_ap]    Script Date: 5/25/2020 11:01:17 PM ******/
CREATE USER [repl_ap] FOR LOGIN [repl_ap] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [rdsvntrack]    Script Date: 5/25/2020 11:01:17 PM ******/
CREATE USER [rdsvntrack] FOR LOGIN [rdsvntrack] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [bodbDownlineNetView]    Script Date: 5/25/2020 11:01:17 PM ******/
CREATE USER [bodbDownlineNetView] FOR LOGIN [bodbDownlineNetView] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [bodbDownlineNet]    Script Date: 5/25/2020 11:01:17 PM ******/
CREATE USER [bodbDownlineNet] FOR LOGIN [bodbDownlineNet] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_datareader] ADD MEMBER [vnteam]
GO
ALTER ROLE [db_datareader] ADD MEMBER [vnBobby]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SqlLink]
GO
GRANT CONNECT TO [bodbDownlineNet] AS [dbo]
GO
GRANT CONNECT TO [bodbDownlineNetView] AS [dbo]
GO
GRANT CONNECT TO [rdsvntrack] AS [dbo]
GO
GRANT CONNECT TO [repl_ap] AS [dbo]
GO
GRANT CONNECT TO [SqlLink] AS [dbo]
GO
GRANT CONNECT TO [vnBobby] AS [dbo]
GO
GRANT CONNECT TO [vnteam] AS [dbo]
GO
GRANT SHOWPLAN TO [vnteam] AS [dbo]
GO
GRANT VIEW DEFINITION TO [vnteam] AS [dbo]
GO
/****** Object:  UserDefinedTableType [dbo].[TVP_Bettrans]    Script Date: 5/25/2020 11:01:18 PM ******/
CREATE TYPE [dbo].[TVP_Bettrans] AS TABLE(
	[transid] [bigint] NOT NULL,
	[custid] [int] NULL,
	[transdate] [datetime] NULL,
	[oddsid] [int] NULL,
	[hdp1] [smallmoney] NULL,
	[hdp2] [smallmoney] NULL,
	[odds] [smallmoney] NULL,
	[stake] [money] NULL,
	[status] [nvarchar](10) NULL,
	[winlost] [money] NULL,
	[awinlost] [money] NULL,
	[mwinlost] [money] NULL,
	[playercomm] [money] NULL,
	[comm] [money] NULL,
	[acomm] [money] NULL,
	[apositiontaking] [smallmoney] NULL,
	[mpositiontaking] [smallmoney] NULL,
	[tpositiontaking] [smallmoney] NULL,
	[playerdiscount] [decimal](9, 8) NULL,
	[discount] [decimal](9, 8) NULL,
	[adiscount] [decimal](9, 8) NULL,
	[livehomescore] [smallint] NULL,
	[liveawayscore] [smallint] NULL,
	[liveindicator] [bit] NULL,
	[betteam] [nvarchar](10) NULL,
	[creator] [int] NULL,
	[refno] [bigint] NULL,
	[comstatus] [nvarchar](20) NULL,
	[winlostdate] [smalldatetime] NULL,
	[betfrom] [nvarchar](1) NULL,
	[betcheck] [nvarchar](50) NULL,
	[checktime] [datetime] NULL,
	[oddsspread] [money] NULL,
	[actualrate] [float] NULL,
	[matchid] [int] NULL,
	[recommend] [int] NULL,
	[mrecommend] [int] NULL,
	[ruben] [tinyint] NULL,
	[betid] [bigint] NULL,
	[statuswinlost] [tinyint] NULL,
	[modds] [smallmoney] NULL,
	[bettype] [smallint] NULL,
	[betdaqid] [bigint] NULL,
	[actual_stake] [money] NULL,
	[currency] [tinyint] NULL,
	[ip] [nvarchar](15) NULL,
	[transdesc] [nvarchar](1000) NULL,
	[sdiscount] [decimal](9, 8) NULL,
	[scomm] [money] NULL,
	[spositiontaking] [smallmoney] NULL,
	[swinlost] [money] NULL,
	[srecommend] [int] NULL,
	[Username] [nvarchar](50) NULL,
	[CurrencyName] [nvarchar](50) NULL,
	[virtualrate] [float] NULL,
	[oddstype] [tinyint] NULL,
	[statusID] [tinyint] NULL,
	[currency2] [tinyint] NULL,
	[balance] [money] NULL,
	[SecAcceptFlag] [bit] NULL,
	[transid2] [bigint] NULL,
	[recommdate] [datetime] NULL,
	[ExtraInfo] [varchar](1000) NULL,
	[WalletType] [tinyint] NULL,
	[BonusID] [int] NULL,
	[RefCode] [bigint] NULL,
	[SettlementTime] [datetime] NULL,
	[epositiontaking] [smallmoney] NULL,
	[ReplTstamp] [bigint] NULL,
	PRIMARY KEY CLUSTERED 
(
	[transid] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
GO
ALTER AUTHORIZATION ON TYPE::[dbo].[TVP_Bettrans] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON TYPE::[dbo].[TVP_Bettrans] TO [repl_ap] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[DBA_InsertReplLog]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DBA_InsertReplLog]
AS
/*
	2019/11/12@Vivi: new create
*/
BEGIN
	SET NOCOUNT ON;

	declare @transid_ost bigint, @transid_bodb02 bigint
	declare @transdate_ost datetime, @transdate_bodb02 datetime

	delete ReplLog where CreatedDate<dateadd(d,-7,getdate())

	select @transid_bodb02=max(transid) from bodb02.dbo.bettrans with (nolock)
	select @transdate_bodb02=transdate from bodb02.dbo.bettrans with (nolock) where transid=@transid_bodb02

	select @transid_ost=max(transid) from bettrans with (nolock)
	select @transdate_ost=transdate from bettrans with (nolock) where transid=@transid_ost

	insert into ReplLog (CreatedDate, MaxTransid_ost, MaxTransid_bodb02, TransDate_ost, TransDate_bodb02, LatencySec)
	select getdate(), @transid_ost, @transid_bodb02, @transdate_ost, @transdate_bodb02, datediff(second, @transdate_ost, @transdate_bodb02)
END


GO
ALTER AUTHORIZATION ON [dbo].[DBA_InsertReplLog] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[DBA_ReIndex]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DBA_ReIndex]
AS
-- Joe : reorganize all index with fragment > 30%
-- 20140428@Lukas: join sys.schemas to avoid hardcode [dbo] schemas
-- Steven : Test VERSION if Reorganize index deadlock then try again after 2 min
-- 20150417 @JoyChen :insert deadlock log to MonDB
-- 20150420 @JoyChen :Index Reorganize Fail insert log to send mail
-- 20150511 @JoyChen :Add DBName info in Message
-- 20150601 @JoyChen :if happen deadlock more than two times or other Unexpected error to  job fail
-- 20150609 @JoyChen :Add filter @@SERVERNAME ='DBBingoADMIN' and DB_NAME()='LiveCasinoAdmin' and tbl.name='GameLog'  not REORGANIZE
-- 20150622 @JoyChen :Add Error Log when happen other Unexpected error and deadlock Twice

declare @database_id int
select @database_id = db_id()

CREATE TABLE #CMDs (rn int PRIMARY KEY IDENTITY(1,1), cmd nvarchar(1000),rebuild_fg int,retry_fg int)			


INSERT INTO #CMDs (cmd,rebuild_fg,retry_fg)
SELECT
--'ALTER INDEX [' + i.name + '] ON [dbo].[' + tbl.name + '] REORGANIZE',0,0
'ALTER INDEX [' + i.name + '] ON [' + sch.name + '].[' + tbl.name + '] REORGANIZE',0,0
--fi.avg_fragmentation_in_percent AS [AverageFragmentation]
FROM
sys.tables AS tbl
INNER JOIN sys.schemas sch ON tbl.schema_id = sch.schema_id
INNER JOIN sys.indexes AS i ON (i.index_id > 0 and i.is_hypothetical = 0) AND (i.object_id=tbl.object_id)
INNER JOIN sys.dm_db_index_physical_stats(@database_id, NULL, NULL, NULL, 'LIMITED') AS fi ON fi.object_id=CAST(i.object_id AS int) AND fi.index_id=CAST(i.index_id AS int)
WHERE
	fi.avg_fragmentation_in_percent > 30
	AND tbl.name NOT LIKE 'BalanceRecord%'
	AND sch.name NOT LIKE 'DataSync%'
	AND case when @@SERVERNAME ='DBBingoADMIN' and DB_NAME()='LiveCasinoAdmin' and tbl.name='GameLog' then 0
	    else 1 end=1
ORDER BY tbl.name, i.type_desc

declare @rn int, @cmd nvarchar(1000)  


WHILE EXISTS(SELECT 1 FROM #CMDs WHERE rebuild_fg=0 or (rebuild_fg=1 and  retry_fg=1))
BEGIN
	BEGIN TRY
	    
		SELECT top 1 @rn=rn FROM #CMDs WHERE rebuild_fg=0 or (rebuild_fg=1 and  retry_fg=1)	
		SELECT @cmd = cmd FROM #CMDs WHERE rn = @rn	
		EXEC sp_executesql @cmd
		
		
	END TRY

	BEGIN CATCH
		
		DECLARE @ErrorMessage VARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;
	
		SELECT  @ErrorMessage = ERROR_MESSAGE(),
				@ErrorSeverity =ERROR_SEVERITY(),
				@ErrorState = ERROR_STATE();

        IF @ErrorMessage like'%deadlock%' 
			BEGIN 
			
				UPDATE #CMDs SET retry_fg=ISNULL(retry_fg,0)+1 WHERE rn = @rn	

				INSERT INTO MONDB.dbo.Mon_EventLogs
				( EventDT, ComputerName, SourceName, Type, Message, Cnt, IsAlert)
				SELECT GETDATE() as [EventTime]
					  ,@@SERVERNAME
					  ,DB_NAME() as [SourceName]
					  ,'ReIndex_deadlock' as [Type]
					  ,'@TableName : '+SUBSTRING(cmd,charindex('[dbo].[',cmd)+7,charindex('] REORGANIZE',cmd)-(charindex('[dbo].[',cmd)+7)) +' @IndexName : '+ SUBSTRING(cmd,14,charindex('] ON [dbo].[',cmd)-14)
					  ,0 as Cnt
					  ,'Y' as IsAlert---no send mail
				FROM #CMDs 
				WHERE rn = @rn	

				IF 1=isnull((SELECT 1 FROM #CMDs WHERE rn = @rn  and rebuild_fg=0 and  retry_fg=1),0)
					Begin		
						waitfor delay '00:02'
					end
				ELSE IF 1=isnull((SELECT 1 FROM #CMDs WHERE rn = @rn  and rebuild_fg=1 and  retry_fg=2),0)
					Begin
						INSERT INTO MONDB.dbo.Mon_EventLogs
						( EventDT, ComputerName, SourceName, Type, Message, Cnt, IsAlert)
						SELECT GETDATE() as [EventTime]
							  ,@@SERVERNAME
					          ,DB_NAME() as [SourceName]
					          ,'ReIndex_deadlock Twice' as [Type]
					          ,'@TableName : '+SUBSTRING(cmd,charindex('[dbo].[',cmd)+7,charindex('] REORGANIZE',cmd)-(charindex('[dbo].[',cmd)+7)) +' @IndexName : '+ SUBSTRING(cmd,14,charindex('] ON [dbo].[',cmd)-14)
					          ,0 as Cnt
					          ,'Y' as IsAlert---no send mail
					    FROM #CMDs 
				        WHERE rn = @rn	
				        
						RAISERROR (@ErrorMessage,@ErrorSeverity,@ErrorState)
						RETURN
					end
			END
		ELSE 
			BEGIN
				
				INSERT INTO MONDB.dbo.Mon_EventLogs
			    ( EventDT, ComputerName, SourceName, Type, Message, Cnt, IsAlert)
				SELECT GETDATE() as [EventTime]
					  ,@@SERVERNAME
			          ,DB_NAME() as [SourceName]
			          ,'ReIndex Error' as [Type]
			          ,'@TableName : '+SUBSTRING(cmd,charindex('[dbo].[',cmd)+7,charindex('] REORGANIZE',cmd)-(charindex('[dbo].[',cmd)+7)) +' @ErrorMessage : '+ @ErrorMessage
			          ,0 as Cnt
			          ,'Y' as IsAlert---no send mail
			    FROM #CMDs 
		        WHERE rn = @rn	 
	    
				RAISERROR (@ErrorMessage,@ErrorSeverity,@ErrorState)
				RETURN
			END	
					
	END  CATCH
	
	UPDATE #CMDs SET rebuild_fg=rebuild_fg+1 WHERE rn = @rn
	 
END

EXEC sp_updatestats
  --DBCC DROPCLEANBUFFERS	






GO
ALTER AUTHORIZATION ON [dbo].[DBA_ReIndex] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[Dot_DBCompare_Select_Constraint]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- 1.Constraint
CREATE PROCEDURE [dbo].[Dot_DBCompare_Select_Constraint]
AS
-- =============================================
-- Author: <Alex Kan>
-- Create date: <2016/10/21>
-- Description: <DB Compare Tool - get user defined constraints>
-- INPUT
-- =============================================
--20161021@AlexKan: create SP by sql statement
BEGIN
	SELECT OBJECT_NAME(c.constid) AS ConstraintName,OBJECT_NAME(c.id) AS TableName,com.[text]
	FROM sys.sysconstraints c WITH(NOLOCK)
	INNER JOIN sys.objects o WITH(NOLOCK) ON c.constid=o.object_id
	INNER JOIN sys.syscomments com WITH(NOLOCK) ON c.constid=com.id
	WHERE o.type ='C' AND is_ms_shipped=0
END


GO
ALTER AUTHORIZATION ON [dbo].[Dot_DBCompare_Select_Constraint] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[Dot_DBCompare_Select_DataType]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- 2.DataType
CREATE PROCEDURE [dbo].[Dot_DBCompare_Select_DataType]
AS
-- =============================================
-- Author: <Alex Kan>
-- Create date: <2016/11/11>
-- Description: <DB Compare Tool - check user-defined data type>
-- INPUT
-- =============================================
--20161111@AlexKan: create SP
BEGIN
	SELECT b.name + '.'+ a.name [TypeName],a.max_length,a.precision,a.scale,a.is_nullable
	FROM sys.types(NOLOCK) a
	INNER JOIN sys.schemas(NOLOCK) b ON a.schema_id = b.schema_id
	WHERE is_user_defined = 1 AND is_table_type = 0
END


GO
ALTER AUTHORIZATION ON [dbo].[Dot_DBCompare_Select_DataType] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[Dot_DBCompare_Select_FK]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- 3.FK
CREATE PROCEDURE [dbo].[Dot_DBCompare_Select_FK]
AS
-- =============================================
-- Author: <Alex Kan>
-- Create date: <2016/10/21>
-- Description: <DB Compare Tool - get user defined foreign keys>
-- INPUT
-- =============================================
--20161021@AlexKan: create SP by sql statement
BEGIN
	SELECT OBJECT_NAME(f.constraint_object_id) AS constraint_name, OBJECT_NAME(f.parent_object_id) AS table_name,
	COL_NAME(f.parent_object_id,f.parent_column_id) AS column_name, OBJECT_NAME(f.referenced_object_id) AS referenced_table_name,
	COL_NAME(f.referenced_object_id,f.referenced_column_id) AS referenced_column_name
	FROM sys.foreign_key_columns f WITH(NOLOCK)
END


GO
ALTER AUTHORIZATION ON [dbo].[Dot_DBCompare_Select_FK] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[Dot_DBCompare_Select_Function]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- 4.FN
CREATE PROCEDURE [dbo].[Dot_DBCompare_Select_Function]
AS
-- =============================================
-- Author: <Alex Kan>
-- Create date: <2016/10/21>
-- Description: <DB Compare Tool - get user defined functions>
-- INPUT
-- =============================================
--20161021@AlexKan: create SP by sql statement
--20161101@AlexKan: specify select columns
--20161107@AlexKan: modify SP by Leon's suggestion to get 3 level schema name
--20161109@AlexKan: remove order by
BEGIN
	SELECT b.name + '.'+ a.name [Name], [Type]
	FROM sys.objects(NOLOCK) a INNER JOIN sys.schemas(NOLOCK) b
	ON a.schema_id = b.schema_id
	WHERE a.type IN ('TF','FN','IF') AND a.is_ms_shipped=0
END


GO
ALTER AUTHORIZATION ON [dbo].[Dot_DBCompare_Select_Function] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[Dot_DBCompare_Select_Identity]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- 5.Identity
CREATE PROCEDURE [dbo].[Dot_DBCompare_Select_Identity]
AS
-- =============================================
-- Author: <Alex Kan>
-- Create date: <2016/10/21>
-- Description: <DB Compare Tool - get user defined identity column>
-- INPUT
-- =============================================
--20161021@AlexKan: create SP by sql statement
--20161104@AlexKan: modify SP by Leon's suggestion to filter system replication object
--20161107@AlexKan: add ANSI_NULLS and QUOTED_IDENTIFIER ON
--20161109@AlexKan: remove order by
BEGIN
	SELECT a.TABLE_NAME,a.COLUMN_NAME, IDENT_SEED(a.TABLE_NAME) [Seed],IDENT_INCR(a.TABLE_NAME) [Increment]
	FROM INFORMATION_SCHEMA.COLUMNS(NOLOCK) a INNER JOIN INFORMATION_SCHEMA.TABLES(NOLOCK) b
	ON a.TABLE_NAME = b.TABLE_NAME
	WHERE a.TABLE_SCHEMA = 'dbo' AND COLUMNPROPERTY(OBJECT_ID(a.TABLE_NAME),a.COLUMN_NAME, 'IsIdentity') = 1
	AND b.TABLE_TYPE = 'BASE TABLE'
END


GO
ALTER AUTHORIZATION ON [dbo].[Dot_DBCompare_Select_Identity] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[Dot_DBCompare_Select_PermByObject]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- 6.PermByObject
CREATE PROCEDURE [dbo].[Dot_DBCompare_Select_PermByObject]
	@ObjectName nvarchar(128)
AS
-- =============================================
-- Author: <Alex Kan>
-- Create date: <2016/10/21>
-- Description: <DB Compare Tool - get user defined permission>
-- INPUT
-- 	@ObjectName: object name
-- =============================================
--20161021@AlexKan: create SP by sql statement
--20161107@AlexKan: add ANSI_NULLS and QUOTED_IDENTIFIER ON
--20161109@AlexKan: remove order by
BEGIN
SELECT b.name + '.'+ a.name [object_Name],USER_NAME(c.grantee_principal_id) [user_name]
,c.permission_name 
FROM sys.objects(NOLOCK) a INNER JOIN sys.schemas(NOLOCK) b ON a.schema_id = b.schema_id
INNER JOIN sys.database_permissions(NOLOCK) c ON a.object_id = c.major_id
WHERE USER_NAME(grantee_principal_id) NOT IN ('dbo','public','guest')
  AND b.name + '.'+ a.name = @ObjectName
END


GO
ALTER AUTHORIZATION ON [dbo].[Dot_DBCompare_Select_PermByObject] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[Dot_DBCompare_Select_Repl]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- 13.Replication
CREATE PROCEDURE [dbo].[Dot_DBCompare_Select_Repl]
AS
-- =============================================
-- Author: <Alex Kan>
-- Create date: <2016/10/21>
-- Description: <DB Compare Tool - get user defined stored procedures>
-- INPUT
-- =============================================

BEGIN
SELECT b.name + '.'+ a.name [Name], [type] ,a.is_published,a.is_schema_published
 FROM sys.objects(NOLOCK) a INNER JOIN sys.schemas(NOLOCK) b  
 ON a.schema_id = b.schema_id  
 WHERE a.is_ms_shipped=0  AND (is_published = 1 OR is_schema_published = 1)
END


GO
ALTER AUTHORIZATION ON [dbo].[Dot_DBCompare_Select_Repl] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[Dot_DBCompare_Select_Repl_Article]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- 14.Replication Article
CREATE PROCEDURE [dbo].[Dot_DBCompare_Select_Repl_Article]
	@TableHTML [varchar](max) = ''
AS
-- =============================================
-- Author: <Alex Kan>
-- Create date: <2018/06/06>
-- Description: <DB Compare Tool - Get Repl Article>
-- INPUT
-- =============================================
BEGIN
SELECT p.name [Publication],t.name [Article]
 ,ISNULL(STUFF( 
       (SELECT ', ' + sc.name AS [text()] 
           FROM dbo.sysarticlecolumns (NOLOCK) tc
               INNER JOIN dbo.syscolumns (NOLOCK) sc
		    ON tc.colid = sc.colorder 
           WHERE tc.artid = t.artid AND t.objid = sc.id 
           ORDER BY sc.colorder
           FOR XML PATH('') 
       ), 1, 2, '' 
   ) ,'')  [Columns]
 FROM dbo.syspublications(NOLOCK) p
   INNER JOIN dbo.sysarticles(NOLOCK) t
 ON p.pubid = t.pubid 
END


GO
ALTER AUTHORIZATION ON [dbo].[Dot_DBCompare_Select_Repl_Article] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[Dot_DBCompare_Select_SP]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- 7.SP
CREATE PROCEDURE [dbo].[Dot_DBCompare_Select_SP]
AS
-- =============================================
-- Author: <Alex Kan>
-- Create date: <2016/10/21>
-- Description: <DB Compare Tool - get user defined stored procedures>
-- INPUT
-- =============================================
--20161021@AlexKan: create SP by sql statement
--20161101@AlexKan: specify select columns
BEGIN
	SELECT b.name + '.'+ a.name [Name], [type]
	FROM sys.objects(NOLOCK) a INNER JOIN sys.schemas(NOLOCK) b
	ON a.schema_id = b.schema_id
	WHERE a.type='P' AND a.is_ms_shipped=0
END


GO
ALTER AUTHORIZATION ON [dbo].[Dot_DBCompare_Select_SP] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[Dot_DBCompare_Select_Synonym]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- 8.Synonym
CREATE PROCEDURE [dbo].[Dot_DBCompare_Select_Synonym]
AS
-- =============================================
-- Author: <Alex Kan>
-- Create date: <2016/11/7>
-- Description: <DB Compare Tool - get user defined synonym>
-- INPUT
-- =============================================
--20161107@AlexKan: create SP by Leon's script
--20170106@AlexKan: remove is_published=0 and add type
BEGIN
	SELECT b.name + '.'+ a.name AS [Name], a.schema_id, a.base_object_name, [type]
	FROM sys.synonyms a WITH(NOLOCK) INNER JOIN sys.schemas b WITH(NOLOCK)
	ON a.schema_id = b.schema_id
	WHERE a.is_ms_shipped = 0
END


GO
ALTER AUTHORIZATION ON [dbo].[Dot_DBCompare_Select_Synonym] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[Dot_DBCompare_Select_Table]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- 9.Table
CREATE PROCEDURE [dbo].[Dot_DBCompare_Select_Table]
AS
-- =============================================
-- Author: <Alex Kan>
-- Create date: <2016/10/21>
-- Description: <DB Compare Tool - get user defined tables>
-- INPUT
-- =============================================
--20161021@AlexKan: create SP by sql statement
--20161101@AlexKan: specify select columns
BEGIN
	SELECT b.name + '.'+ a.name [Name], [type]
	FROM sys.objects(NOLOCK) a INNER JOIN sys.schemas(NOLOCK) b
	ON a.schema_id = b.schema_id
	WHERE a.type='U' AND a.is_ms_shipped=0
END


GO
ALTER AUTHORIZATION ON [dbo].[Dot_DBCompare_Select_Table] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[Dot_DBCompare_Select_TableType]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- 10.TableType
CREATE PROCEDURE [dbo].[Dot_DBCompare_Select_TableType]
AS
-- =============================================
-- Author: <Alex Kan>
-- Create date: <2016/11/11>
-- Description: <DB Compare Tool - check user-defined table type>
-- INPUT
-- =============================================
--20161111@AlexKan: create SP
BEGIN
	SELECT c.name + '.'+ a.name [TableType], b.name [Column], b.column_id, b.max_length, b.precision, b.scale, b.is_nullable
	FROM sys.table_types(NOLOCK) a
	INNER JOIN sys.columns(NOLOCK) b ON a.type_table_object_id = b.[object_id]
	INNER JOIN sys.schemas(NOLOCK) c 
	ON a.schema_id = c.schema_id
	WHERE is_user_defined = 1
END


GO
ALTER AUTHORIZATION ON [dbo].[Dot_DBCompare_Select_TableType] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[Dot_DBCompare_Select_Trigger]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- 11.Trigger
CREATE PROCEDURE [dbo].[Dot_DBCompare_Select_Trigger]
AS
-- =============================================
-- Author: <Alex Kan>
-- Create date: <2016/10/21>
-- Description: <DB Compare Tool - get user defined triggers>
-- INPUT
-- =============================================
--20161021@AlexKan: create SP by sql statement
--20161101@AlexKan: specify select columns
--20161128@LeonHsu: add is_disable column
BEGIN
	SELECT b.name + '.'+ a.name [Name], a.[type], c.is_disabled
	FROM sys.objects(NOLOCK) a
	INNER JOIN sys.schemas(NOLOCK) b ON a.schema_id = b.schema_id
	INNER JOIN sys.triggers(NOLOCK) c ON a.parent_object_id = c.parent_id AND a.object_id = c.object_id
	WHERE a.type='TR' AND a.is_ms_shipped=0
END


GO
ALTER AUTHORIZATION ON [dbo].[Dot_DBCompare_Select_Trigger] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[Dot_DBCompare_Select_View]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- 12.View
CREATE PROCEDURE [dbo].[Dot_DBCompare_Select_View]
AS
-- =============================================
-- Author: <Alex Kan>
-- Create date: <2016/10/21>
-- Description: <DB Compare Tool - get user defined views>
-- INPUT
-- =============================================
--20161021@AlexKan: create SP by sql statement
--20161101@AlexKan: specify select columns
BEGIN
	SELECT b.name + '.'+ a.name [Name], [type]
	FROM sys.objects(NOLOCK) a INNER JOIN sys.schemas(NOLOCK) b
	ON a.schema_id = b.schema_id
	WHERE a.type='V' AND a.is_ms_shipped=0
END


GO
ALTER AUTHORIZATION ON [dbo].[Dot_DBCompare_Select_View] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[Ost_BetList_TotalBet]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Ost_BetList_TotalBet]
	@CustId			INT,
	@RoleId			TINYINT,
	@BetType		INT,
	@MatchId		INT				= 0,
	@LiveIndicator	BIT				= 0,
	@BetTeam		NVARCHAR(20)	= ''
AS

/*
	Created: 20191025@Kos
	Task: Bet List Total Bets for DBOST Testing
	DB: DBOST.bodb_ost
	Revisions:
		- 20191025@Kos: Created [Redmine: #114231]
*/

BEGIN
	SET NOCOUNT ON;

	DECLARE @SportBettype TABLE (ProductID TINYINT, Bettype SMALLINT, EventType TINYINT)

	-- Check SP Version
	DECLARE @IsTest BIT = 0

	SELECT @IsTest = bodb02.dbo.f_CheckSPVersion(@@PROCID)

	-- Gather BettypeMatrix
	INSERT INTO @SportBettype
	SELECT DISTINCT ProductID, BetType, EventType
	FROM bodb02.dbo.f_SportBettypeMatrix_Sel(0, 0, 0, 2, '', '', @IsTest)
	WHERE (@BetType = 6 	AND BetType IN (6, 159, 161, 162, 126, 179, 181, 182))
		OR (@BetType = 14 	AND BetType IN (14, 127))
		OR (@BetType = 2 	AND BetType IN (2, 157))
		OR (@BetType = 15 	AND BetType IN (15, 167))
		OR BetType = @BetType 

	DECLARE @Data TABLE (
		SportType			SMALLINT,
		CustId				INT,
		Username			NVARCHAR(50),
		BetType				SMALLINT,
		LeagueId			INT,
		RefNo				BIGINT,
		TransId				BIGINT,
		BetId				BIGINT,
		MatchCode			NVARCHAR(50),
		EventDate			DATETIME,
		MatchId				INT,
		HomeId				INT,
		AwayId				INT,
		BetStatus			NVARCHAR(50),
		Hdp1				SMALLMONEY,
		Hdp2				SMALLMONEY,
		Odds				MONEY,
		MOdds				MONEY,
		Status				NVARCHAR(10),
		SettlementStatus	TINYINT,
		Stake				MONEY,
		Actual_Stake		MONEY,
		TransDate			DATETIME,
		BetTeam				NVARCHAR(20),
		APositionTaking		SMALLMONEY,
		MPositionTaking		SMALLMONEY,
		SPositionTaking		SMALLMONEY,
		TPositionTaking		SMALLMONEY,
		ADiscount			SMALLMONEY,
		MDiscount			SMALLMONEY,
		SDiscount			SMALLMONEY,
		LiveIndicator		BIT,
		LiveHomeScore		SMALLINT,
		LiveAwayScore		SMALLINT,
		Ip					NVARCHAR(15),
		IsNeutral			BIT,
		OddsType			TINYINT,
		ShowTime			NVARCHAR(50),
		ComStatus			NVARCHAR(20),
		BetCheck			NVARCHAR(50),
		ExtraInfo			VARCHAR(1000),
		ProductId			TINYINT,
		EventType			TINYINT
	)

	IF @RoleId = 2
	BEGIN
		INSERT INTO @Data (
			CustId,
			Username,
			BetType,
			RefNo,
			TransId,
			BetId,
			MatchId,
			Hdp1,
			Hdp2,
			Odds,
			MOdds,
			Status,
			Stake,
			Actual_Stake,
			TransDate,
			BetTeam,
			APositionTaking,
			MPositionTaking,
			SPositionTaking,
			TPositionTaking,
			ADiscount,
			MDiscount,
			SDiscount,
			LiveIndicator,
			LiveHomeScore,
			LiveAwayScore,
			Ip,
			OddsType,
			ComStatus,
			BetCheck,
			ExtraInfo,
			ProductId,
			EventType)
		SELECT
			b.custid,
			b.Username,
			b.bettype,
			b.refno,
			b.transid,
			b.betid,
			b.matchid,
			b.hdp1,
			b.hdp2,
			b.odds,
			b.modds,
			CASE
				WHEN b.status = 'running' AND ISNULL(b.SecAcceptFlag, 0) = 1 AND ISNULL(b.checktime, CURRENT_TIMESTAMP) > CURRENT_TIMESTAMP THEN 'waiting'
				ELSE b.status
			END AS status,
			b.stake,
			b.actual_stake,
			b.transdate,
			b.betteam,
			b.apositiontaking,
			b.mpositiontaking,
			b.spositiontaking,
			b.tpositiontaking,
			b.discount AS Adiscount,
			b.adiscount AS Mdiscount,
			b.sdiscount AS Sdiscount,
			b.liveindicator,
			b.livehomescore,
			b.liveawayscore,
			b.ip,
			b.oddstype,
			CASE WHEN b.comstatus = '1' THEN '1' ELSE '0' END AS comstatus,
			b.betcheck,
			ISNULL(b.ExtraInfo, '') AS ExtraInfo,
			bt.productid,
			bt.eventtype
		FROM dbo.bettrans AS b WITH (NOLOCK, INDEX = IX_betrunning_recommend)
			INNER JOIN @SportBettype AS bt ON b.bettype = bt.bettype
		WHERE b.recommend = @CustId
			AND b.statusID IN (0, 1)
			AND b.matchid = @MatchId
	END
	
	IF @RoleId = 3
	BEGIN
		INSERT INTO @Data (
			CustId,
			Username,
			BetType,
			RefNo,
			TransId,
			BetId,
			MatchId,
			Hdp1,
			Hdp2,
			Odds,
			MOdds,
			Status,
			Stake,
			Actual_Stake,
			TransDate,
			BetTeam,
			APositionTaking,
			MPositionTaking,
			SPositionTaking,
			TPositionTaking,
			ADiscount,
			MDiscount,
			SDiscount,
			LiveIndicator,
			LiveHomeScore,
			LiveAwayScore,
			Ip,
			OddsType,
			ComStatus,
			BetCheck,
			ExtraInfo,
			ProductId,
			EventType)
		SELECT
			b.custid,
			b.Username,
			b.bettype,
			b.refno,
			b.transid,
			b.betid,
			b.matchid,
			b.hdp1,
			b.hdp2,
			b.odds,
			b.modds,
			CASE
				WHEN b.status = 'running' AND ISNULL(b.SecAcceptFlag, 0) = 1 AND ISNULL(b.checktime, CURRENT_TIMESTAMP) > CURRENT_TIMESTAMP THEN 'waiting'
				ELSE b.status
			END AS status,
			b.stake,
			b.actual_stake,
			b.transdate,
			b.betteam,
			b.apositiontaking,
			b.mpositiontaking,
			b.spositiontaking,
			b.tpositiontaking,
			b.discount AS Adiscount,
			b.adiscount AS Mdiscount,
			b.sdiscount AS Sdiscount,
			b.liveindicator,
			b.livehomescore,
			b.liveawayscore,
			b.ip,
			b.oddstype,
			CASE WHEN b.comstatus = '1' THEN '1' ELSE '0' END AS comstatus,
			b.betcheck,
			ISNULL(b.ExtraInfo, '') AS ExtraInfo,
			bt.productid,
			bt.eventtype
		FROM dbo.bettrans AS b WITH (NOLOCK, INDEX = IX_betrunning_mrecommend)
			INNER JOIN @SportBettype AS bt ON b.bettype = bt.bettype
		WHERE b.mrecommend = @CustId
			AND b.statusID IN (0, 1)
			AND b.matchid = @MatchId
	END
	
	IF @RoleId = 4
	BEGIN
		INSERT INTO @Data (
			CustId,
			Username,
			BetType,
			RefNo,
			TransId,
			BetId,
			MatchId,
			Hdp1,
			Hdp2,
			Odds,
			MOdds,
			Status,
			Stake,
			Actual_Stake,
			TransDate,
			BetTeam,
			APositionTaking,
			MPositionTaking,
			SPositionTaking,
			TPositionTaking,
			ADiscount,
			MDiscount,
			SDiscount,
			LiveIndicator,
			LiveHomeScore,
			LiveAwayScore,
			Ip,
			OddsType,
			ComStatus,
			BetCheck,
			ExtraInfo,
			ProductId,
			EventType)
		SELECT
			b.custid,
			b.Username,
			b.bettype,
			b.refno,
			b.transid,
			b.betid,
			b.matchid,
			b.hdp1,
			b.hdp2,
			b.odds,
			b.modds,
			CASE
				WHEN b.status = 'running' AND ISNULL(b.SecAcceptFlag, 0) = 1 AND ISNULL(b.checktime, CURRENT_TIMESTAMP) > CURRENT_TIMESTAMP THEN 'waiting'
				ELSE b.status
			END AS status,
			b.stake,
			b.actual_stake,
			b.transdate,
			b.betteam,
			b.apositiontaking,
			b.mpositiontaking,
			b.spositiontaking,
			b.tpositiontaking,
			b.discount AS Adiscount,
			b.adiscount AS Mdiscount,
			b.sdiscount AS Sdiscount,
			b.liveindicator,
			b.livehomescore,
			b.liveawayscore,
			b.ip,
			b.oddstype,
			CASE WHEN b.comstatus = '1' THEN '1' ELSE '0' END AS comstatus,
			b.betcheck,
			ISNULL(b.ExtraInfo, '') AS ExtraInfo,
			bt.productid,
			bt.eventtype
		FROM dbo.bettrans AS b WITH (NOLOCK, INDEX = IX_betrunning_srecommend)
			INNER JOIN @SportBettype AS bt ON b.bettype = bt.bettype
		WHERE b.srecommend = @CustId
			AND b.statusID IN (0, 1)
			AND b.matchid = @MatchId
	END

	IF @LiveIndicator IS NOT NULL OR @BetTeam <> ''
	BEGIN
		DELETE b
		FROM @Data AS b
			INNER JOIN @SportBettype AS bt ON b.BetType = bt.Bettype
		WHERE ( @LiveIndicator IS NOT NULL
				AND bt.ProductID = 3
				AND b.LiveIndicator <> @LiveIndicator)
			OR ( @BetTeam <> '' 
				AND bt.ProductID = 3
				AND b.BetTeam <> @BetTeam )
	END

	UPDATE b
	SET
		SportType	= m.sporttype,
		LeagueId	= m.leagueid,
		MatchCode	= m.matchcode,
		EventDate	= m.GlobalShowTime,
		HomeId		= m.homeid,
		AwayId		= m.awayid,
		BetStatus	= m.betstatus,
		SettlementStatus = ISNULL(m.SettlementStatus, 0),
		ShowTime	= m.showtime,
		IsNeutral	= m.IsNeutral
	FROM @Data AS b
		INNER JOIN bodb02.dbo.match AS m WITH (NOLOCK) ON b.MatchId = m.matchid
	WHERE b.EventType = 1

	UPDATE b
	SET
		SportType = l.sporttype,
		LeagueId = m.leagueid,
		MatchCode = m.matchcode,
		HomeId = m.teamid,
		AwayId = 0,
		ShowTime = ''
	FROM @Data AS b
		INNER JOIN bodb02.dbo.outright AS m WITH (NOLOCK) ON b.MatchId = m.orid
		INNER JOIN bodb02.dbo.League AS l WITH (NOLOCK) ON m.leagueid = l.leagueid
	WHERE b.EventType = 2

	SELECT * FROM @Data
	ORDER BY TransId DESC

	DECLARE @BettransDetail TABLE (
		RefNo			BIGINT,
		Odds			MONEY,
		Stake			MONEY,
		Status			NVARCHAR(10),
		APositionTaking	SMALLMONEY,
		MPositionTaking	SMALLMONEY,
		SPositionTaking	SMALLMONEY,
		BetType			SMALLINT,
		BetTeam			NVARCHAR(10),
		TransDesc		VARCHAR(300)
	)

	SELECT * FROM @BettransDetail
END

GO
ALTER AUTHORIZATION ON [dbo].[Ost_BetList_TotalBet] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[Ost_BetList_TotalBet] TO [bodbDownlineNet] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Ost_BetList_TotalBet] TO [bodbDownlineNetView] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Ost_Forecast_SelByLeague_Ag]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Ost_Forecast_SelByLeague_Ag]
	@BaseOffsetHDP int,
	@BaseOffsetOU int,
	@BaseOffsetHTHDP int,
	@BaseOffsetHTOU int,
	@LeagueID int,
	@Recommend int,
	@Language varchar(2)
AS
/*
	Created:20191021@Bobby
	Task: New Forecast at Agent Site 
	DB: DBOST.bodb_ost
	Original:DB042.bodb02.Age_Forecast_SelByLeague_Ag
	
	Revisions: 
		- 20191021@Bobby: Initialize [Redmine:114231] 
		
*/
BEGIN
	SET NOCOUNT ON
	
	select R.MatchID,
		m.homeid,
		m.awayid,	
		R.liveindicator, isnull(M.LiveHomeScore, 0) as LiveHomeScore, isnull(M.LiveAwayScore, 0) as LiveAwayScore,M.ShowTime,M.MatchCode,

		sum(case when R.bettype = 1--= @BettypeHDP 
		and R.FOffset = -1 then case R.WinLostStatus when 1 then R.AwayLose/2 when 2 then R.AwayLose when 3 then R.HomeLose/2 when 4 then R.HomeLose else 0 end else 0 end)  as WinLost_M1_HDP,
		sum(case when R.bettype = 1--= @BettypeHDP 
		and R.FOffset = 0 then case R.WinLostStatus when 1 then R.AwayLose/2 when 2 then R.AwayLose when 3 then R.HomeLose/2 when 4 then R.HomeLose else 0 end else 0 end)  as WinLost_0_HDP,
		sum(case when R.bettype = 1--= @BettypeHDP 
		and R.FOffset = 1 then case R.WinLostStatus when 1 then R.AwayLose/2 when 2 then R.AwayLose when 3 then R.HomeLose/2 when 4 then R.HomeLose else 0 end else 0 end)  as WinLost_1_HDP,

		sum(case when R.bettype = 3-- = @BettypeOU 
		and R.FOffset = 0 then case R.WinLostStatus when 1 then R.AwayLose/2 when 2 then R.AwayLose when 3 then R.HomeLose/2 when 4 then R.HomeLose else 0 end end)  as WinLost_0_OU,
		sum(case when R.bettype = 3-- = @BettypeOU 
		and R.FOffset = 1 then case R.WinLostStatus when 1 then R.AwayLose/2 when 2 then R.AwayLose when 3 then R.HomeLose/2 when 4 then R.HomeLose else 0 end end)  as WinLost_1_OU,
		sum(case when R.bettype = 3-- = @BettypeOU 
		and R.FOffset = 2 then case R.WinLostStatus when 1 then R.AwayLose/2 when 2 then R.AwayLose when 3 then R.HomeLose/2 when 4 then R.HomeLose else 0 end end)  as WinLost_2_OU,

		sum(case when R.bettype = 7--= @BettypeHTHDP 
		and R.FOffset = -1 then case R.WinLostStatus when 1 then R.AwayLose/2 when 2 then R.AwayLose when 3 then R.HomeLose/2 when 4 then R.HomeLose else 0 end else 0 end)  as WinLost_M1_HTHDP,
		sum(case when R.bettype = 7--= @BettypeHTHDP 
		and R.FOffset = 0 then case R.WinLostStatus when 1 then R.AwayLose/2 when 2 then R.AwayLose when 3 then R.HomeLose/2 when 4 then R.HomeLose else 0 end else 0 end)  as WinLost_0_HTHDP,
		sum(case when R.bettype = 7--= @BettypeHTHDP 
		and R.FOffset = 1 then case R.WinLostStatus when 1 then R.AwayLose/2 when 2 then R.AwayLose when 3 then R.HomeLose/2 when 4 then R.HomeLose else 0 end else 0 end)  as WinLost_1_HTHDP,

		sum(case when R.bettype = 8--= @BettypeHTOU 
		and R.FOffset = 0 then case R.WinLostStatus when 1 then R.AwayLose/2 when 2 then R.AwayLose when 3 then R.HomeLose/2 when 4 then R.HomeLose else 0 end end)  as WinLost_0_HTOU, 	
		sum(case when R.bettype = 8--= @BettypeHTOU 
		and R.FOffset = 1 then case R.WinLostStatus when 1 then R.AwayLose/2 when 2 then R.AwayLose when 3 then R.HomeLose/2 when 4 then R.HomeLose else 0 end end)  as WinLost_1_HTOU,
		sum(case when R.bettype = 8--= @BettypeHTOU 
		and R.FOffset = 2 then case R.WinLostStatus when 1 then R.AwayLose/2 when 2 then R.AwayLose when 3 then R.HomeLose/2 when 4 then R.HomeLose else 0 end end)  as WinLost_2_HTOU,
		
		isnull(m.isNeutral, CONVERT(BIT,0)) as IsNeutral
	from 	
		(
			Select 
				1 as ForecastID, F.bettype, liveindicator, '' as status, F.offset, 
				homelose, awaylose,
				BaseOffset + ForecastOffset.offset as BaseOffset, 
				case when F.BetType in (1,7) THEN--(@BetTypeHDP,@BetTypeHTHDP) then
					case 
						when F.VScoreHDP + BaseOffset + ForecastOffset.offset - F.Offset > 0 and F.VScoreHDP + BaseOffset + ForecastOffset.offset - F.Offset <0.5 then 1
						when F.VScoreHDP + BaseOffset + ForecastOffset.offset - F.Offset > 0.25 then 2
						when F.VScoreHDP + BaseOffset + ForecastOffset.offset - F.Offset < 0 and F.VScoreHDP + BaseOffset + ForecastOffset.offset - F.Offset >-0.5 then 3
						when F.VScoreHDP + BaseOffset + ForecastOffset.offset - F.Offset < -0.25 then 4
						when F.VScoreHDP + BaseOffset + ForecastOffset.offset - F.Offset =0 then 6
						else 5
					end
				when F.BetType in (3,8) THEN--(@BetTypeOU,@BetTypeHTOU) then
					case 
						when F.VScoreOU + BaseOffset + ForecastOffset.offset - F.Offset = 0.25 then 1
						when F.VScoreOU + BaseOffset + ForecastOffset.offset - F.Offset > 0.25 then 2
						when F.VScoreOU + BaseOffset + ForecastOffset.offset - F.Offset = -0.25 then 3
						when F.VScoreOU + BaseOffset + ForecastOffset.offset - F.Offset < -0.25 then 4
						when F.VScoreHDP + BaseOffset + ForecastOffset.offset - F.Offset =0 then 6
						else 5
					end
				end as WinlostStatus,
				F.MatchID, ForecastOffset.Offset as fOffset
			from (
					select  
						x.bettype AS bettype, x.liveindicator, 
						-x.hdp + score AS offset, 
						sum((x.homewin - x.awaylose) ) as AwayLose,
						sum((x.awaywin - x.homelose) ) as HomeLose,
						@BaseOffsetHDP AS BaseOffset,
						MatchID,
						VScoreHDP,
						VScoreOU
					from 
						(
							select 
								b.bettype,
								b.currency, b.hdp2 - b.hdp1 as hdp, b.livehomescore - b.liveawayscore AS score, b.liveindicator,
								sum(case when betteam='h' then (case when odds < 0 then 1 else odds end) * stake * (b.apositiontaking) else 0 end) AS homewin,
								sum(case when betteam='a' then (case when odds < 0 then 1 else odds end) * stake * (b.apositiontaking) else 0 end) AS awaywin,
								sum(case when betteam='h' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.apositiontaking) else 0 end) AS homelose,
								sum(case when betteam='a' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.apositiontaking) else 0 end) AS awaylose,
								M.MatchID,
								isnull(m.livehomescore, 0) - isnull(m.liveawayscore, 0) as VScoreHDP,
								isnull(m.livehomescore, 0) + isnull(m.liveawayscore, 0) as VScoreOU
							from 
								--bettrans AS b WITH (NOLOCK, INDEX = IX_betrunning_recommend)
								dbo.Ost_f_bettrans_running() AS b
								inner join Match as M with (NOLOCK) on b.MatchID = M.MatchID
								inner join League as L with (NOLOCK) on M.LeagueID = L.LeagueID and L.LeagueID = @LeagueID
							where 
								b.recommend = @recommend
								and b.bettype = 1--=@BetTypeHDP
								and b.statusID in (0,1) 
								
							group by 
								b.bettype,
								b.currency, b.hdp2 - b.hdp1, b.livehomescore - b.liveawayscore, b.liveindicator, M.MatchID, m.livehomescore, m.liveawayscore

							union all
							select 
								b.bettype,
								b.currency, b.hdp2 - b.hdp1 as hdp, b.livehomescore - b.liveawayscore AS score, b.liveindicator,
								sum(case when betteam='h' then (case when odds < 0 then 1 else odds end) * stake * (b.apositiontaking) else 0 end) AS homewin,
								sum(case when betteam='a' then (case when odds < 0 then 1 else odds end) * stake * (b.apositiontaking) else 0 end) AS awaywin,
								sum(case when betteam='h' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.apositiontaking) else 0 end) AS homelose,
								sum(case when betteam='a' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.apositiontaking) else 0 end) AS awaylose,
								M.MatchID,
								isnull(o.livehomescore, 0) - isnull(o.liveawayscore, 0) as VScoreHDP,
								isnull(o.livehomescore, 0) + isnull(o.liveawayscore, 0) as VScoreOU
							from 
								--bettrans AS b WITH (NOLOCK, INDEX = IX_betrunning_recommend)
								dbo.Ost_f_bettrans_running() AS b
								inner join Match as M with (NOLOCK) on b.MatchID = M.MatchID
								inner join OddsES as O with (NOLOCK) on b.OddsID = O.OddsID
								inner join League as L with (NOLOCK) on M.LeagueID = L.LeagueID and L.LeagueID = @LeagueID
							where 
								b.recommend = @recommend
								and b.bettype = 1
								and b.statusID in (0,1) 
							group by 
								b.bettype,
								b.currency, b.hdp2 - b.hdp1, b.livehomescore - b.liveawayscore, b.liveindicator, M.MatchID, o.livehomescore, o.liveawayscore
						) AS x 
					group by 
						-x.hdp + score, x.liveindicator, MatchID, VScoreHDP, VScoreOU,x.bettype
					
					UNION ALL
					select 
						x.bettype AS bettype, x.liveindicator, 
						x.hdp + score AS offset, 
						sum((x.homewin - x.awaylose)) as AwayLose,
						sum((x.awaywin - x.homelose)) as HomeLose,
						@BaseOffsetOU AS BaseOffset,
						MatchID,
						VScoreHDP,
						VScoreOU
					from 
							(
							select 
								b.liveindicator,  
								b.bettype,
								b.currency, b.hdp1 as hdp, 0 AS score,
								sum(case when betteam='h' then (case when odds < 0 then 1 else odds end) * stake * (b.apositiontaking) else 0 end) AS homewin,
								sum(case when betteam='a' then (case when odds < 0 then 1 else odds end) * stake * (b.apositiontaking) else 0 end) AS awaywin,
								sum(case when betteam='h' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.apositiontaking) else 0 end) AS homelose,
								sum(case when betteam='a' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.apositiontaking) else 0 end) AS awaylose,
								M.MatchID,
								isnull(m.livehomescore, 0) - isnull(m.liveawayscore, 0) as VScoreHDP,
								isnull(m.livehomescore, 0) + isnull(m.liveawayscore, 0) as VScoreOU
							from 
								--bettrans AS b with (nolock)  							
								dbo.Ost_f_bettrans_running() AS b
								inner join Match as M with (NOLOCK) on b.MatchID = M.MatchID and M.EventStatus = 'running'
								inner join League as L with (NOLOCK) on M.LeagueID = L.LeagueID and L.LeagueID = @LeagueID
							where 
								b.recommend = @recommend
								and b.bettype = 3--=@BetTypeOU
								and b.statusID in (0,1) 
							group by 
								b.bettype,
								b.currency, b.hdp1, b.liveindicator, M.MatchID, m.livehomescore, m.liveawayscore

							union all
							select 
								b.liveindicator,  
								b.bettype,
								b.currency, b.hdp1 as hdp, 0 AS score,
								sum(case when betteam='h' then (case when odds < 0 then 1 else odds end) * stake * (b.apositiontaking) else 0 end) AS homewin,
								sum(case when betteam='a' then (case when odds < 0 then 1 else odds end) * stake * (b.apositiontaking) else 0 end) AS awaywin,
								sum(case when betteam='h' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.apositiontaking) else 0 end) AS homelose,
								sum(case when betteam='a' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.apositiontaking) else 0 end) AS awaylose,
								M.MatchID,
								isnull(o.livehomescore, 0) - isnull(o.liveawayscore, 0) as VScoreHDP,
								isnull(o.livehomescore, 0) + isnull(o.liveawayscore, 0) as VScoreOU
							from 
								--bettrans AS b with (nolock)  							
								dbo.Ost_f_bettrans_running() AS b
								inner join Match as M with (NOLOCK) on b.MatchID = M.MatchID and M.EventStatus = 'running'
								inner join OddsES as O with (NOLOCK) on b.OddsID = O.OddsID
								inner join League as L with (NOLOCK) on M.LeagueID = L.LeagueID and L.LeagueID = @LeagueID
							where 
								b.recommend = @recommend
								and b.bettype = 3
								and b.statusID in (0,1) 
							group by 
								b.bettype,
								b.currency, b.hdp1, b.liveindicator, M.MatchID, o.livehomescore, o.liveawayscore
						) AS x 
					group by 
						liveindicator, x.score, x.hdp, MatchID, VScoreHDP, VScoreOU,x.bettype
	--FIRST HALF HERE----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
					UNION ALL
					select  
						x.bettype AS bettype, x.liveindicator, 
						-x.hdp + score AS offset, 
						sum((x.homewin - x.awaylose) ) as AwayLose,
						sum((x.awaywin - x.homelose) ) as HomeLose,
						@BaseOffsetHTHDP AS BaseOffset,
						MatchID,
						VScoreHDP,
						VScoreOU
					from 
						(
							select 
								b.bettype,
								b.currency, b.hdp2 - b.hdp1 hdp, b.livehomescore - b.liveawayscore AS score, b.liveindicator,
								sum(case when betteam='h' then (case when odds < 0 then 1 else odds end) * stake * (b.apositiontaking) else 0 end) AS homewin,
								sum(case when betteam='a' then (case when odds < 0 then 1 else odds end) * stake * (b.apositiontaking) else 0 end) AS awaywin,
								sum(case when betteam='h' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.apositiontaking) else 0 end) AS homelose,
								sum(case when betteam='a' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.apositiontaking) else 0 end) AS awaylose,
								M.MatchID,
								isnull(m.livehomescore, 0) - isnull(m.liveawayscore, 0) as VScoreHDP,
								isnull(m.livehomescore, 0) + isnull(m.liveawayscore, 0) as VScoreOU
							from 
								--bettrans AS b WITH (NOLOCK, INDEX = IX_betrunning_recommend) 
								dbo.Ost_f_bettrans_running() AS b
								inner join Match as M with (NOLOCK) on b.MatchID = M.MatchID
								inner join League as L with (NOLOCK) on M.LeagueID = L.LeagueID and L.LeagueID = @LeagueID
							where 
								b.recommend = @recommend
								and b.bettype = 7--=@BetTypeHTHDP
								and b.statusID in (0,1) 
							group by 
					--			status, 
								b.bettype,
								b.currency, b.hdp2 - b.hdp1, b.livehomescore - b.liveawayscore, b.liveindicator, M.MatchID, m.livehomescore, m.liveawayscore
							
							UNION ALL
							select 
								b.bettype,
								b.currency, b.hdp2 - b.hdp1 hdp, b.livehomescore - b.liveawayscore AS score, b.liveindicator,
								sum(case when betteam='h' then (case when odds < 0 then 1 else odds end) * stake * (b.apositiontaking) else 0 end) AS homewin,
								sum(case when betteam='a' then (case when odds < 0 then 1 else odds end) * stake * (b.apositiontaking) else 0 end) AS awaywin,
								sum(case when betteam='h' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.apositiontaking) else 0 end) AS homelose,
								sum(case when betteam='a' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.apositiontaking) else 0 end) AS awaylose,
								M.MatchID,
								isnull(o.livehomescore, 0) - isnull(o.liveawayscore, 0) as VScoreHDP,
								isnull(o.livehomescore, 0) + isnull(o.liveawayscore, 0) as VScoreOU
							from 
								--bettrans AS b WITH (NOLOCK, INDEX = IX_betrunning_recommend) 
								dbo.Ost_f_bettrans_running() AS b
								inner join Match as M with (NOLOCK) on b.MatchID = M.MatchID
								inner join OddsES as O with (NOLOCK) on b.OddsID = O.OddsID
								inner join League as L with (NOLOCK) on M.LeagueID = L.LeagueID and L.LeagueID = @LeagueID
							where 
								b.recommend = @recommend
								and b.bettype = 7
								and b.statusID in (0,1) 
							group by 
								b.bettype,
								b.currency, b.hdp2 - b.hdp1, b.livehomescore - b.liveawayscore, b.liveindicator, M.MatchID, o.livehomescore, o.liveawayscore
						) AS x 
					group by 
						-x.hdp + score, x.liveindicator, MatchID, VScoreHDP, VScoreOU,x.bettype
					
					UNION ALL
					select 
						x.bettype AS bettype, x.liveindicator, 
						x.hdp + score AS offset, 
						sum((x.homewin - x.awaylose)) as AwayLose,
						sum((x.awaywin - x.homelose)) as HomeLose,
						@BaseOffsetHTOU AS BaseOffset,
						MatchID,
						VScoreHDP,
						VScoreOU
					from 
							(
							select 
								b.liveindicator,  
								b.bettype,
								b.currency, b.hdp1 as hdp, 0 AS score,
								sum(case when betteam='h' then (case when odds < 0 then 1 else odds end) * stake * (b.apositiontaking) else 0 end) AS homewin,
								sum(case when betteam='a' then (case when odds < 0 then 1 else odds end) * stake * (b.apositiontaking) else 0 end) AS awaywin,
								sum(case when betteam='h' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.apositiontaking) else 0 end) AS homelose,
								sum(case when betteam='a' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.apositiontaking) else 0 end) AS awaylose,
								M.MatchID,
								isnull(m.livehomescore, 0) - isnull(m.liveawayscore, 0) as VScoreHDP,
								isnull(m.livehomescore, 0) + isnull(m.liveawayscore, 0) as VScoreOU
							from 
								--bettrans AS b WITH (NOLOCK, INDEX = IX_betrunning_recommend)  							
								dbo.Ost_f_bettrans_running() AS b
								inner join Match as M with (NOLOCK) on b.MatchID = M.MatchID and M.EventStatus = 'running'
								inner join League as L with (NOLOCK) on M.LeagueID = L.LeagueID and L.LeagueID = @LeagueID
							where 
								b.recommend = @recommend
								and b.bettype = 8--=@BetTypeHTOU
								and b.statusID in (0,1) 
							group by 
								b.bettype,
								b.currency, b.hdp1, b.liveindicator, M.MatchID, m.livehomescore, m.liveawayscore
							
							UNION ALL
							select 
								b.liveindicator,  
								b.bettype,
								b.currency, b.hdp1 as hdp, 0 AS score,
								sum(case when betteam='h' then (case when odds < 0 then 1 else odds end) * stake * (b.apositiontaking) else 0 end) AS homewin,
								sum(case when betteam='a' then (case when odds < 0 then 1 else odds end) * stake * (b.apositiontaking) else 0 end) AS awaywin,
								sum(case when betteam='h' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.apositiontaking) else 0 end) AS homelose,
								sum(case when betteam='a' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.apositiontaking) else 0 end) AS awaylose,
								M.MatchID,
								isnull(o.livehomescore, 0) - isnull(o.liveawayscore, 0) as VScoreHDP,
								isnull(o.livehomescore, 0) + isnull(o.liveawayscore, 0) as VScoreOU
							from 
								--bettrans AS b WITH (NOLOCK, INDEX = IX_betrunning_recommend)  							
								dbo.Ost_f_bettrans_running() AS b
								inner join Match as M with (NOLOCK) on b.MatchID = M.MatchID and M.EventStatus = 'running'
								inner join OddsES as O with (NOLOCK) on b.OddsID = O.OddsID
								inner join League as L with (NOLOCK) on M.LeagueID = L.LeagueID and L.LeagueID = @LeagueID
							where 
								b.recommend = @recommend
								and b.bettype = 8
								and b.statusID in (0,1) 
							group by 
								b.bettype,
								b.currency, b.hdp1, b.liveindicator, M.MatchID, o.livehomescore, o.liveawayscore
						) AS x 
					group by 
						liveindicator, x.score, x.hdp, MatchID, VScoreHDP, VScoreOU,x.bettype
			
				) as F 
				INNER JOIN 	(
							select 1 as bettype,-1 as offset union all
							select 1 as bettype,0 as offset union all
							select 1 as bettype,1 as offset union all
							select 3 as bettype,0 as offset union all
							select 3 as bettype,1 as offset union all
							select 3 as bettype,2 as offset union all
							select 7 as bettype,-1 as offset union all
							select 7 as bettype,0 as offset union all
							select 7 as bettype,1 as offset union all
							select 8 as bettype,0 as offset union all
							select 8 as bettype,1 as offset union all
							select 8 as bettype,2 as offset
						) as ForecastOffset on F.bettype = ForecastOffset.bettype	
		) as R 
		INNER JOIN Match as M with (NOLOCK) on R.MatchID = M.MatchID	
	group by R.MatchID,  R.liveindicator, 
		m.homeid,
		m.awayid,	
		M.LiveHomeScore, M.LiveAwayScore, 	
		M.ShowTime, M.MatchCode,
		m.isNeutral
	order by R.LiveIndicator desc, M.MatchCode
END	

GO
ALTER AUTHORIZATION ON [dbo].[Ost_Forecast_SelByLeague_Ag] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[Ost_Forecast_SelByLeague_Ag] TO [bodbDownlineNet] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Ost_Forecast_SelByLeague_Ag] TO [bodbDownlineNetView] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Ost_Forecast_SelByLeague_MAg]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Ost_Forecast_SelByLeague_MAg]
	@BaseOffsetHDP int,
	@BaseOffsetOU int,
	@BaseOffsetHTHDP int,
	@BaseOffsetHTOU int,
	@LeagueID int,
	@MRecommend int,
	@Language varchar(2)
AS
/*
	Created:20191021@Bobby
	Task: New Forecast at Agent Site 
	DB: DBOST.bodb_ost
	Original:DB042.bodb02.Age_Forecast_SelByLeague_MAg
	
	Revisions: 
		- 20191021@Bobby: Initialize [Redmine:114231] 
		
*/
BEGIN

	SET NOCOUNT ON
	select R.MatchID,
		m.homeid,
		m.awayid,	
		R.liveindicator, isnull(M.LiveHomeScore, 0) as livehomescore, isnull(M.LiveAwayScore, 0) as liveawayscore,M.ShowTime,M.MatchCode,

		sum(case when R.bettype = 1--= @BettypeHDP 
		and R.FOffset = -1 then case R.WinLostStatus when 1 then R.AwayLose/2 when 2 then R.AwayLose when 3 then R.HomeLose/2 when 4 then R.HomeLose else 0 end else 0 end)  as WinLost_M1_HDP,
		sum(case when R.bettype = 1--= @BettypeHDP 
		and R.FOffset = 0 then case R.WinLostStatus when 1 then R.AwayLose/2 when 2 then R.AwayLose when 3 then R.HomeLose/2 when 4 then R.HomeLose else 0 end else 0 end)  as WinLost_0_HDP,
		sum(case when R.bettype = 1--= @BettypeHDP 
		and R.FOffset = 1 then case R.WinLostStatus when 1 then R.AwayLose/2 when 2 then R.AwayLose when 3 then R.HomeLose/2 when 4 then R.HomeLose else 0 end else 0 end)  as WinLost_1_HDP,

		sum(case when R.bettype = 3--= @BettypeOU 
		and R.FOffset = 0 then case R.WinLostStatus when 1 then R.AwayLose/2 when 2 then R.AwayLose when 3 then R.HomeLose/2 when 4 then R.HomeLose else 0 end end)  as WinLost_0_OU,
		sum(case when R.bettype = 3--= @BettypeOU 
		and R.FOffset = 1 then case R.WinLostStatus when 1 then R.AwayLose/2 when 2 then R.AwayLose when 3 then R.HomeLose/2 when 4 then R.HomeLose else 0 end end)  as WinLost_1_OU,
		sum(case when R.bettype = 3--= @BettypeOU 
		and R.FOffset = 2 then case R.WinLostStatus when 1 then R.AwayLose/2 when 2 then R.AwayLose when 3 then R.HomeLose/2 when 4 then R.HomeLose else 0 end end)  as WinLost_2_OU,

		sum(case when R.bettype = 7--= @BettypeHTHDP 
		and R.FOffset = -1 then case R.WinLostStatus when 1 then R.AwayLose/2 when 2 then R.AwayLose when 3 then R.HomeLose/2 when 4 then R.HomeLose else 0 end else 0 end)  as WinLost_M1_HTHDP,
		sum(case when R.bettype = 7--= @BettypeHTHDP 
		and R.FOffset = 0 then case R.WinLostStatus when 1 then R.AwayLose/2 when 2 then R.AwayLose when 3 then R.HomeLose/2 when 4 then R.HomeLose else 0 end else 0 end)  as WinLost_0_HTHDP,
		sum(case when R.bettype = 7--= @BettypeHTHDP 
		and R.FOffset = 1 then case R.WinLostStatus when 1 then R.AwayLose/2 when 2 then R.AwayLose when 3 then R.HomeLose/2 when 4 then R.HomeLose else 0 end else 0 end)  as WinLost_1_HTHDP,

		sum(case when R.bettype = 8--= @BettypeHTOU 
		and R.FOffset = 0 then case R.WinLostStatus when 1 then R.AwayLose/2 when 2 then R.AwayLose when 3 then R.HomeLose/2 when 4 then R.HomeLose else 0 end end)  as WinLost_0_HTOU,
		sum(case when R.bettype = 8--= @BettypeHTOU 
		and R.FOffset = 1 then case R.WinLostStatus when 1 then R.AwayLose/2 when 2 then R.AwayLose when 3 then R.HomeLose/2 when 4 then R.HomeLose else 0 end end)  as WinLost_1_HTOU,
		sum(case when R.bettype = 8--= @BettypeHTOU 
		and R.FOffset = 2 then case R.WinLostStatus when 1 then R.AwayLose/2 when 2 then R.AwayLose when 3 then R.HomeLose/2 when 4 then R.HomeLose else 0 end end)  as WinLost_2_HTOU,
		isnull(m.isNeutral, CONVERT(BIT,0)) as IsNeutral
	from 	
		(
			Select 
				1 as ForecastID, F.bettype, liveindicator, '' as status, F.offset, 
				homelose, awaylose,
				BaseOffset + ForecastOffset.offset as BaseOffset, 
				case when F.BetType IN (1,7) THEN--in (@BetTypeHDP,@BetTypeHTHDP) then
					case 
						when F.VScoreHDP + BaseOffset + ForecastOffset.offset - F.Offset > 0 and F.VScoreHDP + BaseOffset + ForecastOffset.offset - F.Offset <0.5 then 1
						when F.VScoreHDP + BaseOffset + ForecastOffset.offset - F.Offset > 0.25 then 2
						when F.VScoreHDP + BaseOffset + ForecastOffset.offset - F.Offset < 0 and F.VScoreHDP + BaseOffset + ForecastOffset.offset - F.Offset >-0.5 then 3
						when F.VScoreHDP + BaseOffset + ForecastOffset.offset - F.Offset < -0.25 then 4
						when F.VScoreHDP + BaseOffset + ForecastOffset.offset - F.Offset =0 then 6
						else 5
					end
				when F.BetType in (3,8) THEN--(@BetTypeOU,@BetTypeHTOU) then
					case 
						when F.VScoreOU + BaseOffset + ForecastOffset.offset - F.Offset = 0.25 then 1
						when F.VScoreOU + BaseOffset + ForecastOffset.offset - F.Offset > 0.25 then 2
						when F.VScoreOU + BaseOffset + ForecastOffset.offset - F.Offset = -0.25 then 3
						when F.VScoreOU + BaseOffset + ForecastOffset.offset - F.Offset < -0.25 then 4
						when F.VScoreHDP + BaseOffset + ForecastOffset.offset - F.Offset =0 then 6
						else 5
					end
				end as WinlostStatus,
				F.MatchID, ForecastOffset.Offset as fOffset
			from (
					select  
						x.bettype AS bettype, x.liveindicator, 
						-x.hdp + score AS offset,
						sum((x.homewin - x.awaylose) ) as AwayLose,
						sum((x.awaywin - x.homelose) ) as HomeLose,
						@BaseOffsetHDP AS BaseOffset,
						MatchID,
						VScoreHDP,
						VScoreOU
					from 
						(
							select 
								b.bettype,
								b.currency, b.hdp2 - b.hdp1 as hdp, b.livehomescore - b.liveawayscore AS score, b.liveindicator,
								sum(case when betteam='h' then (case when odds < 0 then 1 else odds end) * stake * (b.mpositiontaking) else 0 end) AS homewin,
								sum(case when betteam='a' then (case when odds < 0 then 1 else odds end) * stake * (b.mpositiontaking) else 0 end) AS awaywin,
								sum(case when betteam='h' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.mpositiontaking) else 0 end) AS homelose,
								sum(case when betteam='a' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.mpositiontaking) else 0 end) AS awaylose,
								M.MatchID,
								isnull(m.livehomescore, 0) - isnull(m.liveawayscore, 0) as VScoreHDP,
								isnull(m.livehomescore, 0) + isnull(m.liveawayscore, 0) as VScoreOU
							from 
								--bettrans AS b WITH (NOLOCK,INDEX = IX_betrunning_mrecommend) 
								dbo.Ost_f_bettrans_running() AS b
								inner join Match as M with (NOLOCK) on b.MatchID = M.MatchID
								inner join League as L with (NOLOCK) on M.LeagueID = L.LeagueID and L.LeagueID = @LeagueID
							where 
								b.MRecommend = @MRecommend
								and b.bettype = 1--=@BetTypeHDP
								and b.statusID in (0,1) 
							group by 
								b.bettype,
								b.currency, b.hdp2 - b.hdp1, b.livehomescore - b.liveawayscore, b.liveindicator, M.MatchID, m.livehomescore, m.liveawayscore

							union all
							select 
								b.bettype,
								b.currency, b.hdp2 - b.hdp1 as hdp, b.livehomescore - b.liveawayscore AS score, b.liveindicator,
								sum(case when betteam='h' then (case when odds < 0 then 1 else odds end) * stake * (b.mpositiontaking) else 0 end) AS homewin,
								sum(case when betteam='a' then (case when odds < 0 then 1 else odds end) * stake * (b.mpositiontaking) else 0 end) AS awaywin,
								sum(case when betteam='h' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.mpositiontaking) else 0 end) AS homelose,
								sum(case when betteam='a' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.mpositiontaking) else 0 end) AS awaylose,
								M.MatchID,
								isnull(O.livehomescore, 0) - isnull(O.liveawayscore, 0) as VScoreHDP,
								isnull(O.livehomescore, 0) + isnull(O.liveawayscore, 0) as VScoreOU
							from 
								--bettrans AS b WITH (NOLOCK,INDEX = IX_betrunning_mrecommend) 
								dbo.Ost_f_bettrans_running() AS b
								inner join Match as M with (NOLOCK) on b.MatchID = M.MatchID
								inner join OddsES as O with (NOLOCK) on b.OddsID = O.OddsID
								inner join League as L with (NOLOCK) on M.LeagueID = L.LeagueID and L.LeagueID = @LeagueID
							where 
								b.MRecommend = @MRecommend
								and b.bettype = 1
								and b.statusID in (0,1) 
							group by 
								b.bettype,
								b.currency, b.hdp2 - b.hdp1, b.livehomescore - b.liveawayscore, b.liveindicator, M.MatchID, o.livehomescore, o.liveawayscore
						) AS x 
					group by 
						-x.hdp + score, x.liveindicator, MatchID, VScoreHDP, VScoreOU,x.bettype
					
					UNION ALL
					select 
						x.bettype AS bettype, x.liveindicator, 
						x.hdp + score AS offset, 
						sum((x.homewin - x.awaylose)) as AwayLose,
						sum((x.awaywin - x.homelose)) as HomeLose,
						@BaseOffsetOU AS BaseOffset,
						MatchID,
						VScoreHDP,
						VScoreOU
					from 
							(
							select 
								b.liveindicator,  
								b.bettype,
								b.currency, b.hdp1 as hdp, 0 AS score,
								sum(case when betteam='h' then (case when odds < 0 then 1 else odds end) * stake * (b.mpositiontaking) else 0 end) AS homewin,
								sum(case when betteam='a' then (case when odds < 0 then 1 else odds end) * stake * (b.mpositiontaking) else 0 end) AS awaywin,
								sum(case when betteam='h' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.mpositiontaking) else 0 end) AS homelose,
								sum(case when betteam='a' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.mpositiontaking) else 0 end) AS awaylose,
								M.MatchID,
								isnull(m.livehomescore, 0) - isnull(m.liveawayscore, 0) as VScoreHDP,
								isnull(m.livehomescore, 0) + isnull(m.liveawayscore, 0) as VScoreOU
							from 
								--bettrans AS b WITH (NOLOCK,INDEX = IX_betrunning_mrecommend)							
								dbo.Ost_f_bettrans_running() AS b
								inner join Match as M with (NOLOCK) on b.MatchID = M.MatchID and M.EventStatus = 'running'
								inner join League as L with (NOLOCK) on M.LeagueID = L.LeagueID and L.LeagueID = @LeagueID
							where 
								b.MRecommend = @MRecommend
								and b.bettype = 3--=@BetTypeOU
								and b.statusID in (0,1) 
							group by 
								b.bettype,
								b.currency, b.hdp1, b.liveindicator, M.MatchID, m.livehomescore, m.liveawayscore

							union all
							select 
								b.liveindicator,  
								b.bettype,
								b.currency, b.hdp1 as hdp, 0 AS score,
								sum(case when betteam='h' then (case when odds < 0 then 1 else odds end) * stake * (b.mpositiontaking) else 0 end) AS homewin,
								sum(case when betteam='a' then (case when odds < 0 then 1 else odds end) * stake * (b.mpositiontaking) else 0 end) AS awaywin,
								sum(case when betteam='h' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.mpositiontaking) else 0 end) AS homelose,
								sum(case when betteam='a' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.mpositiontaking) else 0 end) AS awaylose,
								M.MatchID,
								isnull(o.livehomescore, 0) - isnull(o.liveawayscore, 0) as VScoreHDP,
								isnull(o.livehomescore, 0) + isnull(o.liveawayscore, 0) as VScoreOU
							from 
								--bettrans AS b WITH (NOLOCK,INDEX = IX_betrunning_mrecommend)							
								dbo.Ost_f_bettrans_running() AS b
								inner join Match as M with (NOLOCK) on b.MatchID = M.MatchID and M.EventStatus = 'running'
								inner join OddsES as O with (NOLOCK) on b.OddsID = O.OddsID
								inner join League as L with (NOLOCK) on M.LeagueID = L.LeagueID and L.LeagueID = @LeagueID
							where 
								b.MRecommend = @MRecommend
								and b.bettype = 3
								and b.statusID in (0,1) 
							group by 
								b.bettype,
								b.currency, b.hdp1, b.liveindicator, M.MatchID, o.livehomescore, o.liveawayscore
						) AS x 
					group by 
						liveindicator, x.score, x.hdp, MatchID, VScoreHDP, VScoreOU,x.bettype
	--FIRST HALF HERE----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
					UNION ALL
					select  
						x.bettype AS bettype, x.liveindicator, 
						-x.hdp + score AS offset, 
						sum((x.homewin - x.awaylose) ) as AwayLose,
						sum((x.awaywin - x.homelose) ) as HomeLose,
						@BaseOffsetHTHDP AS BaseOffset,
						MatchID,
						VScoreHDP,
						VScoreOU
					from 
						(
							select 
								b.bettype,
								b.currency, b.hdp2 - b.hdp1 as hdp, b.livehomescore - b.liveawayscore AS score, b.liveindicator,
								sum(case when betteam='h' then (case when odds < 0 then 1 else odds end) * stake * (b.mpositiontaking) else 0 end) AS homewin,
								sum(case when betteam='a' then (case when odds < 0 then 1 else odds end) * stake * (b.mpositiontaking) else 0 end) AS awaywin,
								sum(case when betteam='h' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.mpositiontaking) else 0 end) AS homelose,
								sum(case when betteam='a' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.mpositiontaking) else 0 end) AS awaylose,
								M.MatchID,
								isnull(m.livehomescore, 0) - isnull(m.liveawayscore, 0) as VScoreHDP,
								isnull(m.livehomescore, 0) + isnull(m.liveawayscore, 0) as VScoreOU
							from 
								--bettrans AS b WITH (NOLOCK,INDEX = IX_betrunning_mrecommend)
								dbo.Ost_f_bettrans_running() AS b
								inner join Match as M with (NOLOCK) on b.MatchID = M.MatchID
								inner join League as L with (NOLOCK) on M.LeagueID = L.LeagueID and L.LeagueID = @LeagueID
							where 
								b.MRecommend = @MRecommend
								and b.bettype = 7--=@BetTypeHTHDP
								and b.statusID in (0,1) 
								
							group by 
								b.bettype, 
								b.currency, b.hdp2 - b.hdp1, b.livehomescore - b.liveawayscore, b.liveindicator, M.MatchID, m.livehomescore, m.liveawayscore
							UNION ALL
							select 
								b.bettype,
								b.currency, b.hdp2 - b.hdp1 as hdp, b.livehomescore - b.liveawayscore AS score, b.liveindicator,
								sum(case when betteam='h' then (case when odds < 0 then 1 else odds end) * stake * (b.mpositiontaking) else 0 end) AS homewin,
								sum(case when betteam='a' then (case when odds < 0 then 1 else odds end) * stake * (b.mpositiontaking) else 0 end) AS awaywin,
								sum(case when betteam='h' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.mpositiontaking) else 0 end) AS homelose,
								sum(case when betteam='a' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.mpositiontaking) else 0 end) AS awaylose,
								M.MatchID,
								isnull(o.livehomescore, 0) - isnull(o.liveawayscore, 0) as VScoreHDP,
								isnull(o.livehomescore, 0) + isnull(o.liveawayscore, 0) as VScoreOU
							from 
								--bettrans AS b WITH (NOLOCK,INDEX = IX_betrunning_mrecommend)
								dbo.Ost_f_bettrans_running() AS b
								inner join Match as M with (NOLOCK) on b.MatchID = M.MatchID
								inner join OddsES as O with (NOLOCK) on b.OddsID = O.OddsID
								inner join League as L with (NOLOCK) on M.LeagueID = L.LeagueID and L.LeagueID = @LeagueID
							where 
								b.MRecommend = @MRecommend
								and b.bettype = 7--=@BetTypeHTHDP
								and b.statusID in (0,1) 
							group by 
								b.bettype, 
								b.currency, b.hdp2 - b.hdp1, b.livehomescore - b.liveawayscore, b.liveindicator, M.MatchID, o.livehomescore, o.liveawayscore
							
						) AS x 
					group by 
						-x.hdp + score, x.liveindicator, MatchID, VScoreHDP, VScoreOU,x.bettype
					
					UNION ALL
					select 
						x.bettype AS bettype, x.liveindicator, 
						x.hdp + score AS offset, 
						sum((x.homewin - x.awaylose)) as AwayLose,
						sum((x.awaywin - x.homelose)) as HomeLose,
						@BaseOffsetHTOU AS BaseOffset,
						MatchID,
						VScoreHDP,
						VScoreOU
					from 
							(
							select 
								b.liveindicator,  
								b.bettype,
								b.currency, b.hdp1 as hdp, 0 AS score,
								sum(case when betteam='h' then (case when odds < 0 then 1 else odds end) * stake * (b.mpositiontaking) else 0 end) AS homewin,
								sum(case when betteam='a' then (case when odds < 0 then 1 else odds end) * stake * (b.mpositiontaking) else 0 end) AS awaywin,
								sum(case when betteam='h' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.mpositiontaking) else 0 end) AS homelose,
								sum(case when betteam='a' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.mpositiontaking) else 0 end) AS awaylose,
								M.MatchID,
								isnull(m.livehomescore, 0) - isnull(m.liveawayscore, 0) as VScoreHDP,
								isnull(m.livehomescore, 0) + isnull(m.liveawayscore, 0) as VScoreOU
							from 
								--bettrans AS b WITH (NOLOCK,INDEX = IX_betrunning_mrecommend)						
								dbo.Ost_f_bettrans_running() AS b
								inner join Match as M with (NOLOCK) on b.MatchID = M.MatchID and M.EventStatus = 'running'
								inner join League as L with (NOLOCK) on M.LeagueID = L.LeagueID and L.LeagueID = @LeagueID
							where 
								b.MRecommend = @MRecommend
								and b.bettype = 8--=@BetTypeHTOU
								and b.statusID in (0,1)
							group by 
								b.bettype,
								b.currency, b.hdp1, b.liveindicator, M.MatchID, m.livehomescore, m.liveawayscore
							UNION ALL
							select 
								b.liveindicator,  
								b.bettype,
								b.currency, b.hdp1 as hdp, 0 AS score,
								sum(case when betteam='h' then (case when odds < 0 then 1 else odds end) * stake * (b.mpositiontaking) else 0 end) AS homewin,
								sum(case when betteam='a' then (case when odds < 0 then 1 else odds end) * stake * (b.mpositiontaking) else 0 end) AS awaywin,
								sum(case when betteam='h' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.mpositiontaking) else 0 end) AS homelose,
								sum(case when betteam='a' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.mpositiontaking) else 0 end) AS awaylose,
								M.MatchID,
								isnull(o.livehomescore, 0) - isnull(o.liveawayscore, 0) as VScoreHDP,
								isnull(o.livehomescore, 0) + isnull(o.liveawayscore, 0) as VScoreOU
							from 
								--bettrans AS b WITH (NOLOCK,INDEX = IX_betrunning_mrecommend)						
								dbo.Ost_f_bettrans_running() AS b
								inner join Match as M with (NOLOCK) on b.MatchID = M.MatchID and M.EventStatus = 'running'
								inner join OddsES as O with (NOLOCK) on b.OddsID = O.OddsID
								inner join League as L with (NOLOCK) on M.LeagueID = L.LeagueID and L.LeagueID = @LeagueID
							where 
								b.MRecommend = @MRecommend
								and b.bettype = 8--=@BetTypeHTOU
								and b.statusID in (0,1)
								
							group by 
								b.bettype,
								b.currency, b.hdp1, b.liveindicator, M.MatchID, o.livehomescore, o.liveawayscore
						) AS x 
					group by 
						liveindicator, x.score, x.hdp, MatchID, VScoreHDP, VScoreOU,x.bettype
			
				) as F 
				INNER JOIN 	(
							select 1 as bettype,-1 as offset union all
							select 1 as bettype,0 as offset union all
							select 1 as bettype,1 as offset union all
							select 3 as bettype,0 as offset union all
							select 3 as bettype,1 as offset union all
							select 3 as bettype,2 as offset union all
							select 7 as bettype,-1 as offset union all
							select 7 as bettype,0 as offset union all
							select 7 as bettype,1 as offset union all
							select 8 as bettype,0 as offset union all
							select 8 as bettype,1 as offset union all
							select 8 as bettype,2 as offset
						) as ForecastOffset on F.bettype = ForecastOffset.bettype	
		) as R 
		INNER JOIN Match as M with (NOLOCK) on R.MatchID = M.MatchID 	
	group by R.MatchID,  R.liveindicator, 
		m.homeid,
		m.awayid,	
		M.LiveHomeScore, M.LiveAwayScore, 	
		M.ShowTime, M.MatchCode,
		m.isNeutral
	order by R.LiveIndicator desc, M.MatchCode
END

GO
ALTER AUTHORIZATION ON [dbo].[Ost_Forecast_SelByLeague_MAg] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[Ost_Forecast_SelByLeague_MAg] TO [bodbDownlineNet] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Ost_Forecast_SelByLeague_MAg] TO [bodbDownlineNetView] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Ost_Forecast_SelByLeague_SAg]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Ost_Forecast_SelByLeague_SAg]
	@BaseOffsetHDP int,
	@BaseOffsetOU int,
	@BaseOffsetHTHDP int,
	@BaseOffsetHTOU int,
	@LeagueID int,
	@srecommend int,
	@Language varchar(2)
AS
/*
	Created:20191021@Bobby
	Task: New Forecast at Agent Site 
	DB: DBOST.bodb_ost
	Original:DB042.bodb02.Age_Forecast_SelByLeague_SAg
	
	Revisions: 
		- 20191021@Bobby: Initialize [Redmine:114231] 
		
*/
BEGIN
	SET NOCOUNT ON
	
	select R.MatchID,
		m.homeid,
		m.awayid,	
		R.liveindicator, isnull(M.LiveHomeScore, 0) as livehomescore, isnull(M.LiveAwayScore, 0) as liveawayscore,M.ShowTime,M.MatchCode,

		sum(case when R.bettype = 1--= @BettypeHDP 
		and R.FOffset = -1 then case R.WinLostStatus when 1 then R.AwayLose/2 when 2 then R.AwayLose when 3 then R.HomeLose/2 when 4 then R.HomeLose else 0 end else 0 end)  as WinLost_M1_HDP,
		sum(case when R.bettype = 1--= @BettypeHDP 
		and R.FOffset = 0 then case R.WinLostStatus when 1 then R.AwayLose/2 when 2 then R.AwayLose when 3 then R.HomeLose/2 when 4 then R.HomeLose  else 0 end else 0 end)  as WinLost_0_HDP,
		sum(case when R.bettype = 1--= @BettypeHDP 
		and R.FOffset = 1 then case R.WinLostStatus when 1 then R.AwayLose/2 when 2 then R.AwayLose when 3 then R.HomeLose/2 when 4 then R.HomeLose  else 0 end else 0 end)  as WinLost_1_HDP,

		sum(case when R.bettype = 3--= @BettypeOU 
		and R.FOffset = 0 then case R.WinLostStatus when 1 then R.AwayLose/2 when 2 then R.AwayLose when 3 then R.HomeLose/2 when 4 then R.HomeLose  else 0 end end)  as WinLost_0_OU,
		sum(case when R.bettype = 3--= @BettypeOU 
		and R.FOffset = 1 then case R.WinLostStatus when 1 then R.AwayLose/2 when 2 then R.AwayLose when 3 then R.HomeLose/2 when 4 then R.HomeLose  else 0 end end)  as WinLost_1_OU,
		sum(case when R.bettype = 3--= @BettypeOU 
		and R.FOffset = 2 then case R.WinLostStatus when 1 then R.AwayLose/2 when 2 then R.AwayLose when 3 then R.HomeLose/2 when 4 then R.HomeLose  else 0 end end)  as WinLost_2_OU,

		sum(case when R.bettype = 7--= @BettypeHTHDP 
		and R.FOffset = -1 then case R.WinLostStatus when 1 then R.AwayLose/2 when 2 then R.AwayLose when 3 then R.HomeLose/2 when 4 then R.HomeLose  else 0 end else 0 end)  as WinLost_M1_HTHDP,
		sum(case when R.bettype = 7--= @BettypeHTHDP 
		and R.FOffset = 0 then case R.WinLostStatus when 1 then R.AwayLose/2 when 2 then R.AwayLose when 3 then R.HomeLose/2 when 4 then R.HomeLose  else 0 end else 0 end)  as WinLost_0_HTHDP,
		sum(case when R.bettype = 7--= @BettypeHTHDP 
		and R.FOffset = 1 then case R.WinLostStatus when 1 then R.AwayLose/2 when 2 then R.AwayLose when 3 then R.HomeLose/2 when 4 then R.HomeLose  else 0 end else 0 end)  as WinLost_1_HTHDP,

		sum(case when R.bettype = 8--= @BettypeHTOU 
		and R.FOffset = 0 then case R.WinLostStatus when 1 then R.AwayLose/2 when 2 then R.AwayLose when 3 then R.HomeLose/2 when 4 then R.HomeLose  else 0 end end)  as WinLost_0_HTOU,
		sum(case when R.bettype = 8--= @BettypeHTOU 
		and R.FOffset = 1 then case R.WinLostStatus when 1 then R.AwayLose/2 when 2 then R.AwayLose when 3 then R.HomeLose/2 when 4 then R.HomeLose  else 0 end end)  as WinLost_1_HTOU,
		sum(case when R.bettype = 8--= @BettypeHTOU 
		and R.FOffset = 2 then case R.WinLostStatus when 1 then R.AwayLose/2 when 2 then R.AwayLose when 3 then R.HomeLose/2 when 4 then R.HomeLose  else 0 end end)  as WinLost_2_HTOU,
		isnull(m.isNeutral, CONVERT(BIT,0)) as IsNeutral
	from 	
		(
			Select 
				1 as ForecastID, F.bettype, liveindicator, '' as status, F.offset, 
				homelose, awaylose,
				BaseOffset + ForecastOffset.offset as BaseOffset, 
				case when F.BetType in (1,7) THEN--(@BetTypeHDP,@BetTypeHTHDP) then
					case 
						when F.VScoreHDP + BaseOffset + ForecastOffset.offset - F.Offset > 0 and F.VScoreHDP + BaseOffset + ForecastOffset.offset - F.Offset <0.5 then 1
						when F.VScoreHDP + BaseOffset + ForecastOffset.offset - F.Offset > 0.25 then 2
						when F.VScoreHDP + BaseOffset + ForecastOffset.offset - F.Offset < 0 and F.VScoreHDP + BaseOffset + ForecastOffset.offset - F.Offset >-0.5 then 3
						when F.VScoreHDP + BaseOffset + ForecastOffset.offset - F.Offset < -0.25 then 4
						when F.VScoreHDP + BaseOffset + ForecastOffset.offset - F.Offset =0 then 6
						else 5
					end
				when F.BetType in (3,8) THEN--(@BetTypeOU,@BetTypeHTOU) then
					case 
						when F.VScoreOU + BaseOffset + ForecastOffset.offset - F.Offset = 0.25 then 1
						when F.VScoreOU + BaseOffset + ForecastOffset.offset - F.Offset > 0.25 then 2
						when F.VScoreOU + BaseOffset + ForecastOffset.offset - F.Offset = -0.25 then 3
						when F.VScoreOU + BaseOffset + ForecastOffset.offset - F.Offset < -0.25 then 4
						when F.VScoreOU + BaseOffset + ForecastOffset.offset - F.Offset = 0 then 6
						else 5
					end
				end as WinlostStatus,
				F.MatchID, ForecastOffset.Offset as fOffset
			from (
					select  
						x.bettype AS bettype, x.liveindicator, 
						-x.hdp + score AS offset, 
						sum((x.homewin - x.awaylose) ) as AwayLose,
						sum((x.awaywin - x.homelose) ) as HomeLose,
						@BaseOffsetHDP AS BaseOffset,
						MatchID,
						VScoreHDP,
						VScoreOU
					from 
						(
							select 
								b.bettype,
								b.currency, b.hdp2 - b.hdp1 as hdp, b.livehomescore - b.liveawayscore AS score, b.liveindicator,
								sum(case when betteam='h' then (case when odds < 0 then 1 else odds end) * stake * (b.spositiontaking) else 0 end) AS homewin,
								sum(case when betteam='a' then (case when odds < 0 then 1 else odds end) * stake * (b.spositiontaking) else 0 end) AS awaywin,
								sum(case when betteam='h' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.spositiontaking) else 0 end) AS homelose,
								sum(case when betteam='a' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.spositiontaking) else 0 end) AS awaylose,
								M.MatchID,
								isnull(m.livehomescore, 0) - isnull(m.liveawayscore, 0) as VScoreHDP,
								isnull(m.livehomescore, 0) + isnull(m.liveawayscore, 0) as VScoreOU
							from 
								--bettrans AS b WITH (NOLOCK, INDEX = IX_betrunning_srecommend) 
								dbo.Ost_f_bettrans_running() AS b
								inner join Match as M with (NOLOCK) on b.MatchID = M.MatchID
								inner join League as L with (NOLOCK) on M.LeagueID = L.LeagueID and L.LeagueID = @LeagueID
							where 
								b.srecommend = @srecommend
								and b.bettype = 1--=@BetTypeHDP
								and b.statusID in (0,1)
							group by 
								b.bettype,
								b.currency, b.hdp2 - b.hdp1, b.livehomescore - b.liveawayscore, b.liveindicator, M.MatchID, m.livehomescore, m.liveawayscore

							union all
							select 
								b.bettype,
								b.currency, b.hdp2 - b.hdp1 as hdp, b.livehomescore - b.liveawayscore AS score, b.liveindicator,
								sum(case when betteam='h' then (case when odds < 0 then 1 else odds end) * stake * (b.spositiontaking) else 0 end) AS homewin,
								sum(case when betteam='a' then (case when odds < 0 then 1 else odds end) * stake * (b.spositiontaking) else 0 end) AS awaywin,
								sum(case when betteam='h' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.spositiontaking) else 0 end) AS homelose,
								sum(case when betteam='a' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.spositiontaking) else 0 end) AS awaylose,
								M.MatchID,
								isnull(o.livehomescore, 0) - isnull(o.liveawayscore, 0) as VScoreHDP,
								isnull(o.livehomescore, 0) + isnull(o.liveawayscore, 0) as VScoreOU
							from 
								--bettrans AS b WITH (NOLOCK, INDEX = IX_betrunning_srecommend) 
								dbo.Ost_f_bettrans_running() AS b
								inner join Match as M with (NOLOCK) on b.MatchID = M.MatchID
								inner join OddsES as O with (NOLOCK) on b.OddsID = O.OddsID
								inner join League as L with (NOLOCK) on M.LeagueID = L.LeagueID and L.LeagueID = @LeagueID
							where 
								b.srecommend = @srecommend
								and b.bettype = 1
								and b.statusID in (0,1)
							group by 
								b.bettype,
								b.currency, b.hdp2 - b.hdp1, b.livehomescore - b.liveawayscore, b.liveindicator, M.MatchID, o.livehomescore, o.liveawayscore
						) AS x 
					group by 
						-x.hdp + score, x.liveindicator, MatchID, VScoreHDP, VScoreOU,x.bettype
					
					UNION ALL
					select 
						x.bettype AS bettype, x.liveindicator, 
						x.hdp + score AS offset, 
						sum((x.homewin - x.awaylose)) as AwayLose,
						sum((x.awaywin - x.homelose)) as HomeLose,
						@BaseOffsetOU AS BaseOffset,
						MatchID,
						VScoreHDP,
						VScoreOU
					from 
							(
							select 
								b.liveindicator,  
								b.bettype,
								b.currency, b.hdp1 as hdp, 0 AS score,
								sum(case when betteam='h' then (case when odds < 0 then 1 else odds end) * stake * (b.spositiontaking) else 0 end) AS homewin,
								sum(case when betteam='a' then (case when odds < 0 then 1 else odds end) * stake * (b.spositiontaking) else 0 end) AS awaywin,
								sum(case when betteam='h' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.spositiontaking) else 0 end) AS homelose,
								sum(case when betteam='a' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.spositiontaking) else 0 end) AS awaylose,
								M.MatchID,
								isnull(m.livehomescore, 0) - isnull(m.liveawayscore, 0) as VScoreHDP,
								isnull(m.livehomescore, 0) + isnull(m.liveawayscore, 0) as VScoreOU
							from 
								--bettrans AS b WITH (NOLOCK, INDEX = IX_betrunning_srecommend) 							
								dbo.Ost_f_bettrans_running() AS b
								inner join Match as M with (NOLOCK) on b.MatchID = M.MatchID and M.EventStatus = 'running'
								inner join League as L with (NOLOCK) on M.LeagueID = L.LeagueID and L.LeagueID = @LeagueID
							where 
								b.srecommend = @srecommend
								and b.bettype = 3--=@BetTypeOU
								and b.statusID in (0,1)
							group by 
								b.bettype,
								b.currency, b.hdp1, b.liveindicator, M.MatchID, m.livehomescore, m.liveawayscore

							union all
							select 
								b.liveindicator,  
								b.bettype,
								b.currency, b.hdp1 as hdp, 0 AS score,
								sum(case when betteam='h' then (case when odds < 0 then 1 else odds end) * stake * (b.spositiontaking) else 0 end) AS homewin,
								sum(case when betteam='a' then (case when odds < 0 then 1 else odds end) * stake * (b.spositiontaking) else 0 end) AS awaywin,
								sum(case when betteam='h' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.spositiontaking) else 0 end) AS homelose,
								sum(case when betteam='a' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.spositiontaking) else 0 end) AS awaylose,
								M.MatchID,
								isnull(o.livehomescore, 0) - isnull(o.liveawayscore, 0) as VScoreHDP,
								isnull(o.livehomescore, 0) + isnull(o.liveawayscore, 0) as VScoreOU
							from 
								--bettrans AS b WITH (NOLOCK, INDEX = IX_betrunning_srecommend) 							
								dbo.Ost_f_bettrans_running() AS b
								inner join Match as M with (NOLOCK) on b.MatchID = M.MatchID and M.EventStatus = 'running'
								inner join OddsES as O with (NOLOCK) on b.OddsID = O.OddsID
								inner join League as L with (NOLOCK) on M.LeagueID = L.LeagueID and L.LeagueID = @LeagueID
							where 
								b.srecommend = @srecommend
								and b.bettype = 3
								and b.statusID in (0,1)
							group by 
								b.bettype,
								b.currency, b.hdp1, b.liveindicator, M.MatchID, o.livehomescore, o.liveawayscore
						) AS x 
					group by 
						liveindicator, x.score, x.hdp, MatchID, VScoreHDP, VScoreOU,x.bettype
	--FIRST HALF HERE----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
					UNION ALL
					select  
						x.bettype AS bettype, x.liveindicator, 
						-x.hdp + score AS offset, 
						sum((x.homewin - x.awaylose) ) as AwayLose,
						sum((x.awaywin - x.homelose) ) as HomeLose,
						@BaseOffsetHTHDP AS BaseOffset,
						MatchID,
						VScoreHDP,
						VScoreOU
					from 
						(
							select 
								b.bettype,
								b.currency, b.hdp2 - b.hdp1 as hdp, b.livehomescore - b.liveawayscore AS score, b.liveindicator,
								sum(case when betteam='h' then (case when odds < 0 then 1 else odds end) * stake * (b.spositiontaking) else 0 end) AS homewin,
								sum(case when betteam='a' then (case when odds < 0 then 1 else odds end) * stake * (b.spositiontaking) else 0 end) AS awaywin,
								sum(case when betteam='h' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.spositiontaking) else 0 end) AS homelose,
								sum(case when betteam='a' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.spositiontaking) else 0 end) AS awaylose,
								M.MatchID,
								isnull(m.livehomescore, 0) - isnull(m.liveawayscore, 0) as VScoreHDP,
								isnull(m.livehomescore, 0) + isnull(m.liveawayscore, 0) as VScoreOU
							from 
								--bettrans AS b WITH (NOLOCK, INDEX = IX_betrunning_srecommend) 
								dbo.Ost_f_bettrans_running() AS b
								inner join Match as M with (NOLOCK) on b.MatchID = M.MatchID
								inner join League as L with (NOLOCK) on M.LeagueID = L.LeagueID and L.LeagueID = @LeagueID
							where 
								b.srecommend = @srecommend
								and b.bettype = 7--=@BetTypeHTHDP
								and b.statusID in (0,1)
							group by 
								b.bettype,
								b.currency, b.hdp2 - b.hdp1, b.livehomescore - b.liveawayscore, b.liveindicator, M.MatchID, m.livehomescore, m.liveawayscore
							
							UNION ALL							
							select 
								b.bettype,
								b.currency, b.hdp2 - b.hdp1 as hdp, b.livehomescore - b.liveawayscore AS score, b.liveindicator,
								sum(case when betteam='h' then (case when odds < 0 then 1 else odds end) * stake * (b.spositiontaking) else 0 end) AS homewin,
								sum(case when betteam='a' then (case when odds < 0 then 1 else odds end) * stake * (b.spositiontaking) else 0 end) AS awaywin,
								sum(case when betteam='h' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.spositiontaking) else 0 end) AS homelose,
								sum(case when betteam='a' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.spositiontaking) else 0 end) AS awaylose,
								M.MatchID,
								isnull(o.livehomescore, 0) - isnull(o.liveawayscore, 0) as VScoreHDP,
								isnull(o.livehomescore, 0) + isnull(o.liveawayscore, 0) as VScoreOU
							from 
								--bettrans AS b WITH (NOLOCK, INDEX = IX_betrunning_srecommend) 
								dbo.Ost_f_bettrans_running() AS b
								inner join Match as M with (NOLOCK) on b.MatchID = M.MatchID
								inner join OddsES as O with (NOLOCK) on b.OddsID = O.OddsID
								inner join League as L with (NOLOCK) on M.LeagueID = L.LeagueID and L.LeagueID = @LeagueID
							where 
								b.srecommend = @srecommend
								and b.bettype = 7--=@BetTypeHTHDP
								and b.statusID in (0,1)
							group by 
								b.bettype,
								b.currency, b.hdp2 - b.hdp1, b.livehomescore - b.liveawayscore, b.liveindicator, M.MatchID, o.livehomescore, o.liveawayscore
							
						) AS x 
					group by 
						-x.hdp + score, x.liveindicator, MatchID, VScoreHDP, VScoreOU,x.bettype
					
					UNION ALL
					select 
						x.bettype AS bettype, x.liveindicator, 
						x.hdp + score AS offset, 
						sum((x.homewin - x.awaylose)) as AwayLose,
						sum((x.awaywin - x.homelose)) as HomeLose,
						@BaseOffsetHTOU AS BaseOffset,
						MatchID,
						VScoreHDP,
						VScoreOU
					from 
							(
							select 
								b.liveindicator,  
								b.bettype,
								b.currency, b.hdp1 as hdp, 0 AS score,
								sum(case when betteam='h' then (case when odds < 0 then 1 else odds end) * stake * (b.spositiontaking) else 0 end) AS homewin,
								sum(case when betteam='a' then (case when odds < 0 then 1 else odds end) * stake * (b.spositiontaking) else 0 end) AS awaywin,
								sum(case when betteam='h' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.spositiontaking) else 0 end) AS homelose,
								sum(case when betteam='a' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.spositiontaking) else 0 end) AS awaylose,
								M.MatchID,
								isnull(m.livehomescore, 0) - isnull(m.liveawayscore, 0) as VScoreHDP,
								isnull(m.livehomescore, 0) + isnull(m.liveawayscore, 0) as VScoreOU
							from 
								--bettrans AS b WITH (NOLOCK, INDEX = IX_betrunning_srecommend)  							
								dbo.Ost_f_bettrans_running() AS b
								inner join Match as M with (NOLOCK) on b.MatchID = M.MatchID and M.EventStatus = 'running'
								inner join League as L with (NOLOCK) on M.LeagueID = L.LeagueID and L.LeagueID = @LeagueID
							where 
								b.srecommend = @srecommend
								and b.bettype = 8--=@BetTypeHTOU
								and b.statusID in (0,1)
							group by 
								b.bettype,
								b.currency, b.hdp1, b.liveindicator, M.MatchID, m.livehomescore, m.liveawayscore
							
							UNION ALL
							select 
								b.liveindicator,  
								b.bettype,
								b.currency, b.hdp1 as hdp, 0 AS score,
								sum(case when betteam='h' then (case when odds < 0 then 1 else odds end) * stake * (b.spositiontaking) else 0 end) AS homewin,
								sum(case when betteam='a' then (case when odds < 0 then 1 else odds end) * stake * (b.spositiontaking) else 0 end) AS awaywin,
								sum(case when betteam='h' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.spositiontaking) else 0 end) AS homelose,
								sum(case when betteam='a' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.spositiontaking) else 0 end) AS awaylose,
								M.MatchID,
								isnull(o.livehomescore, 0) - isnull(o.liveawayscore, 0) as VScoreHDP,
								isnull(o.livehomescore, 0) + isnull(o.liveawayscore, 0) as VScoreOU
							from 
								--bettrans AS b WITH (NOLOCK, INDEX = IX_betrunning_srecommend)  							
								dbo.Ost_f_bettrans_running() AS b
								inner join Match as M with (NOLOCK) on b.MatchID = M.MatchID and M.EventStatus = 'running'
								inner join OddsES as O with (NOLOCK) on b.OddsID = O.OddsID
								inner join League as L with (NOLOCK) on M.LeagueID = L.LeagueID and L.LeagueID = @LeagueID
							where 
								b.srecommend = @srecommend
								and b.bettype = 8--=@BetTypeHTOU
								and b.statusID in (0,1)
							group by 
								b.bettype,
								b.currency, b.hdp1, b.liveindicator, M.MatchID, o.livehomescore, o.liveawayscore
								
						) AS x 
					group by 
						liveindicator, x.score, x.hdp, MatchID, VScoreHDP, VScoreOU,x.bettype
			
				) as F 
				INNER JOIN 	(
							select 1 as bettype,-1 as offset union all
							select 1 as bettype,0 as offset union all
							select 1 as bettype,1 as offset union all
							select 3 as bettype,0 as offset union all
							select 3 as bettype,1 as offset union all
							select 3 as bettype,2 as offset union all
							select 7 as bettype,-1 as offset union all
							select 7 as bettype,0 as offset union all
							select 7 as bettype,1 as offset union all
							select 8 as bettype,0 as offset union all
							select 8 as bettype,1 as offset union all
							select 8 as bettype,2 as offset
						) as ForecastOffset on F.bettype = ForecastOffset.bettype	
		) as R 
		INNER JOIN Match as M with (NOLOCK) on R.MatchID = M.MatchID 	
	group by R.MatchID,  R.liveindicator, 
		m.homeid,
		m.awayid,	
		M.LiveHomeScore, M.LiveAwayScore, 	
		M.ShowTime, M.MatchCode,
		m.isNeutral
	order by R.LiveIndicator desc, M.MatchCode
END

GO
ALTER AUTHORIZATION ON [dbo].[Ost_Forecast_SelByLeague_SAg] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[Ost_Forecast_SelByLeague_SAg] TO [bodbDownlineNet] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Ost_Forecast_SelByLeague_SAg] TO [bodbDownlineNetView] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Ost_Forecast_SelHDP]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Ost_Forecast_SelHDP]
	@matchid int,
	@agentid int = null,
	@roleid int = 2,
	@bettype int = 1
AS
/*
	Created:20191021@Bobby
	Task: New Forecast at Agent Site 
	DB: DBOST.bodb_ost
	Original:DB042.bodb02.Age_Forecast_SelHDP
	
	Revisions: 
		- 20191021@Bobby: Initialize [Redmine:114231] 
		
*/
BEGIN
	SET NOCOUNT ON
	
	if @roleid = 2
	BEGIN
		select  -x.hdp + score offset, 
			sum(x.hometotal * 1) 'ht',
			sum(x.awaytotal * 1) 'at',
			sum((x.homewin - x.awaylose) * 1) 'al',
			sum((x.awaywin - x.homelose) * 1) 'hl'
		from 
			(select b.currency, hdp2 - hdp1 hdp, livehomescore - liveawayscore score,
				sum(case when betteam='h' then stake * (b.apositiontaking) else 0 end) hometotal,
				sum(case when betteam='a' then stake * (b.apositiontaking) else 0 end) awaytotal,	
				sum(case when betteam='h' then (case when odds < 0 then 1 else odds end) * stake * (b.apositiontaking) else 0 end) homewin,
				sum(case when betteam='a' then (case when odds < 0 then 1 else odds end) * stake * (b.apositiontaking) else 0 end) awaywin,
				sum(case when betteam='h' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.apositiontaking) else 0 end) homelose,
				sum(case when betteam='a' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.apositiontaking) else 0 end) awaylose
			--from bettrans b WITH(NOLOCK) 
			FROM dbo.Ost_f_bettrans_running() b
			where  matchid = @matchid
				AND b.recommend = @agentid
				AND b.bettype = @bettype
				AND b.statusID in (0,1)
			group by b.currency, hdp2 - hdp1, livehomescore - liveawayscore
			) AS x 
		group by -x.hdp + score
	END
	else if @roleid = 3
	BEGIN
		select  -x.hdp + score offset, 
			sum(x.hometotal * 1) 'ht',
			sum(x.awaytotal * 1) 'at',
			sum((x.homewin - x.awaylose) * 1) 'al',
			sum((x.awaywin - x.homelose) * 1) 'hl'
		from 
			(select b.currency, hdp2 - hdp1 hdp, livehomescore - liveawayscore score,
				sum(case when betteam='h' then stake * (b.mpositiontaking) else 0 end) hometotal,
				sum(case when betteam='a' then stake * (b.mpositiontaking) else 0 end) awaytotal,
				sum(case when betteam='h'  then (case when odds < 0 then 1 else odds end) * stake * (b.mpositiontaking) else 0 end) homewin,
				sum(case when betteam='a'  then (case when odds < 0 then 1 else odds end) * stake * (b.mpositiontaking) else 0 end) awaywin,
				sum(case when betteam='h'  then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.mpositiontaking) else 0 end) homelose,
				sum(case when betteam='a'  then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.mpositiontaking) else 0 end) awaylose

			--from bettrans b with(nolock) inner join customer c with (nolock) on b.custid = c.custid
			FROM dbo.Ost_f_bettrans_running() b
			where matchid = @matchid
				AND b.mrecommend = @agentid
				AND b.bettype = @bettype
				AND b.statusID in (0,1)
			group by b.currency, hdp2 - hdp1, livehomescore - liveawayscore
			) AS x
		group by -x.hdp + score
	END
	else if @roleid = 4
	BEGIN
		select  -x.hdp + score offset, 
			sum(x.hometotal * 1) 'ht',
			sum(x.awaytotal * 1) 'at',
			sum((x.homewin - x.awaylose) * 1) 'al',
			sum((x.awaywin - x.homelose) * 1) 'hl'
		from --exchange e with(nolock) inner join  
			(select b.currency, hdp2 - hdp1 hdp, livehomescore - liveawayscore score,
				sum(case when betteam='h' then stake * (b.spositiontaking) else 0 end) hometotal,
				sum(case when betteam='a' then stake * (b.spositiontaking) else 0 end) awaytotal,	
				sum(case when betteam='h'  then (case when odds < 0 then 1 else odds end) * stake * (b.spositiontaking) else 0 end) homewin,
				sum(case when betteam='a'  then (case when odds < 0 then 1 else odds end) * stake * (b.spositiontaking) else 0 end) awaywin,
				sum(case when betteam='h'  then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.spositiontaking) else 0 end) homelose,
				sum(case when betteam='a'  then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.spositiontaking) else 0 end) awaylose
			--from bettrans b with(nolock) 
			FROM dbo.Ost_f_bettrans_running() b
			where matchid = @matchid
				AND b.srecommend = @agentid
				AND b.bettype = @bettype
				AND b.statusID in (0,1)
			group by b.currency, hdp2 - hdp1, livehomescore - liveawayscore
			) AS x --on e.exchangeid = x.currency
		group by -x.hdp + score
	END
END

GO
ALTER AUTHORIZATION ON [dbo].[Ost_Forecast_SelHDP] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[Ost_Forecast_SelHDP] TO [bodbDownlineNet] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Ost_Forecast_SelHDP] TO [bodbDownlineNetView] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Ost_Forecast_SelOU]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Ost_Forecast_SelOU]
	@matchid int,
	@agentid int = null,
	@roleid int = 2,
	@bettype int = 3
AS
/*
	Created:20191021@Bobby
	Task: New Forecast at Agent Site 
	DB: DBOST.bodb_ost
	Original:DB042.bodb02.Age_Forecast_SelOU
	
	Revisions: 
		- 20191021@Bobby: Initialize [Redmine:114231] 
		
*/
BEGIN
	SET NOCOUNT ON
	
	if @roleid = 2 
	BEGIN
		select x.liveindicator, x.status, x.score +  x.hdp offset, 
			sum(x.hometotal * 1) 'ht',
			sum(x.awaytotal * 1) 'at',
			sum((x.homewin- x.awaylose) * 1) 'al',
			sum((x.awaywin- x.homelose) * 1) 'hl'
		from 
			(select liveindicator,  status, b.currency, hdp1 hdp, 0 score,
				sum(case when betteam='h' then stake * (b.apositiontaking) else 0 end) hometotal,
				sum(case when betteam='a' then stake * (b.apositiontaking) else 0 end) awaytotal,	
				sum(case when betteam='h' then (case when odds < 0 then 1 else odds end) * stake * (b.apositiontaking) else 0 end) homewin,
				sum(case when betteam='a' then (case when odds < 0 then 1 else odds end) * stake * (b.apositiontaking) else 0 end) awaywin,
				sum(case when betteam='h' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.apositiontaking) else 0 end) homelose,
				sum(case when betteam='a' then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.apositiontaking) else 0 end) awaylose
			--from bettrans b with(nolock) 
			FROM dbo.Ost_f_bettrans_running() b
			where matchid = @matchid
				AND b.recommend = @agentid
				AND b.bettype = @bettype
				AND b.statusID in (0,1)
			group by liveindicator, status, b.currency, hdp1, livehomescore + liveawayscore
			)x 
		group by x.status, liveindicator, x.score + x.hdp
	END
	else if @roleid = 3
	BEGIN

		select x.liveindicator, x.status, x.score +  x.hdp offset, 
			sum(x.hometotal * 1) 'ht',
			sum(x.awaytotal * 1) 'at',
			sum((x.homewin - x.awaylose) * 1) 'al',
			sum((x.awaywin - x.homelose) * 1) 'hl'
		from 
			(select liveindicator,  status, b.currency, hdp1 hdp, 0 score,
				sum(case when betteam='h' then stake * (b.mpositiontaking) else 0 end) hometotal,
				sum(case when betteam='a' then stake * (b.mpositiontaking) else 0 end) awaytotal,	
				sum(case when betteam='h'  then (case when odds < 0 then 1 else odds end) * stake * (b.mpositiontaking) else 0 end) homewin,
				sum(case when betteam='a'  then (case when odds < 0 then 1 else odds end) * stake * (b.mpositiontaking) else 0 end) awaywin,
				sum(case when betteam='h'  then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.mpositiontaking) else 0 end) homelose,
				sum(case when betteam='a'  then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.mpositiontaking) else 0 end) awaylose

			--from bettrans b with(nolock) 
			FROM dbo.Ost_f_bettrans_running() b
			where matchid = @matchid
				AND b.mrecommend = @agentid
				AND b.bettype = @bettype
				AND b.statusID in (0,1)
			group by liveindicator, status, b.currency, hdp1, livehomescore + liveawayscore
			)x 
		group by x.status, liveindicator, x.score + x.hdp
	END
	else if @roleid = 4
	BEGIN
		select x.liveindicator, x.status, x.score +  x.hdp offset, 
			sum(x.hometotal * 1) 'ht',
			sum(x.awaytotal * 1) 'at',
			sum((x.homewin - x.awaylose) * 1) 'al',
			sum((x.awaywin - x.homelose) * 1) 'hl'
		from 
			(select liveindicator,  status, b.currency, hdp1 hdp, 0 score,
				sum(case when betteam='h' then stake * (b.spositiontaking) else 0 end) hometotal,
				sum(case when betteam='a' then stake * (b.spositiontaking) else 0 end) awaytotal,	
				sum(case when betteam='h'  then (case when odds < 0 then 1 else odds end) * stake * (b.spositiontaking) else 0 end) homewin,
				sum(case when betteam='a'  then (case when odds < 0 then 1 else odds end) * stake * (b.spositiontaking) else 0 end) awaywin,
				sum(case when betteam='h'  then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.spositiontaking) else 0 end) homelose,
				sum(case when betteam='a'  then (case when odds < 0 then abs(odds) else 1 end)  * stake * (b.spositiontaking) else 0 end) awaylose
			--from bettrans b with(nolock) 
			FROM dbo.Ost_f_bettrans_running() b
			where matchid = @matchid
				AND b.srecommend = @agentid
				AND b.bettype = @bettype
				AND b.statusID in (0,1)
			group by liveindicator, status, b.currency, hdp1, livehomescore + liveawayscore
			) AS x 
		group by x.status, liveindicator, x.score + x.hdp
	END
END

GO
ALTER AUTHORIZATION ON [dbo].[Ost_Forecast_SelOU] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[Ost_Forecast_SelOU] TO [bodbDownlineNet] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Ost_Forecast_SelOU] TO [bodbDownlineNetView] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Ost_LastBets_All]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Ost_LastBets_All]
	@CustId			INT,
	@TransId		BIGINT	= 0,
	@LimitRowCount	INT		= 20
AS

/*
	Created: Kos@20200109
	Task: Last Bets - All bet types
	DB: DBOST.bodb_ost
	Revision:
		- 20200109@Kos: Created [Redmine: #121898]
*/

BEGIN
	SET NOCOUNT ON

	DECLARE @IsTest BIT

	SELECT @IsTest = bodb02.dbo.f_CheckSPVersion(@@PROCID)

	; WITH __bettypeList AS (
		SELECT BetType
		FROM bodb02.dbo.SportBettypeMatrix WITH (NOLOCK)
		WHERE ProductID = 1 AND IsTest IN (0, @IsTest)
		GROUP BY BetType
	)

	SELECT TOP(@LimitRowCount)
		b.custid,
		b.matchid,
		b.Username,
		b.bettype,
		b.transid,
		b.refno,
		b.transdate,
		b.betid,
		b.livehomescore,
		b.liveawayscore,
		b.liveindicator,
		b.hdp1,
		b.hdp2,
		b.odds,
		b.stake,
		b.actual_stake,
		CASE
			WHEN b.bettype NOT IN (9, 29) AND b.status = 'running' AND ISNULL(b.SecAcceptFlag, 0) = 1 AND ISNULL(b.checktime, CURRENT_TIMESTAMP) > CURRENT_TIMESTAMP THEN 'waiting'
			WHEN b.bettype IN (9, 29) AND b.status = 'running' THEN
				CASE
					WHEN EXISTS (SELECT 1 FROM bodb02.dbo.bettransm AS bm WITH (NOLOCK)
								WHERE bm.custid = b.custid
									AND bm.refno = b.refno
									AND (bm.status = 'waiting'
										OR (bm.status = 'running' AND ISNULL(bm.SecAcceptFlag, 0) = 1 AND ISNULL(bm.checktime, CURRENT_TIMESTAMP) > CURRENT_TIMESTAMP)))
						THEN 'Waiting'
					ELSE b.status
				END
			ELSE b.status
		END AS Status,
		b.betteam,
		b.ip,
		b.oddstype,
		ISNULL(b.betcheck, '') AS BetCheck,
		ISNULL(b.transdesc, '') AS transdesc,
		ISNULL(b.oddsspread, 0) AS OddsSpread,
		ISNULL(b.ExtraInfo, '') AS ExtraInfo
	FROM dbo.bettrans AS b WITH (NOLOCK)
	WHERE b.recommend = @CustId 
		AND b.transid > @TransId
		AND b.statusID IN (0, 1)
		AND b.bettype NOT BETWEEN 801 AND 806
		AND EXISTS (SELECT TOP 1 1 FROM __bettypeList AS s WHERE b.bettype = s.Bettype)
	ORDER BY b.transid DESC
END

GO
ALTER AUTHORIZATION ON [dbo].[Ost_LastBets_All] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[Ost_LastBets_All] TO [bodbDownlineNet] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Ost_LastBets_All] TO [bodbDownlineNetView] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Ost_LastBets_All_xtest]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Ost_LastBets_All_xtest]
	@CustId			INT,
	@TransId		BIGINT	= 0,
	@LimitRowCount	INT		= 20
AS

/*
	Created: Kos@20200109
	Task: Last Bets - All bet types
	DB: DBOST.bodb_ost
	Revision:
		- 20200109@Kos: Created [Redmine: #121898]
*/

BEGIN
	SET NOCOUNT ON

	DECLARE @IsTest BIT

	SELECT @IsTest = bodb02.dbo.f_CheckSPVersion(@@PROCID)

	; WITH __bettypeList AS (
		SELECT BetType
		FROM bodb02.dbo.SportBettypeMatrix WITH (NOLOCK)
		WHERE ProductID = 1 AND IsTest IN (0, @IsTest)
		GROUP BY BetType
	)

	SELECT TOP(@LimitRowCount)
		b.custid,
		b.matchid,
		b.Username,
		b.bettype,
		b.transid,
		b.refno,
		b.transdate,
		b.betid,
		b.livehomescore,
		b.liveawayscore,
		b.liveindicator,
		b.hdp1,
		b.hdp2,
		b.odds,
		b.stake,
		b.actual_stake,
		CASE
			WHEN b.bettype NOT IN (9, 29) AND b.status = 'running' AND ISNULL(b.SecAcceptFlag, 0) = 1 AND ISNULL(b.checktime, CURRENT_TIMESTAMP) > CURRENT_TIMESTAMP THEN 'waiting'
			WHEN b.bettype IN (9, 29) AND b.status = 'running' THEN
				CASE
					WHEN EXISTS (SELECT 1 FROM bodb02.dbo.bettransm AS bm WITH (NOLOCK)
								WHERE bm.custid = b.custid
									AND bm.refno = b.refno
									AND (bm.status = 'waiting'
										OR (bm.status = 'running' AND ISNULL(bm.SecAcceptFlag, 0) = 1 AND ISNULL(bm.checktime, CURRENT_TIMESTAMP) > CURRENT_TIMESTAMP)))
						THEN 'Waiting'
					ELSE b.status
				END
			ELSE b.status
		END AS Status,
		b.betteam,
		b.ip,
		b.oddstype,
		ISNULL(b.betcheck, '') AS BetCheck,
		ISNULL(b.transdesc, '') AS transdesc,
		ISNULL(b.oddsspread, 0) AS OddsSpread,
		ISNULL(b.ExtraInfo, '') AS ExtraInfo
	FROM dbo.bettrans AS b WITH (NOLOCK)
	WHERE b.recommend = @CustId 
		AND b.transid > @TransId
		AND b.statusID IN (0, 1)
		AND b.bettype NOT BETWEEN 801 AND 806
		AND EXISTS (SELECT TOP 1 1 FROM __bettypeList AS s WHERE b.bettype = s.Bettype)
	ORDER BY b.transid DESC
END

GO
ALTER AUTHORIZATION ON [dbo].[Ost_LastBets_All_xtest] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[Ost_LastBets_All_xtest] TO [bodbDownlineNet] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Ost_LastBets_All_xtest] TO [bodbDownlineNetView] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Ost_LastBets_HDP]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Ost_LastBets_HDP]
	@CustId			INT,
	@TransId		BIGINT	= 0,
	@LimitRowCount	INT		= 20
AS

/*
	Created: Kos@20200109
	Task: Last Bets - Handicap bet types
	DB: DBOST.bodb_ost
	Revision:
		- 20200109@Kos: Created [Redmine: #121898]
*/

BEGIN
	SET NOCOUNT ON

	SELECT TOP(@LimitRowCount)
		b.matchid,
		b.Username,
		b.bettype,
		b.transid,
		b.refno,
		b.transdate,
		b.betid,
		b.livehomescore,
		b.liveawayscore,
		b.liveindicator,
		b.hdp1,
		b.hdp2,
		b.odds,
		b.stake,
		CASE
			WHEN b.status = 'running' AND ISNULL(b.SecAcceptFlag, 0) = 1 AND ISNULL(b.checktime, CURRENT_TIMESTAMP) > CURRENT_TIMESTAMP THEN 'waiting'
			ELSE b.status
		END AS Status,
		b.betteam,
		b.ip,
		b.oddstype,
		ISNULL(b.oddsspread, 0) AS OddsSpread,
		ISNULL(b.ExtraInfo, '') AS ExtraInfo
	FROM dbo.bettrans AS b WITH (NOLOCK)
	WHERE b.recommend = @CustId
		AND b.statusID IN (0, 1)
		AND b.transid > @TransId
		AND b.bettype IN (1, 7)
	ORDER BY b.transid DESC
END

GO
ALTER AUTHORIZATION ON [dbo].[Ost_LastBets_HDP] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[Ost_LastBets_HDP] TO [bodbDownlineNet] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Ost_LastBets_HDP] TO [bodbDownlineNetView] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Ost_LastBets_HDP_xtest]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Ost_LastBets_HDP_xtest]
	@CustId			INT,
	@TransId		BIGINT	= 0,
	@LimitRowCount	INT		= 20
AS

/*
	Created: Kos@20200109
	Task: Last Bets - Handicap bet types
	DB: DBOST.bodb_ost
	Revision:
		- 20200109@Kos: Created [Redmine: #121898]
*/

BEGIN
	SET NOCOUNT ON

	SELECT TOP(@LimitRowCount)
		b.matchid,
		b.Username,
		b.bettype,
		b.transid,
		b.refno,
		b.transdate,
		b.betid,
		b.livehomescore,
		b.liveawayscore,
		b.liveindicator,
		b.hdp1,
		b.hdp2,
		b.odds,
		b.stake,
		CASE
			WHEN b.status = 'running' AND ISNULL(b.SecAcceptFlag, 0) = 1 AND ISNULL(b.checktime, CURRENT_TIMESTAMP) > CURRENT_TIMESTAMP THEN 'waiting'
			ELSE b.status
		END AS Status,
		b.betteam,
		b.ip,
		b.oddstype,
		ISNULL(b.oddsspread, 0) AS OddsSpread,
		ISNULL(b.ExtraInfo, '') AS ExtraInfo
	FROM dbo.bettrans AS b WITH (NOLOCK)
	WHERE b.recommend = @CustId
		AND b.statusID IN (0, 1)
		AND b.transid > @TransId
		AND b.bettype IN (1, 7)
	ORDER BY b.transid DESC
END

GO
ALTER AUTHORIZATION ON [dbo].[Ost_LastBets_HDP_xtest] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[Ost_LastBets_HDP_xtest] TO [bodbDownlineNet] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Ost_LastBets_HDP_xtest] TO [bodbDownlineNetView] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Ost_LastBets_Other]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Ost_LastBets_Other]
	@CustId			INT,
	@TransId		BIGINT	= 0,
	@LimitRowCount	INT		= 20
AS

/*
	Created: Kos@20200109
	Task: Last Bets - Other bet types
	DB: DBOST.bodb_ost
	Revision:
		- 20200109@Kos: Created [Redmine: #121898]
*/

BEGIN
	SET NOCOUNT ON

	DECLARE @IsTest BIT = 0

	SELECT @IsTest = bodb02.dbo.f_CheckSPVersion(@@PROCID)

	; WITH __bettypeList AS (
		SELECT BetType
		FROM bodb02.dbo.SportBettypeMatrix WITH (NOLOCK)
		WHERE ProductID = 1 AND IsTest IN (0, @IsTest)
		GROUP BY BetType
	)
	SELECT TOP(@LimitRowCount)
		b.custid,
		b.matchid,
		b.Username,
		b.bettype,
		b.transid,
		b.refno,
		b.transdate,
		b.betid,
		b.livehomescore,
		b.liveawayscore,
		b.liveindicator,
		b.hdp1,
		b.hdp2,
		b.odds,
		b.stake,
		b.actual_stake,
		CASE
			WHEN b.bettype NOT IN (9, 29) AND b.status = 'running' AND ISNULL(b.SecAcceptFlag, 0) = 1 AND ISNULL(b.checktime, CURRENT_TIMESTAMP) > CURRENT_TIMESTAMP THEN 'waiting'
			WHEN b.bettype IN (9, 29) AND b.status = 'running' THEN
				CASE
					WHEN EXISTS (SELECT 1 FROM bodb02.dbo.bettransm AS bm WITH (NOLOCK)
								WHERE bm.custid = b.custid
									AND bm.refno = b.refno
									AND (bm.status = 'waiting'
										OR (bm.status = 'running' AND ISNULL(bm.SecAcceptFlag, 0) = 1 AND ISNULL(bm.checktime, CURRENT_TIMESTAMP) > CURRENT_TIMESTAMP)))
						THEN 'Waiting'
					ELSE b.status
				END
			ELSE b.status
		END AS status,
		b.betteam,
		b.ip,
		b.oddstype,
		ISNULL(b.betcheck, '') AS Betcheck,
		ISNULL(b.transdesc, '') AS transdesc,
		0 AS OddsSpread,
		ISNULL(b.ExtraInfo, '') AS ExtraInfo
	FROM dbo.bettrans AS b WITH (NOLOCK)
	WHERE b.recommend = @CustId
		AND b.statusID IN (0,1)
		AND b.transid > @TransId
		AND b.bettype NOT BETWEEN 801 AND 806
		AND b.bettype NOT IN (1, 3, 7, 8)
		AND EXISTS (SELECT TOP 1 1 FROM __bettypeList AS s WHERE b.bettype = s.BetType)
	ORDER BY b.transid DESC
END

GO
ALTER AUTHORIZATION ON [dbo].[Ost_LastBets_Other] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[Ost_LastBets_Other] TO [bodbDownlineNet] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Ost_LastBets_Other] TO [bodbDownlineNetView] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Ost_LastBets_Other_xtest]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Ost_LastBets_Other_xtest]
	@CustId			INT,
	@TransId		BIGINT	= 0,
	@LimitRowCount	INT		= 20
AS

/*
	Created: Kos@20200109
	Task: Last Bets - Other bet types
	DB: DBOST.bodb_ost
	Revision:
		- 20200109@Kos: Created [Redmine: #121898]
*/

BEGIN
	SET NOCOUNT ON

	DECLARE @IsTest BIT = 0

	SELECT @IsTest = bodb02.dbo.f_CheckSPVersion(@@PROCID)

	; WITH __bettypeList AS (
		SELECT BetType
		FROM bodb02.dbo.SportBettypeMatrix WITH (NOLOCK)
		WHERE ProductID = 1 AND IsTest IN (0, @IsTest)
		GROUP BY BetType
	)
	SELECT TOP(@LimitRowCount)
		b.custid,
		b.matchid,
		b.Username,
		b.bettype,
		b.transid,
		b.refno,
		b.transdate,
		b.betid,
		b.livehomescore,
		b.liveawayscore,
		b.liveindicator,
		b.hdp1,
		b.hdp2,
		b.odds,
		b.stake,
		b.actual_stake,
		CASE
			WHEN b.bettype NOT IN (9, 29) AND b.status = 'running' AND ISNULL(b.SecAcceptFlag, 0) = 1 AND ISNULL(b.checktime, CURRENT_TIMESTAMP) > CURRENT_TIMESTAMP THEN 'waiting'
			WHEN b.bettype IN (9, 29) AND b.status = 'running' THEN
				CASE
					WHEN EXISTS (SELECT 1 FROM bodb02.dbo.bettransm AS bm WITH (NOLOCK)
								WHERE bm.custid = b.custid
									AND bm.refno = b.refno
									AND (bm.status = 'waiting'
										OR (bm.status = 'running' AND ISNULL(bm.SecAcceptFlag, 0) = 1 AND ISNULL(bm.checktime, CURRENT_TIMESTAMP) > CURRENT_TIMESTAMP)))
						THEN 'Waiting'
					ELSE b.status
				END
			ELSE b.status
		END AS status,
		b.betteam,
		b.ip,
		b.oddstype,
		ISNULL(b.betcheck, '') AS Betcheck,
		ISNULL(b.transdesc, '') AS transdesc,
		0 AS OddsSpread,
		ISNULL(b.ExtraInfo, '') AS ExtraInfo
	FROM dbo.bettrans AS b WITH (NOLOCK)
	WHERE b.recommend = @CustId
		AND b.statusID IN (0,1)
		AND b.transid > @TransId
		AND b.bettype NOT BETWEEN 801 AND 806
		AND b.bettype NOT IN (1, 3, 7, 8)
		AND EXISTS (SELECT TOP 1 1 FROM __bettypeList AS s WHERE b.bettype = s.BetType)
	ORDER BY b.transid DESC
END

GO
ALTER AUTHORIZATION ON [dbo].[Ost_LastBets_Other_xtest] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[Ost_LastBets_Other_xtest] TO [bodbDownlineNet] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Ost_LastBets_Other_xtest] TO [bodbDownlineNetView] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Ost_LastBets_OU]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Ost_LastBets_OU]
	@CustId			INT,
	@TransId		BIGINT	= 0,
	@LimitRowCount	INT		= 20
AS

/*
	Created: Kos@20200109
	Task: Last Bets - Over/Under bet types
	DB: DBOST.bodb_ost
	Revision:
		- 20200109@Kos: Created [Redmine: #121898]
*/

BEGIN
	SET NOCOUNT ON

	SELECT TOP(@LimitRowCount)
		b.matchid,
		b.Username,
		b.bettype,
		b.transid,
		b.refno,
		b.transdate,
		b.betid,
		b.livehomescore,
		b.liveawayscore,
		b.liveindicator,
		b.hdp1,
		b.hdp2,
		b.odds,
		b.stake,
		CASE
			WHEN b.status = 'running' AND ISNULL(b.SecAcceptFlag, 0) = 1 AND ISNULL(b.checktime, CURRENT_TIMESTAMP) > CURRENT_TIMESTAMP THEN 'waiting'
			ELSE b.status
		END AS Status,
		b.betteam,
		b.ip,
		b.oddstype,
		ISNULL(b.oddsspread, 0) AS OddsSpread,
		ISNULL(b.ExtraInfo, '') AS ExtraInfo
	FROM dbo.bettrans AS b WITH (NOLOCK)
	WHERE b.recommend = @CustId
		AND b.statusID IN (0, 1)
		AND b.transid > @TransId
		AND b.bettype IN (3, 8)
	ORDER BY b.transid DESC
END

GO
ALTER AUTHORIZATION ON [dbo].[Ost_LastBets_OU] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[Ost_LastBets_OU] TO [bodbDownlineNet] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Ost_LastBets_OU] TO [bodbDownlineNetView] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Ost_LastBets_OU_xtest]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Ost_LastBets_OU_xtest]
	@CustId			INT,
	@TransId		BIGINT	= 0,
	@LimitRowCount	INT		= 20
AS

/*
	Created: Kos@20200109
	Task: Last Bets - Over/Under bet types
	DB: DBOST.bodb_ost
	Revision:
		- 20200109@Kos: Created [Redmine: #121898]
*/

BEGIN
	SET NOCOUNT ON

	SELECT TOP(@LimitRowCount)
		b.matchid,
		b.Username,
		b.bettype,
		b.transid,
		b.refno,
		b.transdate,
		b.betid,
		b.livehomescore,
		b.liveawayscore,
		b.liveindicator,
		b.hdp1,
		b.hdp2,
		b.odds,
		b.stake,
		CASE
			WHEN b.status = 'running' AND ISNULL(b.SecAcceptFlag, 0) = 1 AND ISNULL(b.checktime, CURRENT_TIMESTAMP) > CURRENT_TIMESTAMP THEN 'waiting'
			ELSE b.status
		END AS Status,
		b.betteam,
		b.ip,
		b.oddstype,
		ISNULL(b.oddsspread, 0) AS OddsSpread,
		ISNULL(b.ExtraInfo, '') AS ExtraInfo
	FROM dbo.bettrans AS b WITH (NOLOCK)
	WHERE b.recommend = @CustId
		AND b.statusID IN (0, 1)
		AND b.transid > @TransId
		AND b.bettype IN (3, 8)
	ORDER BY b.transid DESC
END

GO
ALTER AUTHORIZATION ON [dbo].[Ost_LastBets_OU_xtest] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[Ost_LastBets_OU_xtest] TO [bodbDownlineNet] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Ost_LastBets_OU_xtest] TO [bodbDownlineNetView] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Ost_LeagueSelRunning_Ag]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Ost_LeagueSelRunning_Ag] @AgID INT
	, @Language NVARCHAR(2) = 'E'
	, @Bettypes VARCHAR(100) = '0' --0: all, 1:1,3,7,8; 5:5,15 
AS
/*
	Created:20191021@Bobby
	Task: New Forecast at Agent Site 
	DB: DBOST.bodb_ost
	Original:DB042.bodb02.Age_LeagueSelRunning_Ag
	
	Revisions: 
		- 20191021@Bobby: Initialize [Redmine:114231] 
		
*/
BEGIN
	SET NOCOUNT ON

	SELECT @Bettypes = CASE @Bettypes
			WHEN '1'
				THEN '1,3,7,8'
			WHEN '5'
				THEN '5,15,167'
			ELSE '1,3,7,8,5,15,167'
			END

	SELECT m.leagueid
		, m.sporttype
	FROM league l WITH (NOLOCK)
	INNER JOIN match m WITH (NOLOCK)
		ON l.leagueid = m.leagueid
	WHERE m.eventstatus IN ('running')
		AND m.matchid IN (
			SELECT DISTINCT matchid
			FROM
				--bettrans WITH (NOLOCK, INDEX = IX_betrunning_recommend)
				dbo.Ost_f_bettrans_running() AS b
			WHERE statusID IN (0, 1)
				AND recommend = @AgID
				AND bettype IN (
					SELECT val
					FROM dbo.strSplit_Key(@Bettypes, ',')
					)
			)
	GROUP BY m.leagueid
		, l.leaguename
		, m.sporttype
	ORDER BY l.leaguename
END

GO
ALTER AUTHORIZATION ON [dbo].[Ost_LeagueSelRunning_Ag] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[Ost_LeagueSelRunning_Ag] TO [bodbDownlineNet] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Ost_LeagueSelRunning_Ag] TO [bodbDownlineNetView] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Ost_LeagueSelRunning_MAg]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Ost_LeagueSelRunning_MAg] @MAgID INT
	, @Language NVARCHAR(2) = 'E'
	, @Bettypes VARCHAR(100) = '0' --0: all, 1:1,3,7,8; 5:5,15 
AS
/*
	Created:20191021@Bobby
	Task: New Forecast at Agent Site 
	DB: DBOST.bodb_ost
	Original:DB042.bodb02.Age_LeagueSelRunning_MAg
	
	Revisions: 
		- 20191021@Bobby: Initialize [Redmine:114231] 
		
*/
BEGIN
	SET NOCOUNT ON

	SELECT @Bettypes = CASE @Bettypes
			WHEN '1'
				THEN '1,3,7,8'
			WHEN '5'
				THEN '5,15,167'
			ELSE '1,3,7,8,5,15,167'
			END

	SELECT m.leagueid
		, m.sporttype
	FROM league l WITH (NOLOCK)
	INNER JOIN match m WITH (NOLOCK)
		ON l.leagueid = m.leagueid
	WHERE m.eventstatus IN ('running')
		AND m.matchid IN (
			SELECT DISTINCT matchid
			FROM
				--bettrans WITH (NOLOCK, INDEX = IX_betrunning_mrecommend ) 
				dbo.Ost_f_bettrans_running() AS b
			WHERE statusID IN (0, 1)
				AND mrecommend = @MAgID
				AND bettype IN (
					SELECT val
					FROM dbo.strSplit_Key(@Bettypes, ',')
					)
			)
	GROUP BY m.leagueid
		, l.leaguename
		, m.sporttype
	ORDER BY l.leaguename
END

GO
ALTER AUTHORIZATION ON [dbo].[Ost_LeagueSelRunning_MAg] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[Ost_LeagueSelRunning_MAg] TO [bodbDownlineNet] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Ost_LeagueSelRunning_MAg] TO [bodbDownlineNetView] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Ost_LeagueSelRunning_SAg]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Ost_LeagueSelRunning_SAg] @SAgID INT
	, @Language NVARCHAR(2) = 'E'
	, @Bettypes VARCHAR(100) = '0' --0: all, 1:1,3,7,8; 5:5,15 
AS
/*
	Created:20191021@Bobby
	Task: New Forecast at Agent Site 
	DB: DBOST.bodb_ost
	Original:DB042.bodb02.Age_LeagueSelRunning_SAg
	
	Revisions: 
		- 20191021@Bobby: Initialize [Redmine:114231] 
		
*/
BEGIN
	SET NOCOUNT ON

	SELECT @Bettypes = CASE @Bettypes
			WHEN '1'
				THEN '1,3,7,8'
			WHEN '5'
				THEN '5,15,167'
			ELSE '1,3,7,8,5,15,167'
			END

	SELECT m.leagueid
		, m.sporttype
	FROM league l WITH (NOLOCK)
	INNER JOIN match m WITH (NOLOCK)
		ON l.leagueid = m.leagueid
	WHERE m.eventstatus IN ('running')
		AND m.matchid IN (
			SELECT DISTINCT matchid
			FROM
				--bettrans WITH (NOLOCK,INDEX = IX_betrunning_srecommend) 
				dbo.Ost_f_bettrans_running() AS b
			WHERE statusID IN (0, 1)
				AND srecommend = @SAgID
				AND bettype IN (
					SELECT val
					FROM dbo.strSplit_Key(@Bettypes, ',')
					)
			)
	GROUP BY m.leagueid
		, l.leagueid
		, m.sporttype
	ORDER BY l.leagueid
END

GO
ALTER AUTHORIZATION ON [dbo].[Ost_LeagueSelRunning_SAg] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[Ost_LeagueSelRunning_SAg] TO [bodbDownlineNet] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Ost_LeagueSelRunning_SAg] TO [bodbDownlineNetView] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Ost_NewTotalBetsForeCast_Main]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Ost_NewTotalBetsForeCast_Main]   
    @CustID			INT  
    , @MatchIDList  VARCHAR (MAX)
    , @IsLive		BIT = 1  
	, @roleid		TINYINT = NULL
AS  
/*  
	Created By: 20191219@Bobby  
	Task: New Total Bet & Forecast [Redmine: 121898]   
	DB: DBOST/bodb_ost
	Original:DBAGE.bodb02.[Age_NewTotalBetsForeCast_Main]
	  
	Revisions:  
		- 20191219@Bobby : Move to bodb_ost - [Redmine:121898] 
	
	Example:
	exec Ost_NewTotalBetsForeCast_Main @MatchIDList='17354067,17354069,17354078,17354080,17354085,17354087,17354099,17354101',@IsLive=0,@CustID=18364243

*/
BEGIN  
	SET NOCOUNT ON
	DECLARE @_CustID	INT
	DECLARE @MatchIDs	TABLE(matchid INT PRIMARY KEY)

	DECLARE @MatchInfo TABLE(
		MatchID INT PRIMARY KEY
		, homeid INT
		, awayid INT
		, livehomescore INT
		, liveawayscore INT
		, HasLive BIT
		, kickofftime DATETIME
		, leagueid INT
		, showtime NVARCHAR(50)
		, scorediff INT
		, TotalGoals INT
		, IsEndOfHalfTime BIT
	)

	DECLARE @ForecastTbl TABLE(
		MatchID INT
		, BettypeID SMALLINT
		, F1 SMALLINT
		, F2 SMALLINT
		, F3 SMALLINT
		, F4 SMALLINT
		, F5 SMALLINT
		, HighlightValue_3_8 SMALLINT
		, PRIMARY KEY CLUSTERED (
			BettypeID
			, MatchID
		)
	)

	----------------------------------------
	SELECT @_CustID	= ISNULL(@CustID, 0)
	SELECT TOP 1
		@roleid			= roleid
	FROM bodb02.dbo.custInfo WITH(NOLOCK)
	WHERE @roleid IS NULL
	AND custid = @_CustID

	-- PARSE matchid
	INSERT INTO @MatchIDs(matchid)
	SELECT DISTINCT t.val 
	FROM dbo.strSplit_Key(@MatchIDList, ',') AS t

	-- SELECT match info
	INSERT INTO @MatchInfo (MatchID, homeid, awayid, livehomescore, liveawayscore, HasLive, kickofftime, leagueid, showtime,scorediff,totalGoals, IsEndOfHalfTime)
	SELECT m.matchid, m.homeid, m.awayid  
		, m.livehomescore  
		, m.liveawayscore
		, 0
		, m.kickofftime
		, m.leagueid
		, m.showtime
		, m.livehomescore - m.liveawayscore as scorediff
		, m.livehomescore + m.liveawayscore as TotalGoals
		, CASE WHEN DATEADD(MINUTE,45,kickofftime) < GETDATE() THEN 1 ELSE 0 END AS IsEndOfHalfTime 
	FROM dbo.match m WITH (NOLOCK)
	WHERE EXISTS (SELECT 1 FROM @MatchIDs t WHERE t.matchid = m.matchid) 
		AND m.eventstatus NOT IN ('completed','Internal')
	
	-- PREPARE F values
	IF @IsLive = 1
	BEGIN
		INSERT INTO @ForecastTbl (MatchID ,BettypeID ,F1, F2 , F3 , F4 , F5 )  
		SELECT DISTINCT od.MatchID,od.bettype
				, CASE 
						WHEN od.bettype IN (1,7) THEN m.scorediff + 2
						WHEN od.bettype IN (3,8) THEN m.TotalGoals + 4
						ELSE 0
				  END F1
				, CASE 
						WHEN od.bettype IN (1,7) THEN m.scorediff + 1
						WHEN od.bettype IN (3,8) THEN m.TotalGoals + 3
						ELSE 0
				  END F2
			  , CASE 
					WHEN od.bettype IN (1,7) THEN m.scorediff 
					WHEN od.bettype IN (3,8) THEN m.TotalGoals + 2 
					ELSE 0
			  END F3
			  , CASE 
					WHEN od.bettype IN (1,7) THEN m.scorediff - 1
					WHEN od.bettype IN (3,8) THEN m.TotalGoals + 1
					ELSE 0
			  END F4
			  , CASE 
					WHEN od.bettype IN (1,7) THEN m.scorediff - 2
					WHEN od.bettype IN (3,8) THEN m.TotalGoals 
					ELSE 0
			  END F5	
						
		FROM dbo.odds od WITH (NOLOCK) 
			INNER JOIN @MatchInfo M ON M.MatchID = OD.matchid --AND od.oddsstatus = 'running'
		WHERE (M.IsEndOfHalfTime = 0 AND od.bettype IN (1,3,7,8,5,15)) OR (M.IsEndOfHalfTime = 1 AND od.bettype IN (1,3,5))
		
	END
	ELSE --IF @IsLive = 0
	BEGIN
		INSERT INTO @ForecastTbl (MatchID ,BettypeID ,F1, F2 , F3 , F4 , F5, HighlightValue_3_8 )  
		SELECT F.matchid, F.bettype 
				, CASE WHEN F.bettype IN (5,15) THEN 0 ELSE ForecastScore + 2	END AS	F1
				, CASE WHEN F.bettype IN (5,15) THEN 0 ELSE ForecastScore + 1	END AS	F2
				, CASE WHEN F.bettype IN (5,15) THEN 0 ELSE ForecastScore		END AS	F3
				, CASE WHEN F.bettype IN (5,15) THEN 0 ELSE ForecastScore - 1	END AS	F4
				, CASE WHEN F.bettype IN (5,15) THEN 0 ELSE ForecastScore - 2	END AS	F5
				, CASE WHEN F.bettype IN (3,8) THEN HighlightValue_3_8 ELSE 0	END AS HighlightValue_3_8
			  
		FROM (
			SELECT DISTINCT od.MatchID,od.bettype
					, CASE WHEN od.bettype IN (1,7) THEN CAST(AVG (od.hdp1 - od.hdp2) AS SMALLINT)
						   WHEN od.bettype IN (3,8) THEN 
								CASE WHEN AVG (od.hdp1) < = 2  THEN 2  ELSE CAST (AVG (od.hdp1) AS SMALLINT)
								END
							ELSE 0	
						END AS ForecastScore
					, AVG (od.hdp1) AS HighlightValue_3_8		
			FROM dbo.odds od WITH (NOLOCK) 
				INNER JOIN @MatchInfo M ON M.MatchID = OD.matchid AND od.oddsstatus = 'running'
			WHERE (M.IsEndOfHalfTime = 0 AND od.bettype IN (1,3,7,8)) OR (M.IsEndOfHalfTime = 1 AND od.bettype IN (1,3))
			GROUP BY od.matchid,od.bettype
			
			UNION ALL
			
			SELECT DISTINCT od.MatchID,od.bettype
					, 0 ForecastScore
					, 0 AS HighlightValue_3_8		
			FROM dbo.odds od WITH (NOLOCK) 
				INNER JOIN @MatchInfo M ON M.MatchID = OD.matchid 
			WHERE (M.IsEndOfHalfTime = 0 AND od.bettype IN (5,15)) OR (M.IsEndOfHalfTime = 1 AND od.bettype IN (5))
			
		) AS F
	END

	CREATE TABLE #bettrans_AIO (
		matchid INT
		, bettype SMALLINT
		, betteam NVARCHAR(10)
		, livehomescore SMALLINT
		, liveawayscore SMALLINT
		, hdp1 SMALLMONEY
		, hdp2 SMALLMONEY
		, odds SMALLMONEY
		, betcount INT
		, SMA_stake MONEY
		, SMA_actual_stake MONEY
	)

	---------------
	CREATE CLUSTERED INDEX CIX_MatchBettypeAIO ON #bettrans_AIO(bettype, matchid)

	DECLARE @Bettype_AIO_tmp AS TABLE (
		bettype SMALLINT
		, IsEndOfHalfTime BIT
		, GroupByttype TINYINT
	)
		
	--GroupByttype=1
	INSERT INTO @Bettype_AIO_tmp (bettype,IsEndOfHalfTime, GroupByttype)
	VALUES (1,0,1), (3,0,1),(7,0,1),(8,0,1), (1,1,1), (3,1,1)

	--GroupByttype=2
	INSERT INTO @Bettype_AIO_tmp (bettype,IsEndOfHalfTime, GroupByttype)
	VALUES (5,0,2), (15,0,2), (5,1,2)

	IF @roleID = 2
	BEGIN
		-- bettrans 1_7_3_8
		INSERT INTO #bettrans_AIO (matchid,bettype,betteam,livehomescore,liveawayscore,hdp1,hdp2,Odds
			,betcount,SMA_stake,SMA_actual_stake
		)  
		SELECT b.matchid, b.bettype,b.betteam,b.livehomescore,b.liveawayscore,b.hdp1,b.hdp2,b.odds
			, COUNT(1) AS BetCount
			, SUM(b.stake * b.apositiontaking) AS SMA_stake
			, SUM(b.actual_stake * b.apositiontaking) AS SMA_actual_stake
			
		--FROM dbo.Ost_f_bettrans_running() b
		FROM dbo.bettrans b with(nolock)
			INNER JOIN @MatchInfo M ON b.matchid = m.MatchID
			INNER JOIN @Bettype_AIO_tmp bt ON bt.bettype = b.bettype AND M.IsEndOfHalfTime = bt.IsEndOfHalfTime
		WHERE b.recommend		= @_CustID 
			AND b.statusID IN (0,1)
		GROUP BY  b.matchid, b.bettype,b.betteam,b.livehomescore,b.liveawayscore,b.hdp1,b.hdp2,b.odds
	END
	ELSE 
	IF @roleID = 3
	BEGIN
		INSERT INTO #bettrans_AIO (matchid,bettype,betteam,livehomescore,liveawayscore,hdp1,hdp2,Odds
			,betcount,SMA_stake,SMA_actual_stake
		)  
		SELECT b.matchid, b.bettype,b.betteam,b.livehomescore,b.liveawayscore,b.hdp1,b.hdp2,b.odds
			, COUNT(1) AS BetCount
			, SUM(b.stake * b.mpositiontaking) AS SMA_stake
			, SUM(b.actual_stake * b.mpositiontaking) AS SMA_actual_stake
			
		--FROM dbo.Ost_f_bettrans_running() b
		FROM dbo.bettrans b with(nolock)
			INNER JOIN @MatchInfo M ON b.matchid = m.MatchID
			INNER JOIN @Bettype_AIO_tmp bt ON bt.bettype = b.bettype AND M.IsEndOfHalfTime = bt.IsEndOfHalfTime
		WHERE b.mrecommend	= @_CustID
			AND b.statusID IN (0,1)
		GROUP BY  b.matchid, b.bettype,b.betteam,b.livehomescore,b.liveawayscore,b.hdp1,b.hdp2,b.odds
					
	END
	ELSE 
	IF @roleID = 4
	BEGIN
		INSERT INTO #bettrans_AIO (matchid,bettype,betteam,livehomescore,liveawayscore,hdp1,hdp2,Odds
			,betcount,SMA_stake,SMA_actual_stake
		)  
		SELECT b.matchid, b.bettype,b.betteam,b.livehomescore,b.liveawayscore,b.hdp1,b.hdp2,b.odds
			, COUNT(1) AS BetCount
			, SUM(b.stake * b.spositiontaking) AS SMA_stake
			, SUM(b.actual_stake * b.spositiontaking) AS SMA_actual_stake
			
		--FROM dbo.Ost_f_bettrans_running() b
		FROM dbo.bettrans b with(nolock)
			INNER JOIN @MatchInfo M ON b.matchid = m.MatchID
			INNER JOIN @Bettype_AIO_tmp bt ON bt.bettype = b.bettype AND M.IsEndOfHalfTime = bt.IsEndOfHalfTime
		WHERE b.srecommend = @_CustID 
			AND b.statusID IN (0,1)
		GROUP BY b.matchid, b.bettype,b.betteam,b.livehomescore,b.liveawayscore,b.hdp1,b.hdp2,b.odds
	END
	
	-- Match info
	SELECT m.matchid, m.homeid, m.awayid  
		, m.livehomescore  
		, m.liveawayscore
		, m.HasLive
		, m.kickofftime
		, m.leagueid
		, m.showtime
		, @IsLive AS IsLive
	FROM @MatchInfo M
	
	-- Forecast winloss	
	-- Bettype HDP/OU
	SELECT f.matchid,f.BettypeID
		, SUM(ISNULL(F1.Winloss,0)) AS Winloss1
		, SUM(ISNULL(F2.Winloss,0)) AS Winloss2
		, SUM(ISNULL(F3.Winloss,0)) AS Winloss3
		, SUM(ISNULL(F4.Winloss,0)) AS Winloss4
		, SUM(ISNULL(F5.Winloss,0)) AS Winloss5
	FROM @ForecastTbl F 
		LEFT JOIN #bettrans_AIO b ON b.matchid = f.MatchID AND b.bettype = F.BettypeID
		OUTER APPLY [dbo].[Ost_F_TotalBetsForecast_CalWinLoss](F.BettypeID, F.F1, b.betteam, b.hdp1, b.hdp2, b.SMA_stake, b.SMA_actual_stake, b.odds, b.livehomescore, b.liveawayscore) AS F1
		OUTER APPLY [dbo].[Ost_F_TotalBetsForecast_CalWinLoss](F.BettypeID, F.F2, b.betteam, b.hdp1, b.hdp2, b.SMA_stake, b.SMA_actual_stake, b.odds, b.livehomescore, b.liveawayscore) AS F2
		OUTER APPLY [dbo].[Ost_F_TotalBetsForecast_CalWinLoss](F.BettypeID, F.F3, b.betteam, b.hdp1, b.hdp2, b.SMA_stake, b.SMA_actual_stake, b.odds, b.livehomescore, b.liveawayscore) AS F3
		OUTER APPLY [dbo].[Ost_F_TotalBetsForecast_CalWinLoss](F.BettypeID, F.F4, b.betteam, b.hdp1, b.hdp2, b.SMA_stake, b.SMA_actual_stake, b.odds, b.livehomescore, b.liveawayscore) AS F4
		OUTER APPLY [dbo].[Ost_F_TotalBetsForecast_CalWinLoss](F.BettypeID, F.F5, b.betteam, b.hdp1, b.hdp2, b.SMA_stake, b.SMA_actual_stake, b.odds, b.livehomescore, b.liveawayscore) AS F5
	WHERE F.BettypeID IN (1,3,7,8)
	GROUP BY F.matchid,F.BettypeID

	-- Bettype 1X2
	UNION ALL
	SELECT matchid, BettypeID,   
		-- Member View
		--Negative number in black indicates the amount SMA may win and Members may lose.	
		--Positive number in red indicates the amount SMA may lose and Members may win.
		(x.homewin - x.awaylose - x.drawlose) 'w1',
		(x.drawwin - x.awaylose - x.homelose) 'wx',  
		(x.awaywin - x.homelose - x.drawlose) 'w2',
		0,
		0  -- away win, agent lose
	FROM (
		SELECT  F.matchid, F.BettypeID,
			SUM(CASE WHEN betteam='1' THEN (CASE WHEN odds < 0 THEN 1 ELSE odds - 1 END) * SMA_stake ELSE 0 END) homewin,  
			SUM(CASE WHEN betteam='2' THEN (CASE WHEN odds < 0 THEN 1 ELSE odds - 1 END) * SMA_stake ELSE 0 END) awaywin,  
			SUM(CASE WHEN betteam='x' THEN (CASE WHEN odds < 0 THEN 1 ELSE odds - 1 END) * SMA_stake ELSE 0 END) drawwin,  

			SUM(CASE WHEN betteam='1' THEN (CASE WHEN odds < 0 THEN ABS(odds - 1) ELSE 1 END)  * SMA_stake ELSE 0 END) homelose,  
			SUM(CASE WHEN betteam='2' THEN (CASE WHEN odds < 0 THEN ABS(odds - 1) ELSE 1 END)  * SMA_stake ELSE 0 END) awaylose,  
			SUM(CASE WHEN betteam='x' THEN (CASE WHEN odds < 0 THEN ABS(odds - 1) ELSE 1 END)  * SMA_stake ELSE 0 END) drawlose

		FROM @ForecastTbl F
			LEFT JOIN #bettrans_AIO b ON F.matchid = b.matchid AND F.bettypeid = b.bettype
		WHERE f.BettypeID IN (5,15)	
		GROUP BY F.matchid,F.BettypeID
	) AS  x   

	-- Forecast Score Definition
	SELECT f.matchid,f.BettypeID
		, SUM(ISNULL(T.SMA_stake,0)) AS TurnOver,SUM(ISNULL(T.BetCount,0)) AS BetCount
		, f.F1 AS column1	
		, f.F2 AS column2	
		, f.F3 AS column3	
		, f.F4 AS column4	
		, f.F5 AS column5	
		, ISNULL(f.HighlightValue_3_8,0) AS HighlightValue_3_8
			
	FROM @ForecastTbl f 
		LEFT JOIN #bettrans_AIO AS T ON T.BetType = f.BetTypeID AND T.matchid = F.MatchID
	GROUP BY f.matchid,f.BettypeID
		,f.F1
		,f.F2
		,f.F3
		,f.F4
		,f.F5
		,f.HighlightValue_3_8

	-- CLEAN:
	DROP TABLE #bettrans_AIO
END 

GO
ALTER AUTHORIZATION ON [dbo].[Ost_NewTotalBetsForeCast_Main] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[Ost_NewTotalBetsForeCast_Main] TO [bodbDownlineNet] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Ost_NewTotalBetsForeCast_Main] TO [bodbDownlineNetView] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Ost_NewTotalBetsForeCast_Main_xtest]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Ost_NewTotalBetsForeCast_Main_xtest]   
    @CustID			INT  
    , @MatchIDList  VARCHAR (MAX)
    , @IsLive		BIT = 1  
	, @roleid		TINYINT = NULL
AS  
/*  
	Created By: 20191219@Bobby  
	Task: New Total Bet & Forecast [Redmine: 121898]   
	DB: DBOST/bodb_ost
	Original:DBAGE.bodb02.[Age_NewTotalBetsForeCast_Main]
	  
	Revisions:  
		- 20191219@Bobby : Move to bodb_ost - [Redmine:121898] 
	
	Example:
	exec Ost_NewTotalBetsForeCast_Main_xtest @MatchIDList='17354067,17354069,17354078,17354080,17354085,17354087,17354099,17354101',@IsLive=0,@CustID=18364243

*/
BEGIN  
	SET NOCOUNT ON
	DECLARE @_CustID	INT
	DECLARE @MatchIDs	TABLE(matchid INT PRIMARY KEY)

	DECLARE @MatchInfo TABLE(
		MatchID INT PRIMARY KEY
		, homeid INT
		, awayid INT
		, livehomescore INT
		, liveawayscore INT
		, HasLive BIT
		, kickofftime DATETIME
		, leagueid INT
		, showtime NVARCHAR(50)
		, scorediff INT
		, TotalGoals INT
		, IsEndOfHalfTime BIT
	)

	DECLARE @ForecastTbl TABLE(
		MatchID INT
		, BettypeID SMALLINT
		, F1 SMALLINT
		, F2 SMALLINT
		, F3 SMALLINT
		, F4 SMALLINT
		, F5 SMALLINT
		, HighlightValue_3_8 SMALLINT
		, PRIMARY KEY CLUSTERED (
			BettypeID
			, MatchID
		)
	)

	----------------------------------------
	SELECT @_CustID	= ISNULL(@CustID, 0)
	SELECT TOP 1
		@roleid			= roleid
	FROM bodb02.dbo.custInfo WITH(NOLOCK)
	WHERE @roleid IS NULL
	AND custid = @_CustID

	-- PARSE matchid
	INSERT INTO @MatchIDs(matchid)
	SELECT DISTINCT t.val 
	FROM dbo.strSplit_Key(@MatchIDList, ',') AS t

	-- SELECT match info
	INSERT INTO @MatchInfo (MatchID, homeid, awayid, livehomescore, liveawayscore, HasLive, kickofftime, leagueid, showtime,scorediff,totalGoals, IsEndOfHalfTime)
	SELECT m.matchid, m.homeid, m.awayid  
		, m.livehomescore  
		, m.liveawayscore
		, 0
		, m.kickofftime
		, m.leagueid
		, m.showtime
		, m.livehomescore - m.liveawayscore as scorediff
		, m.livehomescore + m.liveawayscore as TotalGoals
		, CASE WHEN DATEADD(MINUTE,45,kickofftime) < GETDATE() THEN 1 ELSE 0 END AS IsEndOfHalfTime 
	FROM dbo.match m WITH (NOLOCK)
	WHERE EXISTS (SELECT 1 FROM @MatchIDs t WHERE t.matchid = m.matchid) 
		AND m.eventstatus NOT IN ('completed','Internal')
	
	-- PREPARE F values
	IF @IsLive = 1
	BEGIN
		INSERT INTO @ForecastTbl (MatchID ,BettypeID ,F1, F2 , F3 , F4 , F5 )  
		SELECT DISTINCT od.MatchID,od.bettype
				, CASE 
						WHEN od.bettype IN (1,7) THEN m.scorediff + 2
						WHEN od.bettype IN (3,8) THEN m.TotalGoals + 4
						ELSE 0
				  END F1
				, CASE 
						WHEN od.bettype IN (1,7) THEN m.scorediff + 1
						WHEN od.bettype IN (3,8) THEN m.TotalGoals + 3
						ELSE 0
				  END F2
			  , CASE 
					WHEN od.bettype IN (1,7) THEN m.scorediff 
					WHEN od.bettype IN (3,8) THEN m.TotalGoals + 2 
					ELSE 0
			  END F3
			  , CASE 
					WHEN od.bettype IN (1,7) THEN m.scorediff - 1
					WHEN od.bettype IN (3,8) THEN m.TotalGoals + 1
					ELSE 0
			  END F4
			  , CASE 
					WHEN od.bettype IN (1,7) THEN m.scorediff - 2
					WHEN od.bettype IN (3,8) THEN m.TotalGoals 
					ELSE 0
			  END F5	
						
		FROM dbo.odds od WITH (NOLOCK) 
			INNER JOIN @MatchInfo M ON M.MatchID = OD.matchid --AND od.oddsstatus = 'running'
		WHERE (M.IsEndOfHalfTime = 0 AND od.bettype IN (1,3,7,8,5,15)) OR (M.IsEndOfHalfTime = 1 AND od.bettype IN (1,3,5))
		
	END
	ELSE --IF @IsLive = 0
	BEGIN
		INSERT INTO @ForecastTbl (MatchID ,BettypeID ,F1, F2 , F3 , F4 , F5, HighlightValue_3_8 )  
		SELECT F.matchid, F.bettype 
				, CASE WHEN F.bettype IN (5,15) THEN 0 ELSE ForecastScore + 2	END AS	F1
				, CASE WHEN F.bettype IN (5,15) THEN 0 ELSE ForecastScore + 1	END AS	F2
				, CASE WHEN F.bettype IN (5,15) THEN 0 ELSE ForecastScore		END AS	F3
				, CASE WHEN F.bettype IN (5,15) THEN 0 ELSE ForecastScore - 1	END AS	F4
				, CASE WHEN F.bettype IN (5,15) THEN 0 ELSE ForecastScore - 2	END AS	F5
				, CASE WHEN F.bettype IN (3,8) THEN HighlightValue_3_8 ELSE 0	END AS HighlightValue_3_8
			  
		FROM (
			SELECT DISTINCT od.MatchID,od.bettype
					, CASE WHEN od.bettype IN (1,7) THEN CAST(AVG (od.hdp1 - od.hdp2) AS SMALLINT)
						   WHEN od.bettype IN (3,8) THEN 
								CASE WHEN AVG (od.hdp1) < = 2  THEN 2  ELSE CAST (AVG (od.hdp1) AS SMALLINT)
								END
							ELSE 0	
						END AS ForecastScore
					, AVG (od.hdp1) AS HighlightValue_3_8		
			FROM dbo.odds od WITH (NOLOCK) 
				INNER JOIN @MatchInfo M ON M.MatchID = OD.matchid AND od.oddsstatus = 'running'
			WHERE (M.IsEndOfHalfTime = 0 AND od.bettype IN (1,3,7,8)) OR (M.IsEndOfHalfTime = 1 AND od.bettype IN (1,3))
			GROUP BY od.matchid,od.bettype
			
			UNION ALL
			
			SELECT DISTINCT od.MatchID,od.bettype
					, 0 ForecastScore
					, 0 AS HighlightValue_3_8		
			FROM dbo.odds od WITH (NOLOCK) 
				INNER JOIN @MatchInfo M ON M.MatchID = OD.matchid 
			WHERE (M.IsEndOfHalfTime = 0 AND od.bettype IN (5,15)) OR (M.IsEndOfHalfTime = 1 AND od.bettype IN (5))
			
		) AS F
	END

	CREATE TABLE #bettrans_AIO (
		matchid INT
		, bettype SMALLINT
		, betteam NVARCHAR(10)
		, livehomescore SMALLINT
		, liveawayscore SMALLINT
		, hdp1 SMALLMONEY
		, hdp2 SMALLMONEY
		, odds SMALLMONEY
		, betcount INT
		, SMA_stake MONEY
		, SMA_actual_stake MONEY
	)

	---------------
	CREATE CLUSTERED INDEX CIX_MatchBettypeAIO ON #bettrans_AIO(bettype, matchid)

	DECLARE @Bettype_AIO_tmp AS TABLE (
		bettype SMALLINT
		, IsEndOfHalfTime BIT
		, GroupByttype TINYINT
	)
		
	--GroupByttype=1
	INSERT INTO @Bettype_AIO_tmp (bettype,IsEndOfHalfTime, GroupByttype)
	VALUES (1,0,1), (3,0,1),(7,0,1),(8,0,1), (1,1,1), (3,1,1)

	--GroupByttype=2
	INSERT INTO @Bettype_AIO_tmp (bettype,IsEndOfHalfTime, GroupByttype)
	VALUES (5,0,2), (15,0,2), (5,1,2)

	IF @roleID = 2
	BEGIN
		-- bettrans 1_7_3_8
		INSERT INTO #bettrans_AIO (matchid,bettype,betteam,livehomescore,liveawayscore,hdp1,hdp2,Odds
			,betcount,SMA_stake,SMA_actual_stake
		)  
		SELECT b.matchid, b.bettype,b.betteam,b.livehomescore,b.liveawayscore,b.hdp1,b.hdp2,b.odds
			, COUNT(1) AS BetCount
			, SUM(b.stake * b.apositiontaking) AS SMA_stake
			, SUM(b.actual_stake * b.apositiontaking) AS SMA_actual_stake
			
		--FROM dbo.Ost_f_bettrans_running() b
		FROM dbo.bettrans b with(nolock)
			INNER JOIN @MatchInfo M ON b.matchid = m.MatchID
			INNER JOIN @Bettype_AIO_tmp bt ON bt.bettype = b.bettype AND M.IsEndOfHalfTime = bt.IsEndOfHalfTime
		WHERE b.recommend		= @_CustID 
			AND b.statusID IN (0,1)
		GROUP BY  b.matchid, b.bettype,b.betteam,b.livehomescore,b.liveawayscore,b.hdp1,b.hdp2,b.odds
	END
	ELSE 
	IF @roleID = 3
	BEGIN
		INSERT INTO #bettrans_AIO (matchid,bettype,betteam,livehomescore,liveawayscore,hdp1,hdp2,Odds
			,betcount,SMA_stake,SMA_actual_stake
		)  
		SELECT b.matchid, b.bettype,b.betteam,b.livehomescore,b.liveawayscore,b.hdp1,b.hdp2,b.odds
			, COUNT(1) AS BetCount
			, SUM(b.stake * b.mpositiontaking) AS SMA_stake
			, SUM(b.actual_stake * b.mpositiontaking) AS SMA_actual_stake
			
		--FROM dbo.Ost_f_bettrans_running() b
		FROM dbo.bettrans b with(nolock)
			INNER JOIN @MatchInfo M ON b.matchid = m.MatchID
			INNER JOIN @Bettype_AIO_tmp bt ON bt.bettype = b.bettype AND M.IsEndOfHalfTime = bt.IsEndOfHalfTime
		WHERE b.mrecommend	= @_CustID
			AND b.statusID IN (0,1)
		GROUP BY  b.matchid, b.bettype,b.betteam,b.livehomescore,b.liveawayscore,b.hdp1,b.hdp2,b.odds
					
	END
	ELSE 
	IF @roleID = 4
	BEGIN
		INSERT INTO #bettrans_AIO (matchid,bettype,betteam,livehomescore,liveawayscore,hdp1,hdp2,Odds
			,betcount,SMA_stake,SMA_actual_stake
		)  
		SELECT b.matchid, b.bettype,b.betteam,b.livehomescore,b.liveawayscore,b.hdp1,b.hdp2,b.odds
			, COUNT(1) AS BetCount
			, SUM(b.stake * b.spositiontaking) AS SMA_stake
			, SUM(b.actual_stake * b.spositiontaking) AS SMA_actual_stake
			
		--FROM dbo.Ost_f_bettrans_running() b
		FROM dbo.bettrans b with(nolock)
			INNER JOIN @MatchInfo M ON b.matchid = m.MatchID
			INNER JOIN @Bettype_AIO_tmp bt ON bt.bettype = b.bettype AND M.IsEndOfHalfTime = bt.IsEndOfHalfTime
		WHERE b.srecommend = @_CustID 
			AND b.statusID IN (0,1)
		GROUP BY b.matchid, b.bettype,b.betteam,b.livehomescore,b.liveawayscore,b.hdp1,b.hdp2,b.odds
	END
	
	-- Match info
	SELECT m.matchid, m.homeid, m.awayid  
		, m.livehomescore  
		, m.liveawayscore
		, m.HasLive
		, m.kickofftime
		, m.leagueid
		, m.showtime
		, @IsLive AS IsLive
	FROM @MatchInfo M
	
	-- Forecast winloss	
	-- Bettype HDP/OU
	SELECT f.matchid,f.BettypeID
		, SUM(ISNULL(F1.Winloss,0)) AS Winloss1
		, SUM(ISNULL(F2.Winloss,0)) AS Winloss2
		, SUM(ISNULL(F3.Winloss,0)) AS Winloss3
		, SUM(ISNULL(F4.Winloss,0)) AS Winloss4
		, SUM(ISNULL(F5.Winloss,0)) AS Winloss5
	FROM @ForecastTbl F 
		LEFT JOIN #bettrans_AIO b ON b.matchid = f.MatchID AND b.bettype = F.BettypeID
		OUTER APPLY [dbo].[Ost_F_TotalBetsForecast_CalWinLoss_xtest](F.BettypeID, F.F1, b.betteam, b.hdp1, b.hdp2, b.SMA_stake, b.SMA_actual_stake, b.odds, b.livehomescore, b.liveawayscore) AS F1
		OUTER APPLY [dbo].[Ost_F_TotalBetsForecast_CalWinLoss_xtest](F.BettypeID, F.F2, b.betteam, b.hdp1, b.hdp2, b.SMA_stake, b.SMA_actual_stake, b.odds, b.livehomescore, b.liveawayscore) AS F2
		OUTER APPLY [dbo].[Ost_F_TotalBetsForecast_CalWinLoss_xtest](F.BettypeID, F.F3, b.betteam, b.hdp1, b.hdp2, b.SMA_stake, b.SMA_actual_stake, b.odds, b.livehomescore, b.liveawayscore) AS F3
		OUTER APPLY [dbo].[Ost_F_TotalBetsForecast_CalWinLoss_xtest](F.BettypeID, F.F4, b.betteam, b.hdp1, b.hdp2, b.SMA_stake, b.SMA_actual_stake, b.odds, b.livehomescore, b.liveawayscore) AS F4
		OUTER APPLY [dbo].[Ost_F_TotalBetsForecast_CalWinLoss_xtest](F.BettypeID, F.F5, b.betteam, b.hdp1, b.hdp2, b.SMA_stake, b.SMA_actual_stake, b.odds, b.livehomescore, b.liveawayscore) AS F5
	WHERE F.BettypeID IN (1,3,7,8)
	GROUP BY F.matchid,F.BettypeID

	-- Bettype 1X2
	UNION ALL
	SELECT matchid, BettypeID,   
		-- Member View
		--Negative number in black indicates the amount SMA may win and Members may lose.	
		--Positive number in red indicates the amount SMA may lose and Members may win.
		(x.homewin - x.awaylose - x.drawlose) 'w1',
		(x.drawwin - x.awaylose - x.homelose) 'wx',  
		(x.awaywin - x.homelose - x.drawlose) 'w2',
		0,
		0  -- away win, agent lose
	FROM (
		SELECT  F.matchid, F.BettypeID,
			SUM(CASE WHEN betteam='1' THEN (CASE WHEN odds < 0 THEN 1 ELSE odds - 1 END) * SMA_stake ELSE 0 END) homewin,  
			SUM(CASE WHEN betteam='2' THEN (CASE WHEN odds < 0 THEN 1 ELSE odds - 1 END) * SMA_stake ELSE 0 END) awaywin,  
			SUM(CASE WHEN betteam='x' THEN (CASE WHEN odds < 0 THEN 1 ELSE odds - 1 END) * SMA_stake ELSE 0 END) drawwin,  

			SUM(CASE WHEN betteam='1' THEN (CASE WHEN odds < 0 THEN ABS(odds - 1) ELSE 1 END)  * SMA_stake ELSE 0 END) homelose,  
			SUM(CASE WHEN betteam='2' THEN (CASE WHEN odds < 0 THEN ABS(odds - 1) ELSE 1 END)  * SMA_stake ELSE 0 END) awaylose,  
			SUM(CASE WHEN betteam='x' THEN (CASE WHEN odds < 0 THEN ABS(odds - 1) ELSE 1 END)  * SMA_stake ELSE 0 END) drawlose

		FROM @ForecastTbl F
			LEFT JOIN #bettrans_AIO b ON F.matchid = b.matchid AND F.bettypeid = b.bettype
		WHERE f.BettypeID IN (5,15)	
		GROUP BY F.matchid,F.BettypeID
	) AS  x   

	-- Forecast Score Definition
	SELECT f.matchid,f.BettypeID
		, SUM(ISNULL(T.SMA_stake,0)) AS TurnOver,SUM(ISNULL(T.BetCount,0)) AS BetCount
		, f.F1 AS column1	
		, f.F2 AS column2	
		, f.F3 AS column3	
		, f.F4 AS column4	
		, f.F5 AS column5	
		, ISNULL(f.HighlightValue_3_8,0) AS HighlightValue_3_8
			
	FROM @ForecastTbl f 
		LEFT JOIN #bettrans_AIO AS T ON T.BetType = f.BetTypeID AND T.matchid = F.MatchID
	GROUP BY f.matchid,f.BettypeID
		,f.F1
		,f.F2
		,f.F3
		,f.F4
		,f.F5
		,f.HighlightValue_3_8

	-- CLEAN:
	DROP TABLE #bettrans_AIO
END 

GO
ALTER AUTHORIZATION ON [dbo].[Ost_NewTotalBetsForeCast_Main_xtest] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[Ost_NewTotalBetsForeCast_Main_xtest] TO [bodbDownlineNet] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Ost_NewTotalBetsForeCast_Main_xtest] TO [bodbDownlineNetView] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Repl_InsUpdBettrans_TVP]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Repl_InsUpdBettrans_TVP]
        @TVP_Bettrans dbo.TVP_Bettrans READONLY
AS
/*
	2019/10/14@Alex: new create
*/
BEGIN
        SET NOCOUNT ON;

		MERGE dbo.bettrans as T
		USING @TVP_Bettrans as TVP
		ON T.transid = TVP.transid
		WHEN MATCHED 
			THEN
				UPDATE SET 
					transid	= TVP.transid,
					custid = TVP.custid,
					transdate = TVP.transdate,
					oddsid = TVP.oddsid,
					hdp1 = TVP.hdp1,
					hdp2 = TVP.hdp2,
					odds = TVP.odds,
					stake = TVP.stake,
					[status] = TVP.status,
					winlost = TVP.winlost,
					awinlost = TVP.awinlost,
					mwinlost = TVP.mwinlost,
					playercomm = TVP.playercomm,
					comm = TVP.comm,
					acomm = TVP.acomm,
					apositiontaking = TVP.apositiontaking,
					mpositiontaking = TVP.mpositiontaking,
					tpositiontaking = TVP.tpositiontaking,
					playerdiscount = TVP.playerdiscount,
					discount = TVP.discount,
					adiscount = TVP.adiscount,
					livehomescore = TVP.livehomescore,
					liveawayscore = TVP.liveawayscore,
					liveindicator = TVP.liveindicator,
					betteam = TVP.betteam,
					creator = TVP.creator,
					refno = TVP.refno,
					comstatus = TVP.comstatus,
					winlostdate = TVP.winlostdate,
					betfrom = TVP.betfrom,
					betcheck = TVP.betcheck,
					checktime = TVP.checktime,
					oddsspread = TVP.oddsspread,
					actualrate = TVP.actualrate,
					matchid = TVP.matchid,
					recommend = TVP.recommend,
					mrecommend = TVP.mrecommend,
					ruben = TVP.ruben,
					betid = TVP.betid,
					statuswinlost = TVP.statuswinlost,
					modds = TVP.modds,
					bettype = TVP.bettype,
					betdaqid = TVP.betdaqid,
					actual_stake = TVP.actual_stake,
					currency = TVP.currency,
					ip = TVP.ip,
					transdesc = TVP.transdesc,
					sdiscount = TVP.sdiscount,
					scomm = TVP.scomm,
					spositiontaking = TVP.spositiontaking,
					swinlost = TVP.swinlost,
					srecommend = TVP.srecommend,
					Username = TVP.Username,
					CurrencyName = TVP.CurrencyName,
					virtualrate = TVP.virtualrate,
					oddstype = TVP.oddstype,
					statusID = TVP.statusID,
					currency2 = TVP.currency2,
					balance = TVP.balance,
					SecAcceptFlag = TVP.SecAcceptFlag,
					transid2 = TVP.transid2,
					recommdate = TVP.recommdate,
					ExtraInfo = TVP.ExtraInfo,
					WalletType = TVP.WalletType,
					BonusID = TVP.BonusID,
					RefCode = TVP.RefCode,
					SettlementTime = TVP.SettlementTime,
					epositiontaking = TVP.epositiontaking,
					ReplTstamp = TVP.ReplTstamp
		WHEN NOT MATCHED
			THEN
				INSERT ( 
					transid,custid,transdate,oddsid,hdp1,hdp2,odds,stake,[status],winlost,awinlost,mwinlost,playercomm,comm,acomm,apositiontaking,
					mpositiontaking,tpositiontaking,playerdiscount,discount,adiscount,livehomescore,liveawayscore,liveindicator,betteam,creator,
					refno,comstatus,winlostdate,betfrom,betcheck,checktime,oddsspread,actualrate,matchid,recommend,mrecommend,ruben,betid,statuswinlost,
					modds,bettype,betdaqid,actual_stake,currency,ip,transdesc,sdiscount,scomm,spositiontaking,swinlost,srecommend,Username,
					CurrencyName,virtualrate,oddstype,statusID,currency2,balance,SecAcceptFlag,transid2,recommdate,ExtraInfo,WalletType,BonusID,RefCode,
					SettlementTime, epositiontaking, ReplTstamp
					) 
				VALUES ( 
					TVP.transid,TVP.custid,TVP.transdate,TVP.oddsid,TVP.hdp1,TVP.hdp2,TVP.odds,TVP.stake,TVP.[status],TVP.winlost,TVP.awinlost,
					TVP.mwinlost,TVP.playercomm,TVP.comm,TVP.acomm,TVP.apositiontaking,TVP.mpositiontaking,TVP.tpositiontaking,TVP.playerdiscount,
					TVP.discount,TVP.adiscount,TVP.livehomescore,TVP.liveawayscore,TVP.liveindicator,TVP.betteam,TVP.creator,TVP.refno,TVP.comstatus,
					TVP.winlostdate,TVP.betfrom,TVP.betcheck,TVP.checktime,TVP.oddsspread,TVP.actualrate,TVP.matchid,TVP.recommend,TVP.mrecommend,
					TVP.ruben,TVP.betid,TVP.statuswinlost,TVP.modds,TVP.bettype,TVP.betdaqid,TVP.actual_stake,TVP.currency,TVP.ip,TVP.transdesc,
					TVP.sdiscount,TVP.scomm,TVP.spositiontaking,TVP.swinlost,TVP.srecommend,TVP.Username,TVP.CurrencyName,TVP.virtualrate,
					TVP.oddstype,TVP.statusID,TVP.currency2,TVP.balance,TVP.SecAcceptFlag,TVP.transid2,TVP.recommdate,TVP.ExtraInfo,TVP.WalletType,
					TVP.BonusID,TVP.RefCode,TVP.SettlementTime,TVP.epositiontaking,TVP.ReplTstamp
					);
END


GO
ALTER AUTHORIZATION ON [dbo].[Repl_InsUpdBettrans_TVP] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[Repl_InsUpdBettrans_TVP] TO [repl_ap] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Repl_QueryReplLog]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Repl_QueryReplLog]
	@CreatedDateStart datetime,
	@CreatedDateEnd datetime
AS
/*
	2019/11/11@Alex: new create
*/
BEGIN
	SET NOCOUNT ON;

	SELECT *
	FROM ReplLog WITH (NOLOCK)
	WHERE CreatedDate >= @CreatedDateStart and CreatedDate<=@CreatedDateEnd
	
END



GO
ALTER AUTHORIZATION ON [dbo].[Repl_QueryReplLog] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[Repl_QueryReplLog] TO [repl_ap] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Repl_QueryReplValue]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Repl_QueryReplValue]
	@ReplKey tinyint
AS
/*
	2019/11/11@Alex: new create
*/
BEGIN
	SET NOCOUNT ON;

	SELECT ReplValue
	FROM ReplRef WITH (NOLOCK)
	WHERE ReplKey = @ReplKey
	
END


GO
ALTER AUTHORIZATION ON [dbo].[Repl_QueryReplValue] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[Repl_QueryReplValue] TO [repl_ap] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Repl_UpdateReplValue]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Repl_UpdateReplValue]
	@ReplKey tinyint,
	@ReplValue bigint
AS
/*
	2019/11/11@Alex: new create
*/
BEGIN
	SET NOCOUNT ON;

	UPDATE ReplRef SET ReplValue = @ReplValue
	WHERE ReplKey = @ReplKey
END


GO
ALTER AUTHORIZATION ON [dbo].[Repl_UpdateReplValue] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[Repl_UpdateReplValue] TO [repl_ap] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[task_dba_olddata_cleanup]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[task_dba_olddata_cleanup]
(
	@kdays int = 1 
)
as
begin
	set nocount on 

	declare @matchlist table (matchid int) 
	
	;with rs as 
	(
		select matchid 
		from bettrans with(nolock)
		group by matchid 
	)
	insert into @matchlist
	select rs.matchid 
	from bodb02.dbo.match m with(nolock)
		inner join rs on m.matchid = rs.matchid 
	where eventdate < dateadd(day,-@kdays, convert(varchar(20),getdate(),23))

	declare @singlematch table (matchid int)
	while exists (select top 1 * from @matchlist)
	begin
		
		delete from @singlematch
		delete top(1) from @matchlist
		output deleted.matchid into @singlematch 
		
		while 1 = 1 
		begin
			delete top(1000)
			from bodb_ost.dbo.bettrans with(rowlock)
			where matchid in (select top 1 matchid from @singlematch)
			if @@ROWCOUNT < 1000
				break
		end
		waitfor delay '00:00:00.180'
	end

	--- delete data for row non-have matchid in match table
	declare @winlostdate datetime =  dateadd(day,-7, convert(varchar(20),getdate(),23))
	create table #transidlist (transid bigint)
	declare @rtransid table (transid bigint)
	declare @rc int = 1 

	insert into #transidlist
	select transid 
	from bettrans with(nolock)
	where winlostdate < @winlostdate

	while @rc > 0 
	begin
		delete top(1000) t
		output deleted.transid into @rtransid
		from #transidlist t  
		
		delete from bodb_ost.dbo.bettrans with(rowlock) where transid in (select top(1000) transid from @rtransid)
		set @rc = @@ROWCOUNT
		delete from @rtransid
	end 
end
 
GO
ALTER AUTHORIZATION ON [dbo].[task_dba_olddata_cleanup] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[vndba_monitor_replication_latency]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[vndba_monitor_replication_latency]
(
	@fromdate datetime 
)
as 
begin
	select logdate, vendor, latency
	from (
			select logdate,  msource-msqlrep as MSSQLServerReplication,  msource-mmrep  as inhouseReplication
			from vnDBA_ReplicationLatencyChecking with(nolock)
			where logdate > @fromdate  
		) t
		unpivot  (latency for vendor in (MSSQLServerReplication,inhouseReplication)
		) as unpvt 

end

GO
ALTER AUTHORIZATION ON [dbo].[vndba_monitor_replication_latency] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[vndba_monitor_replication_latency] TO [SqlLink] AS [dbo]
GO
/****** Object:  Synonym [dbo].[league]    Script Date: 5/25/2020 11:01:18 PM ******/
CREATE SYNONYM [dbo].[league] FOR [bodb02].[dbo].[league]
GO
ALTER AUTHORIZATION ON [dbo].[league] TO  SCHEMA OWNER 
GO
/****** Object:  Synonym [dbo].[match]    Script Date: 5/25/2020 11:01:18 PM ******/
CREATE SYNONYM [dbo].[match] FOR [bodb02].[dbo].[match]
GO
ALTER AUTHORIZATION ON [dbo].[match] TO  SCHEMA OWNER 
GO
/****** Object:  Synonym [dbo].[match_remark]    Script Date: 5/25/2020 11:01:18 PM ******/
CREATE SYNONYM [dbo].[match_remark] FOR [bodb02].[dbo].[match_remark]
GO
ALTER AUTHORIZATION ON [dbo].[match_remark] TO  SCHEMA OWNER 
GO
/****** Object:  Synonym [dbo].[odds]    Script Date: 5/25/2020 11:01:18 PM ******/
CREATE SYNONYM [dbo].[odds] FOR [bodb02].[dbo].[odds]
GO
ALTER AUTHORIZATION ON [dbo].[odds] TO  SCHEMA OWNER 
GO
/****** Object:  Synonym [dbo].[OddsES]    Script Date: 5/25/2020 11:01:18 PM ******/
CREATE SYNONYM [dbo].[OddsES] FOR [bodb02].[dbo].[OddsES]
GO
ALTER AUTHORIZATION ON [dbo].[OddsES] TO  SCHEMA OWNER 
GO
/****** Object:  UserDefinedFunction [dbo].[strSplit]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


 

CREATE FUNCTION [dbo].[strSplit] (
	@string NVARCHAR(max)
	, @splitter CHAR(1)
	)
RETURNS @res TABLE (
	id INT PRIMARY KEY
	, rank INT
	, val NVARCHAR(4000)
	)
AS
/*
	Created:20191021@Bobby
	Task: New Forecast at Agent Site 
	DB: DBOST.bodb_ost
	
	Revisions: 
		- 20191021@Bobby: Initialize [Redmine:114231] 
		
*/
BEGIN
	IF substring(@string, len(@string), 1) <> @splitter
		SET @string = @string + @splitter

	DECLARE @start INT
		, @word NVARCHAR(4000)
		, @charindex INT
		, @i INT

	SET @i = 1
	SET @start = 1
	SET @charindex = charindex(@splitter, @string, @start)

	WHILE (@charindex <> 0)
	BEGIN
		SET @word = substring(@string, @start, @charindex - @start)
		SET @start = @charindex + 1
		SET @charindex = charindex(@splitter, @string, @start)

		INSERT INTO @res
		VALUES (
			@start
			, @i
			, @word
			)

		SET @i = @i + 1
	END

	RETURN
END


GO
ALTER AUTHORIZATION ON [dbo].[strSplit] TO  SCHEMA OWNER 
GO
/****** Object:  UserDefinedFunction [dbo].[strSplit_Key]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[strSplit_Key] (
	@string NVARCHAR(4000)
	, @splitter CHAR(1)
	)
RETURNS @res TABLE (val INT PRIMARY KEY)
AS
/*
	Created:20191021@Bobby
	Task: New Forecast at Agent Site 
	DB: DBOST.bodb_ost
	
	Revisions: 
		- 20191021@Bobby: Initialize [Redmine:114231] 
		
*/
BEGIN
	SET @string = ISNULL(@string, '')

	IF substring(@string, len(@string), 1) <> @splitter
		SET @string = @string + @splitter

	DECLARE @start INT
		, @word NVARCHAR(4000)
		, @charindex INT
		, @i INT

	SET @i = 1
	SET @start = 1
	SET @charindex = charindex(@splitter, @string, @start)

	WHILE (@charindex <> 0)
	BEGIN
		SET @word = substring(@string, @start, @charindex - @start)
		SET @start = @charindex + 1
		SET @charindex = charindex(@splitter, @string, @start)

		INSERT INTO @res
		VALUES (@word)

		SET @i = @i + 1
	END

	RETURN
END

GO
ALTER AUTHORIZATION ON [dbo].[strSplit_Key] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[bettrans]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[bettrans](
	[transid] [bigint] NOT NULL,
	[custid] [int] NOT NULL,
	[transdate] [datetime] NOT NULL,
	[oddsid] [int] NOT NULL,
	[hdp1] [smallmoney] NULL,
	[hdp2] [smallmoney] NULL,
	[odds] [smallmoney] NULL,
	[stake] [money] NOT NULL,
	[status] [nvarchar](10) NULL,
	[winlost] [money] NULL,
	[awinlost] [money] NULL,
	[mwinlost] [money] NULL,
	[playercomm] [money] NULL,
	[comm] [money] NULL,
	[acomm] [money] NULL,
	[apositiontaking] [smallmoney] NULL,
	[mpositiontaking] [smallmoney] NULL,
	[tpositiontaking] [smallmoney] NULL,
	[playerdiscount] [decimal](9, 8) NULL,
	[discount] [decimal](9, 8) NULL,
	[adiscount] [decimal](9, 8) NULL,
	[livehomescore] [smallint] NULL,
	[liveawayscore] [smallint] NULL,
	[liveindicator] [bit] NULL,
	[betteam] [nvarchar](10) NULL,
	[creator] [int] NOT NULL,
	[refno] [bigint] NOT NULL,
	[comstatus] [nvarchar](20) NULL,
	[winlostdate] [smalldatetime] NULL,
	[betfrom] [nvarchar](1) NULL,
	[betcheck] [nvarchar](50) NULL,
	[checktime] [datetime] NULL,
	[oddsspread] [money] NULL,
	[actualrate] [float] NULL,
	[matchid] [int] NULL,
	[recommend] [int] NOT NULL,
	[mrecommend] [int] NOT NULL,
	[ruben] [tinyint] NULL,
	[betid] [bigint] NULL,
	[statuswinlost] [tinyint] NULL,
	[modds] [smallmoney] NULL,
	[bettype] [smallint] NULL,
	[betdaqid] [bigint] NULL,
	[tstamp] [timestamp] NULL,
	[actual_stake] [money] NULL,
	[currency] [tinyint] NULL,
	[ip] [nvarchar](15) NULL,
	[transdesc] [nvarchar](1000) NULL,
	[sdiscount] [decimal](9, 8) NULL,
	[scomm] [money] NULL,
	[spositiontaking] [smallmoney] NULL,
	[swinlost] [money] NULL,
	[srecommend] [int] NOT NULL,
	[Username] [nvarchar](50) NULL,
	[CurrencyName] [nvarchar](50) NULL,
	[virtualrate] [float] NOT NULL,
	[oddstype] [tinyint] NULL,
	[statusID] [tinyint] NULL,
	[currency2] [tinyint] NULL,
	[balance] [money] NULL,
	[SecAcceptFlag] [bit] NULL,
	[transid2] [bigint] NULL,
	[recommdate] [datetime] NULL,
	[ExtraInfo] [varchar](1000) NULL,
	[WalletType] [tinyint] NULL,
	[BonusID] [int] NULL,
	[RefCode] [bigint] NULL,
	[SettlementTime] [datetime] NULL,
	[epositiontaking] [smallmoney] NULL,
	[ReplTstamp] [bigint] NULL,
 CONSTRAINT [PK_bettrans] PRIMARY KEY CLUSTERED 
(
	[transid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [bettrans_table]
) ON [bettrans_table]

GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[bettrans] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[ReplLog]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReplLog](
	[CreatedDate] [datetime] NOT NULL,
	[MaxTransid_ost] [bigint] NULL,
	[MaxTransid_bodb02] [bigint] NULL,
	[TransDate_ost] [datetime] NULL,
	[TransDate_bodb02] [datetime] NULL,
	[LatencySec] [int] NULL
) ON [Data_table]

GO
ALTER AUTHORIZATION ON [dbo].[ReplLog] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[ReplRef]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReplRef](
	[ReplKey] [tinyint] NOT NULL,
	[ReplValue] [bigint] NOT NULL,
	[ReplDesc] [varchar](50) NULL,
 CONSTRAINT [PK_ReplRef] PRIMARY KEY NONCLUSTERED 
(
	[ReplKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Data_table]
) ON [Data_table]

GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[ReplRef] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[vnDBA_ReplicationLatencyChecking]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vnDBA_ReplicationLatencyChecking](
	[logdate] [datetime] NOT NULL,
	[d1] [datetime] NULL,
	[msource] [bigint] NULL,
	[d2] [datetime] NULL,
	[msqlrep] [bigint] NULL,
	[d3] [datetime] NULL,
	[mmrep] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[logdate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Data_table]
) ON [Data_table]

GO
ALTER AUTHORIZATION ON [dbo].[vnDBA_ReplicationLatencyChecking] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[vndba_replicationMissingcheck]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vndba_replicationMissingcheck](
	[logdate] [datetime] NULL,
	[transid] [bigint] NULL,
	[bettype] [int] NULL
) ON [Data_table]

GO
ALTER AUTHORIZATION ON [dbo].[vndba_replicationMissingcheck] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[vndba_tracking]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vndba_tracking](
	[id] [int] NOT NULL,
	[value] [bigint] NULL,
 CONSTRAINT [PK_vndba_tracking] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Data_table]
) ON [Data_table]

GO
ALTER AUTHORIZATION ON [dbo].[vndba_tracking] TO  SCHEMA OWNER 
GO
/****** Object:  UserDefinedFunction [dbo].[f_GetHalfTimeBetType]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[f_GetHalfTimeBetType] ()
RETURNS TABLE
AS
/*
	Created:20191021@Bobby
	Task: New Forecast at Agent Site - Supported HDP & OU only
	DB: DBOST.bodb_ost
	
	Revisions: 
		- 20191021@Bobby: Initialize [Redmine:114231] 
		- 20191203@Bobby: Remove redundant HT bettype [Redmine:114231] 
		
*/
RETURN (
	SELECT 7 AS bettype

	UNION ALL
	SELECT 8
)

GO
ALTER AUTHORIZATION ON [dbo].[f_GetHalfTimeBetType] TO  SCHEMA OWNER 
GO
/****** Object:  UserDefinedFunction [dbo].[Ost_f_bettrans_running]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Ost_f_bettrans_running]()
RETURNS TABLE
AS 
/*
	Created:20191021@Bobby
	Task: New Forecast at Agent Site 
	DB: DBOST.bodb_ost
	
	Revisions: 
		- 20191021@Bobby: Initialize [Redmine:114231] 
		
*/
RETURN (
	
	SELECT 
		------index keys
		b.matchid 
		, b.bettype
		, b.srecommend
		, b.mrecommend
		, b.recommend
		, b.custid
		, b.transid

		------forcecase usages
		, b.livehomescore
		, b.liveawayscore
		, b.liveindicator
		, b.hdp1
		, b.hdp2
		, b.currency
		, b.betteam
		, b.odds
		, b.oddsspread
		, b.stake
		, b.apositiontaking
		, b.mpositiontaking
		, b.spositiontaking

		----betlist usages
		, b.username 
		, b.modds
		, b.refno
		, b.status
		, b.statusID
		, b.comstatus
		, b.actual_stake
		, b.transdate
		, b.betid
		, b.discount
		, b.adiscount
		, b.sdiscount
		, b.ip
		, b.oddstype
		, b.transdesc
		, b.checktime
		, b.SecAcceptFlag
		, b.oddsid

	FROM dbo.bettrans b WITH(NOLOCK)
	INNER JOIN dbo.match_remark mr WITH(NOLOCK) ON b.matchid = mr.matchid AND mr.calculate = 0 AND mr.calRefund = 0
	LEFT JOIN [dbo].[f_GetHalfTimeBetType] () bt ON b.bettype = bt.bettype
	WHERE 1 = CASE 
		WHEN mr.IsHTCal = 1 AND bt.bettype > 0 THEN 0
		ELSE 1
	END
	AND b.statusID IN (0,1)
)

GO
ALTER AUTHORIZATION ON [dbo].[Ost_f_bettrans_running] TO  SCHEMA OWNER 
GO
/****** Object:  UserDefinedFunction [dbo].[Ost_F_TotalBetsForecast_CalWinLoss]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Ost_F_TotalBetsForecast_CalWinLoss]
(	
	@bettype			INT
	, @fValue			SMALLINT
	, @betteam			NVARCHAR(10) = NULL
	, @hdp1				SMALLMONEY = NULL
	, @hdp2				SMALLMONEY = NULL
	, @stake			MONEY = 0
	, @actual_stake		MONEY = 0
	, @odds				SMALLMONEY = 1
	, @livehomescore	SMALLINT = NULL
	, @liveawayscore	SMALLINT = NULL
	
)
RETURNS TABLE 
AS 
/*  
	Created By: 20191219@Bobby  
	Task: New Total Bet & Forecast [Redmine: 121898]   
	DB: DBOST/bodb_ost
	  
	Revisions:  
		- 20191219@Bobby : Move to bodb_ost - [Redmine:121898] 
*/       
RETURN (
	SELECT
	--- output result
		CASE  
			WHEN mo.Modds >= 0 THEN (ra.Ratio * b.stake)
			ELSE (ra.Ratio * b.actual_stake)
		END AS Winloss
	--- bettrans
	FROM (
		VALUES (
			@bettype
			, CASE WHEN @bettype IN (1,7) THEN @fValue ELSE 0 END --scorediff
			, CASE WHEN @bettype IN (3,8) THEN @fValue ELSE 0 END --totalGoals
			, @betteam
			, @hdp2
			, @hdp1
			, @stake
			, @actual_stake
			, CASE WHEN @odds < 0 THEN 1 ELSE @odds END
			, @livehomescore
			, @liveawayscore
		)
	) AS b (bettype, scorediff, totalGoals, betteam, hdp2, hdp1, stake, actual_stake, odds, livehomescore, liveawayscore)
	--- call modds
	CROSS APPLY
	(
		SELECT 
			CASE 
				WHEN b.bettype IN (1,7) THEN 
					CASE b.betteam 
						WHEN 'h' THEN (b.hdp2 - b.hdp1) + (b.scorediff - b.livehomescore  + b.liveawayscore)
						WHEN 'a' THEN (b.hdp1 - b.hdp2) + (-b.scorediff + b.livehomescore  - b.liveawayscore)
					END
				WHEN b.bettype IN (3,8) THEN 
					CASE b.betteam 
						WHEN 'h' THEN b.totalGoals - b.hdp1
						WHEN 'a' THEN b.hdp1 - b.totalGoals
					END
				ELSE 0 -- not support
			END AS Modds
	) AS mo
	-- call ratio
	CROSS APPLY (
		SELECT CASE 
			WHEN mo.Modds >  0.25	THEN b.odds
			WHEN mo.Modds =  0.25	THEN 0.5 * b.odds
			WHEN mo.Modds =  0		THEN 0.00
			WHEN mo.Modds = -0.25	THEN -0.5
			WHEN mo.Modds < -0.25	THEN -1.00 
		END Ratio
	) AS ra
)

GO
ALTER AUTHORIZATION ON [dbo].[Ost_F_TotalBetsForecast_CalWinLoss] TO  SCHEMA OWNER 
GO
/****** Object:  UserDefinedFunction [dbo].[Ost_F_TotalBetsForecast_CalWinLoss_xtest]    Script Date: 5/25/2020 11:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Ost_F_TotalBetsForecast_CalWinLoss_xtest]
(	
	@bettype			INT
	, @fValue			SMALLINT
	, @betteam			NVARCHAR(10) = NULL
	, @hdp1				SMALLMONEY = NULL
	, @hdp2				SMALLMONEY = NULL
	, @stake			MONEY = 0
	, @actual_stake		MONEY = 0
	, @odds				SMALLMONEY = 1
	, @livehomescore	SMALLINT = NULL
	, @liveawayscore	SMALLINT = NULL
	
)
RETURNS TABLE 
AS 
/*  
	Created By: 20191219@Bobby  
	Task: New Total Bet & Forecast [Redmine: 121898]   
	DB: DBOST/bodb_ost
	  
	Revisions:  
		- 20191219@Bobby : Move to bodb_ost - [Redmine:121898] 
*/       
RETURN (
	SELECT
	--- output result
		CASE  
			WHEN mo.Modds >= 0 THEN (ra.Ratio * b.stake)
			ELSE (ra.Ratio * b.actual_stake)
		END AS Winloss
	--- bettrans
	FROM (
		VALUES (
			@bettype
			, CASE WHEN @bettype IN (1,7) THEN @fValue ELSE 0 END --scorediff
			, CASE WHEN @bettype IN (3,8) THEN @fValue ELSE 0 END --totalGoals
			, @betteam
			, @hdp2
			, @hdp1
			, @stake
			, @actual_stake
			, CASE WHEN @odds < 0 THEN 1 ELSE @odds END
			, @livehomescore
			, @liveawayscore
		)
	) AS b (bettype, scorediff, totalGoals, betteam, hdp2, hdp1, stake, actual_stake, odds, livehomescore, liveawayscore)
	--- call modds
	CROSS APPLY
	(
		SELECT 
			CASE 
				WHEN b.bettype IN (1,7) THEN 
					CASE b.betteam 
						WHEN 'h' THEN (b.hdp2 - b.hdp1) + (b.scorediff - b.livehomescore  + b.liveawayscore)
						WHEN 'a' THEN (b.hdp1 - b.hdp2) + (-b.scorediff + b.livehomescore  - b.liveawayscore)
					END
				WHEN b.bettype IN (3,8) THEN 
					CASE b.betteam 
						WHEN 'h' THEN b.totalGoals - b.hdp1
						WHEN 'a' THEN b.hdp1 - b.totalGoals
					END
				ELSE 0 -- not support
			END AS Modds
	) AS mo
	-- call ratio
	CROSS APPLY (
		SELECT CASE 
			WHEN mo.Modds >  0.25	THEN b.odds
			WHEN mo.Modds =  0.25	THEN 0.5 * b.odds
			WHEN mo.Modds =  0		THEN 0.00
			WHEN mo.Modds = -0.25	THEN -0.5
			WHEN mo.Modds < -0.25	THEN -1.00 
		END Ratio
	) AS ra
)

GO
ALTER AUTHORIZATION ON [dbo].[Ost_F_TotalBetsForecast_CalWinLoss_xtest] TO  SCHEMA OWNER 
GO
/****** Object:  Index [CIX_CreatedDate]    Script Date: 5/25/2020 11:01:18 PM ******/
CREATE CLUSTERED INDEX [CIX_CreatedDate] ON [dbo].[ReplLog]
(
	[CreatedDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Data_table]
GO
/****** Object:  Index [CIX_vndba_replicationMissingcheck]    Script Date: 5/25/2020 11:01:18 PM ******/
CREATE CLUSTERED INDEX [CIX_vndba_replicationMissingcheck] ON [dbo].[vndba_replicationMissingcheck]
(
	[logdate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Data_table]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_betrunning_mrecommend]    Script Date: 5/25/2020 11:01:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_betrunning_mrecommend] ON [dbo].[bettrans]
(
	[mrecommend] ASC,
	[bettype] ASC,
	[matchid] ASC
)
INCLUDE ( 	[odds],
	[stake],
	[mpositiontaking],
	[livehomescore],
	[liveawayscore],
	[liveindicator],
	[betteam],
	[spositiontaking],
	[actual_stake],
	[recommend],
	[custid],
	[Username],
	[refno],
	[transid],
	[betid],
	[hdp1],
	[hdp2],
	[modds],
	[SecAcceptFlag],
	[checktime],
	[status],
	[transdate],
	[apositiontaking],
	[tpositiontaking],
	[discount],
	[adiscount],
	[sdiscount],
	[ip],
	[oddstype],
	[comstatus],
	[betcheck],
	[oddsspread],
	[currency]) 
WHERE ([statusID] IN ((0), (1)))
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [bettrans_index]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_betrunning_recommend]    Script Date: 5/25/2020 11:01:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_betrunning_recommend] ON [dbo].[bettrans]
(
	[recommend] ASC,
	[bettype] ASC,
	[matchid] ASC
)
INCLUDE ( 	[odds],
	[stake],
	[apositiontaking],
	[livehomescore],
	[liveawayscore],
	[liveindicator],
	[betteam],
	[custid],
	[actual_stake],
	[mpositiontaking],
	[spositiontaking],
	[Username],
	[refno],
	[transid],
	[betid],
	[hdp1],
	[hdp2],
	[modds],
	[SecAcceptFlag],
	[checktime],
	[status],
	[transdate],
	[tpositiontaking],
	[discount],
	[adiscount],
	[sdiscount],
	[ip],
	[oddstype],
	[comstatus],
	[betcheck],
	[oddsspread],
	[currency],
	[ExtraInfo]) 
WHERE ([statusID] IN ((0), (1)))
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [bettrans_index]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_betrunning_srecommend]    Script Date: 5/25/2020 11:01:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_betrunning_srecommend] ON [dbo].[bettrans]
(
	[srecommend] ASC,
	[bettype] ASC,
	[matchid] ASC
)
INCLUDE ( 	[odds],
	[stake],
	[livehomescore],
	[liveawayscore],
	[liveindicator],
	[betteam],
	[spositiontaking],
	[custid],
	[mpositiontaking],
	[actual_stake],
	[mrecommend],
	[recommend],
	[Username],
	[refno],
	[transid],
	[betid],
	[hdp1],
	[hdp2],
	[modds],
	[SecAcceptFlag],
	[checktime],
	[status],
	[transdate],
	[apositiontaking],
	[tpositiontaking],
	[discount],
	[adiscount],
	[sdiscount],
	[ip],
	[oddstype],
	[comstatus],
	[betcheck],
	[oddsspread],
	[currency]) 
WHERE ([statusID] IN ((0), (1)))
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [bettrans_index]
GO
/****** Object:  Index [IX_matchid]    Script Date: 5/25/2020 11:01:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_matchid] ON [dbo].[bettrans]
(
	[matchid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [bettrans_index]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_monitor_recommend]    Script Date: 5/25/2020 11:01:18 PM ******/
CREATE NONCLUSTERED INDEX [IX_monitor_recommend] ON [dbo].[bettrans]
(
	[recommend] ASC,
	[transid] DESC
)
INCLUDE ( 	[odds],
	[stake],
	[livehomescore],
	[liveawayscore],
	[liveindicator],
	[betteam],
	[custid],
	[actual_stake],
	[Username],
	[matchid],
	[refno],
	[transdate],
	[oddsid],
	[betid],
	[hdp1],
	[hdp2],
	[status],
	[ip],
	[oddstype],
	[betcheck],
	[transdesc],
	[oddsspread],
	[SecAcceptFlag],
	[checktime],
	[bettype],
	[betdaqid],
	[ExtraInfo],
	[WalletType],
	[RefCode],
	[betfrom],
	[currency]) 
WHERE ([statusID] IN ((0), (1)))
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [bettrans_index]
GO
USE [master]
GO
ALTER DATABASE [bodb_ost] SET  READ_WRITE 
GO
