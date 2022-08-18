/*
	Task: Backup master db users and server permission
	Generated on old server and run on new server DBDIST03N
*/

USE [master]
GO
/****** Object:  User [##MS_PolicyEventProcessingLogin##]    Script Date: 5/27/2022 4:58:13 AM ******/
CREATE USER [##MS_PolicyEventProcessingLogin##] FOR LOGIN [##MS_PolicyEventProcessingLogin##] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDCharlie]    Script Date: 5/27/2022 4:58:13 AM ******/
CREATE USER [RDCharlie] FOR LOGIN [RDCharlie] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [##MS_AgentSigningCertificate##]    Script Date: 5/27/2022 4:58:13 AM ******/
CREATE USER [##MS_AgentSigningCertificate##] FOR LOGIN [##MS_AgentSigningCertificate##]
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDCharlie'
GO
