/*
	Task: Backup msdb db users and server permission

	Generated on old server and run on new server SITDBDCUST
*/

USE [msdb]
GO
/****** Object:  User [##MS_PolicyEventProcessingLogin##]    Script Date: 4/14/2022 9:40:59 AM ******/
CREATE USER [##MS_PolicyEventProcessingLogin##] FOR LOGIN [##MS_PolicyEventProcessingLogin##] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [##MS_PolicyTsqlExecutionLogin##]    Script Date: 4/14/2022 9:40:59 AM ******/
CREATE USER [##MS_PolicyTsqlExecutionLogin##] FOR LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [MS_DataCollectorInternalUser]    Script Date: 4/14/2022 9:40:59 AM ******/
CREATE USER [MS_DataCollectorInternalUser] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [rdsvntrack]    Script Date: 4/14/2022 9:40:59 AM ******/
CREATE USER [rdsvntrack] FOR LOGIN [rdsvntrack] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SqlLink]    Script Date: 4/14/2022 9:40:59 AM ******/
CREATE USER [SqlLink] FOR LOGIN [SqlLink] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [vndbaDeployment]    Script Date: 4/14/2022 9:40:59 AM ******/
CREATE USER [vndbaDeployment] FOR LOGIN [vndbaDeployment] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [vnelodie]    Script Date: 4/14/2022 9:40:59 AM ******/
CREATE USER [vnelodie] FOR LOGIN [vnelodie] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [vnhelen]    Script Date: 4/14/2022 9:40:59 AM ******/
CREATE USER [vnhelen] FOR LOGIN [vnhelen] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [vnjamie]    Script Date: 4/14/2022 9:40:59 AM ******/
CREATE USER [vnjamie] FOR LOGIN [vnjamie] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [vnkathy]    Script Date: 4/14/2022 9:40:59 AM ******/
CREATE USER [vnkathy] FOR LOGIN [vnkathy] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [vnsophia]    Script Date: 4/14/2022 9:40:59 AM ******/
CREATE USER [vnsophia] FOR LOGIN [vnsophia] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [vnteam]    Script Date: 4/14/2022 9:40:59 AM ******/
CREATE USER [vnteam] FOR LOGIN [vnteam] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [DatabaseMailUserRole]    Script Date: 4/14/2022 9:40:59 AM ******/
CREATE ROLE [DatabaseMailUserRole]
GO
/****** Object:  DatabaseRole [db_ssisadmin]    Script Date: 4/14/2022 9:40:59 AM ******/
CREATE ROLE [db_ssisadmin]
GO
/****** Object:  DatabaseRole [db_ssisltduser]    Script Date: 4/14/2022 9:40:59 AM ******/
CREATE ROLE [db_ssisltduser]
GO
/****** Object:  DatabaseRole [db_ssisoperator]    Script Date: 4/14/2022 9:40:59 AM ******/
CREATE ROLE [db_ssisoperator]
GO
/****** Object:  DatabaseRole [dc_admin]    Script Date: 4/14/2022 9:40:59 AM ******/
CREATE ROLE [dc_admin]
GO
/****** Object:  DatabaseRole [dc_operator]    Script Date: 4/14/2022 9:40:59 AM ******/
CREATE ROLE [dc_operator]
GO
/****** Object:  DatabaseRole [dc_proxy]    Script Date: 4/14/2022 9:40:59 AM ******/
CREATE ROLE [dc_proxy]
GO
/****** Object:  DatabaseRole [PolicyAdministratorRole]    Script Date: 4/14/2022 9:40:59 AM ******/
CREATE ROLE [PolicyAdministratorRole]
GO
/****** Object:  DatabaseRole [ServerGroupAdministratorRole]    Script Date: 4/14/2022 9:40:59 AM ******/
CREATE ROLE [ServerGroupAdministratorRole]
GO
/****** Object:  DatabaseRole [ServerGroupReaderRole]    Script Date: 4/14/2022 9:40:59 AM ******/
CREATE ROLE [ServerGroupReaderRole]
GO
/****** Object:  DatabaseRole [SQLAgentOperatorRole]    Script Date: 4/14/2022 9:40:59 AM ******/
CREATE ROLE [SQLAgentOperatorRole]
GO
/****** Object:  DatabaseRole [SQLAgentReaderRole]    Script Date: 4/14/2022 9:40:59 AM ******/
CREATE ROLE [SQLAgentReaderRole]
GO
/****** Object:  DatabaseRole [SQLAgentUserRole]    Script Date: 4/14/2022 9:40:59 AM ******/
CREATE ROLE [SQLAgentUserRole]
GO
/****** Object:  DatabaseRole [TargetServersRole]    Script Date: 4/14/2022 9:40:59 AM ******/
CREATE ROLE [TargetServersRole]
GO
/****** Object:  DatabaseRole [UtilityCMRReader]    Script Date: 4/14/2022 9:40:59 AM ******/
CREATE ROLE [UtilityCMRReader]
GO
/****** Object:  DatabaseRole [UtilityIMRReader]    Script Date: 4/14/2022 9:40:59 AM ******/
CREATE ROLE [UtilityIMRReader]
GO
/****** Object:  DatabaseRole [UtilityIMRWriter]    Script Date: 4/14/2022 9:40:59 AM ******/
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
sys.sp_addrolemember @rolename = N'SQLAgentUserRole', @membername = N'SqlLink'
GO
sys.sp_addrolemember @rolename = N'SQLAgentReaderRole', @membername = N'SqlLink'
GO
sys.sp_addrolemember @rolename = N'SQLAgentOperatorRole', @membername = N'SqlLink'
GO
sys.sp_addrolemember @rolename = N'SQLAgentUserRole', @membername = N'vnelodie'
GO
sys.sp_addrolemember @rolename = N'SQLAgentReaderRole', @membername = N'vnelodie'
GO
sys.sp_addrolemember @rolename = N'SQLAgentUserRole', @membername = N'vnhelen'
GO
sys.sp_addrolemember @rolename = N'SQLAgentReaderRole', @membername = N'vnhelen'
GO
sys.sp_addrolemember @rolename = N'SQLAgentUserRole', @membername = N'vnjamie'
GO
sys.sp_addrolemember @rolename = N'SQLAgentReaderRole', @membername = N'vnjamie'
GO
sys.sp_addrolemember @rolename = N'SQLAgentUserRole', @membername = N'vnkathy'
GO
sys.sp_addrolemember @rolename = N'SQLAgentReaderRole', @membername = N'vnkathy'
GO
sys.sp_addrolemember @rolename = N'SQLAgentUserRole', @membername = N'vnsophia'
GO
sys.sp_addrolemember @rolename = N'SQLAgentReaderRole', @membername = N'vnsophia'
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
