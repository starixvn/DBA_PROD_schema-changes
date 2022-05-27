/*
	Task: Backup master db users and server permission

	Generated on old server DBCUST and run on new server DBDCUST19
	ATTENTION, must run after creating relevant server logins
*/

USE [master]
GO
/****** Object:  User [##MS_PolicyEventProcessingLogin##]    Script Date: 5/27/2022 4:40:25 AM ******/
CREATE USER [##MS_PolicyEventProcessingLogin##] FOR LOGIN [##MS_PolicyEventProcessingLogin##] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [dba_Cert_User]    Script Date: 5/27/2022 4:40:25 AM ******/
--CREATE USER [dba_Cert_User] FOR LOGIN [dba_Cert_User] WITH DEFAULT_SCHEMA=[dbo]
--GO
/****** Object:  User [ONEWORKS\RDBenLee]    Script Date: 5/27/2022 4:40:25 AM ******/
CREATE USER [ONEWORKS\RDBenLee] FOR LOGIN [ONEWORKS\RDBenLee] WITH DEFAULT_SCHEMA=[ONEWORKS\RDBenLee]
GO
/****** Object:  User [ONEWORKS\RDCooper]    Script Date: 5/27/2022 4:40:25 AM ******/
CREATE USER [ONEWORKS\RDCooper] FOR LOGIN [ONEWORKS\RDCooper] WITH DEFAULT_SCHEMA=[ONEWORKS\RDCooper]
GO
/****** Object:  User [ONEWORKS\RDSteven]    Script Date: 5/27/2022 4:40:25 AM ******/
CREATE USER [ONEWORKS\RDSteven] FOR LOGIN [ONEWORKS\RDSteven] WITH DEFAULT_SCHEMA=[ONEWORKS\RDSteven]
GO
/****** Object:  User [ONEWORKS\RDSylvia]    Script Date: 5/27/2022 4:40:25 AM ******/
CREATE USER [ONEWORKS\RDSylvia] FOR LOGIN [ONEWORKS\RDSylvia] WITH DEFAULT_SCHEMA=[ONEWORKS\RDSylvia]
GO
/****** Object:  User [ONEWORKS\RDVictor]    Script Date: 5/27/2022 4:40:25 AM ******/
CREATE USER [ONEWORKS\RDVictor] FOR LOGIN [ONEWORKS\RDVictor] WITH DEFAULT_SCHEMA=[ONEWORKS\RDVictor]
GO
/****** Object:  User [ONEWORKS\RDVincent]    Script Date: 5/27/2022 4:40:25 AM ******/
CREATE USER [ONEWORKS\RDVincent] FOR LOGIN [ONEWORKS\RDVincent] WITH DEFAULT_SCHEMA=[ONEWORKS\RDVincent]
GO
/****** Object:  User [ONEWORKS\RDVivi]    Script Date: 5/27/2022 4:40:25 AM ******/
CREATE USER [ONEWORKS\RDVivi] FOR LOGIN [ONEWORKS\RDVivi] WITH DEFAULT_SCHEMA=[ONEWORKS\RDVivi]
GO
/****** Object:  User [ONEWORKS\sasrp]    Script Date: 5/27/2022 4:40:25 AM ******/
CREATE USER [ONEWORKS\sasrp] FOR LOGIN [ONEWORKS\sasrp] WITH DEFAULT_SCHEMA=[ONEWORKS\sasrp]
GO
/****** Object:  User [ONEWORKS\Thien.net]    Script Date: 5/27/2022 4:40:25 AM ******/
CREATE USER [ONEWORKS\Thien.net] FOR LOGIN [ONEWORKS\Thien.net] WITH DEFAULT_SCHEMA=[ONEWORKS\Thien.net]
GO
/****** Object:  User [ONEWORKS\Viet]    Script Date: 5/27/2022 4:40:25 AM ******/
CREATE USER [ONEWORKS\Viet] FOR LOGIN [ONEWORKS\Viet] WITH DEFAULT_SCHEMA=[ONEWORKS\Viet]
GO
/****** Object:  User [ONEWORKS\vnDaniel]    Script Date: 5/27/2022 4:40:25 AM ******/
CREATE USER [ONEWORKS\vnDaniel] FOR LOGIN [ONEWORKS\vnDaniel] WITH DEFAULT_SCHEMA=[ONEWORKS\vnDaniel]
GO
/****** Object:  User [RDAlfie]    Script Date: 5/27/2022 4:40:25 AM ******/
CREATE USER [RDAlfie] FOR LOGIN [RDAlfie] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDAlvin]    Script Date: 5/27/2022 4:40:25 AM ******/
CREATE USER [RDAlvin] FOR LOGIN [RDAlvin] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDCharlie]    Script Date: 5/27/2022 4:40:25 AM ******/
CREATE USER [RDCharlie] FOR LOGIN [RDCharlie] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDLeon]    Script Date: 5/27/2022 4:40:25 AM ******/
CREATE USER [RDLeon] FOR LOGIN [RDLeon] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [rdsvntrack]    Script Date: 5/27/2022 4:40:25 AM ******/
CREATE USER [rdsvntrack] FOR LOGIN [rdsvntrack] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDSylvia]    Script Date: 5/27/2022 4:40:25 AM ******/
CREATE USER [RDSylvia] FOR LOGIN [RDSylvia] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDVictor]    Script Date: 5/27/2022 4:40:25 AM ******/
CREATE USER [RDVictor] FOR LOGIN [RDVictor] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDVincent]    Script Date: 5/27/2022 4:40:25 AM ******/
CREATE USER [RDVincent] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SqlLink]    Script Date: 5/27/2022 4:40:25 AM ******/
CREATE USER [SqlLink] FOR LOGIN [SqlLink] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [thien]    Script Date: 5/27/2022 4:40:25 AM ******/
CREATE USER [thien] FOR LOGIN [thien] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [vnDaniel]    Script Date: 5/27/2022 4:40:25 AM ******/
CREATE USER [vnDaniel] FOR LOGIN [vnDaniel] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [vnDBA]    Script Date: 5/27/2022 4:40:25 AM ******/
CREATE USER [vnDBA] FOR LOGIN [vnDBA] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [vnPatrick]    Script Date: 5/27/2022 4:40:25 AM ******/
CREATE USER [vnPatrick] FOR LOGIN [vnPatrick] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [##MS_AgentSigningCertificate##]    Script Date: 5/27/2022 4:40:25 AM ******/
CREATE USER [##MS_AgentSigningCertificate##] FOR LOGIN [##MS_AgentSigningCertificate##]
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'RDAlfie'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDAlfie'
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'RDAlvin'
GO
sys.sp_addrolemember @rolename = N'db_backupoperator', @membername = N'RDAlvin'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDAlvin'
GO
sys.sp_addrolemember @rolename = N'db_backupoperator', @membername = N'RDCharlie'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDCharlie'
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'RDLeon'
GO
sys.sp_addrolemember @rolename = N'db_backupoperator', @membername = N'RDLeon'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDLeon'
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'RDSylvia'
GO
sys.sp_addrolemember @rolename = N'db_backupoperator', @membername = N'RDSylvia'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDSylvia'
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'RDVictor'
GO
sys.sp_addrolemember @rolename = N'db_backupoperator', @membername = N'RDVictor'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDVictor'
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'RDVincent'
GO
sys.sp_addrolemember @rolename = N'db_backupoperator', @membername = N'RDVincent'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDVincent'
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'thien'
GO
sys.sp_addrolemember @rolename = N'db_backupoperator', @membername = N'thien'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'thien'
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'vnDaniel'
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'vnDBA'
GO
sys.sp_addrolemember @rolename = N'db_backupoperator', @membername = N'vnDBA'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'vnDBA'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'vnPatrick'
GO
/****** Object:  Schema [ONEWORKS\RDBenLee]    Script Date: 5/27/2022 4:40:26 AM ******/
CREATE SCHEMA [ONEWORKS\RDBenLee]
GO
/****** Object:  Schema [ONEWORKS\RDCooper]    Script Date: 5/27/2022 4:40:26 AM ******/
CREATE SCHEMA [ONEWORKS\RDCooper]
GO
/****** Object:  Schema [ONEWORKS\RDSteven]    Script Date: 5/27/2022 4:40:26 AM ******/
CREATE SCHEMA [ONEWORKS\RDSteven]
GO
/****** Object:  Schema [ONEWORKS\RDSylvia]    Script Date: 5/27/2022 4:40:26 AM ******/
CREATE SCHEMA [ONEWORKS\RDSylvia]
GO
/****** Object:  Schema [ONEWORKS\RDVictor]    Script Date: 5/27/2022 4:40:26 AM ******/
CREATE SCHEMA [ONEWORKS\RDVictor]
GO
/****** Object:  Schema [ONEWORKS\RDVincent]    Script Date: 5/27/2022 4:40:26 AM ******/
CREATE SCHEMA [ONEWORKS\RDVincent]
GO
/****** Object:  Schema [ONEWORKS\RDVivi]    Script Date: 5/27/2022 4:40:26 AM ******/
CREATE SCHEMA [ONEWORKS\RDVivi]
GO
/****** Object:  Schema [ONEWORKS\sasrp]    Script Date: 5/27/2022 4:40:26 AM ******/
CREATE SCHEMA [ONEWORKS\sasrp]
GO
/****** Object:  Schema [ONEWORKS\Thien.net]    Script Date: 5/27/2022 4:40:26 AM ******/
CREATE SCHEMA [ONEWORKS\Thien.net]
GO
/****** Object:  Schema [ONEWORKS\Viet]    Script Date: 5/27/2022 4:40:26 AM ******/
CREATE SCHEMA [ONEWORKS\Viet]
GO
/****** Object:  Schema [ONEWORKS\vnDaniel]    Script Date: 5/27/2022 4:40:26 AM ******/
CREATE SCHEMA [ONEWORKS\vnDaniel]
GO
