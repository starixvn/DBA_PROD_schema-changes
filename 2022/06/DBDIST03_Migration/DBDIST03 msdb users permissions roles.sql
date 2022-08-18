/*
	Task: Backup msdb db users and server permission
	Generated on old server and run on new server DBDIST03N
*/

USE [msdb]
GO
/****** Object:  User [##MS_PolicyEventProcessingLogin##]    Script Date: 5/27/2022 5:00:13 AM ******/
CREATE USER [##MS_PolicyEventProcessingLogin##] FOR LOGIN [##MS_PolicyEventProcessingLogin##] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [##MS_PolicyTsqlExecutionLogin##]    Script Date: 5/27/2022 5:00:13 AM ******/
CREATE USER [##MS_PolicyTsqlExecutionLogin##] FOR LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [MS_DataCollectorInternalUser]    Script Date: 5/27/2022 5:00:13 AM ******/
CREATE USER [MS_DataCollectorInternalUser] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [sqlLink]    Script Date: 5/27/2022 5:00:13 AM ******/
CREATE USER [sqlLink] FOR LOGIN [sqlLink] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [vnBilly]    Script Date: 5/27/2022 5:00:13 AM ******/
CREATE USER [vnBilly] FOR LOGIN [vnBilly] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [DatabaseMailUserRole]    Script Date: 5/27/2022 5:00:13 AM ******/
CREATE ROLE [DatabaseMailUserRole]
GO
/****** Object:  DatabaseRole [db_ssisadmin]    Script Date: 5/27/2022 5:00:13 AM ******/
CREATE ROLE [db_ssisadmin]
GO
/****** Object:  DatabaseRole [db_ssisltduser]    Script Date: 5/27/2022 5:00:13 AM ******/
CREATE ROLE [db_ssisltduser]
GO
/****** Object:  DatabaseRole [db_ssisoperator]    Script Date: 5/27/2022 5:00:13 AM ******/
CREATE ROLE [db_ssisoperator]
GO
/****** Object:  DatabaseRole [dc_admin]    Script Date: 5/27/2022 5:00:13 AM ******/
CREATE ROLE [dc_admin]
GO
/****** Object:  DatabaseRole [dc_operator]    Script Date: 5/27/2022 5:00:13 AM ******/
CREATE ROLE [dc_operator]
GO
/****** Object:  DatabaseRole [dc_proxy]    Script Date: 5/27/2022 5:00:13 AM ******/
CREATE ROLE [dc_proxy]
GO
/****** Object:  DatabaseRole [PolicyAdministratorRole]    Script Date: 5/27/2022 5:00:13 AM ******/
CREATE ROLE [PolicyAdministratorRole]
GO
/****** Object:  DatabaseRole [ServerGroupAdministratorRole]    Script Date: 5/27/2022 5:00:13 AM ******/
CREATE ROLE [ServerGroupAdministratorRole]
GO
/****** Object:  DatabaseRole [ServerGroupReaderRole]    Script Date: 5/27/2022 5:00:13 AM ******/
CREATE ROLE [ServerGroupReaderRole]
GO
/****** Object:  DatabaseRole [SQLAgentOperatorRole]    Script Date: 5/27/2022 5:00:13 AM ******/
CREATE ROLE [SQLAgentOperatorRole]
GO
/****** Object:  DatabaseRole [SQLAgentReaderRole]    Script Date: 5/27/2022 5:00:13 AM ******/
CREATE ROLE [SQLAgentReaderRole]
GO
/****** Object:  DatabaseRole [SQLAgentUserRole]    Script Date: 5/27/2022 5:00:13 AM ******/
CREATE ROLE [SQLAgentUserRole]
GO
/****** Object:  DatabaseRole [TargetServersRole]    Script Date: 5/27/2022 5:00:13 AM ******/
CREATE ROLE [TargetServersRole]
GO
/****** Object:  DatabaseRole [UtilityCMRReader]    Script Date: 5/27/2022 5:00:13 AM ******/
CREATE ROLE [UtilityCMRReader]
GO
/****** Object:  DatabaseRole [UtilityIMRReader]    Script Date: 5/27/2022 5:00:13 AM ******/
CREATE ROLE [UtilityIMRReader]
GO
/****** Object:  DatabaseRole [UtilityIMRWriter]    Script Date: 5/27/2022 5:00:13 AM ******/
CREATE ROLE [UtilityIMRWriter]
GO
sys.sp_addrolemember @rolename = N'SQLAgentUserRole', @membername = N'##MS_PolicyEventProcessingLogin##'
GO
sys.sp_addrolemember @rolename = N'SQLAgentReaderRole', @membername = N'##MS_PolicyEventProcessingLogin##'
GO
sys.sp_addrolemember @rolename = N'SQLAgentOperatorRole', @membername = N'##MS_PolicyEventProcessingLogin##'
GO
sys.sp_addrolemember @rolename = N'PolicyAdministratorRole', @membername = N'##MS_PolicyEventProcessingLogin##'
GO
sys.sp_addrolemember @rolename = N'SQLAgentUserRole', @membername = N'##MS_PolicyTsqlExecutionLogin##'
GO
sys.sp_addrolemember @rolename = N'SQLAgentReaderRole', @membername = N'##MS_PolicyTsqlExecutionLogin##'
GO
sys.sp_addrolemember @rolename = N'SQLAgentOperatorRole', @membername = N'##MS_PolicyTsqlExecutionLogin##'
GO
sys.sp_addrolemember @rolename = N'PolicyAdministratorRole', @membername = N'##MS_PolicyTsqlExecutionLogin##'
GO
sys.sp_addrolemember @rolename = N'SQLAgentUserRole', @membername = N'MS_DataCollectorInternalUser'
GO
sys.sp_addrolemember @rolename = N'db_ssisltduser', @membername = N'MS_DataCollectorInternalUser'
GO
sys.sp_addrolemember @rolename = N'db_ssisoperator', @membername = N'MS_DataCollectorInternalUser'
GO
sys.sp_addrolemember @rolename = N'dc_operator', @membername = N'MS_DataCollectorInternalUser'
GO
sys.sp_addrolemember @rolename = N'dc_admin', @membername = N'MS_DataCollectorInternalUser'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'sqlLink'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'vnBilly'
GO
EXEC sys.sp_addrolemember @rolename = N'dc_operator', @membername = N'dc_admin'
GO
EXEC sys.sp_addrolemember @rolename = N'SQLAgentUserRole', @membername = N'dc_operator'
GO
EXEC sys.sp_addrolemember @rolename = N'db_ssisltduser', @membername = N'dc_operator'
GO
EXEC sys.sp_addrolemember @rolename = N'db_ssisoperator', @membername = N'dc_operator'
GO
EXEC sys.sp_addrolemember @rolename = N'db_ssisltduser', @membername = N'dc_proxy'
GO
EXEC sys.sp_addrolemember @rolename = N'db_ssisoperator', @membername = N'dc_proxy'
GO
EXEC sys.sp_addrolemember @rolename = N'SQLAgentOperatorRole', @membername = N'PolicyAdministratorRole'
GO
EXEC sys.sp_addrolemember @rolename = N'ServerGroupReaderRole', @membername = N'ServerGroupAdministratorRole'
GO
EXEC sys.sp_addrolemember @rolename = N'SQLAgentReaderRole', @membername = N'SQLAgentOperatorRole'
GO
EXEC sys.sp_addrolemember @rolename = N'SQLAgentUserRole', @membername = N'SQLAgentReaderRole'
GO
EXEC sys.sp_addrolemember @rolename = N'UtilityIMRReader', @membername = N'UtilityIMRWriter'
GO
GRANT IMPERSONATE ON USER::[MS_DataCollectorInternalUser] TO [dc_admin] AS [MS_DataCollectorInternalUser]
GO

