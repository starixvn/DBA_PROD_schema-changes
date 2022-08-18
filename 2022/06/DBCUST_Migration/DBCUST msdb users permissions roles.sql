/*
	Task: Backup msdb db users and server permission

	Generated on old server DBCUST and run on new server DBDCUST19
	ATTENTION, must run after creating relevant server logins
*/

USE [msdb]
GO
/****** Object:  User [##MS_PolicyEventProcessingLogin##]    Script Date: 5/27/2022 4:45:11 AM ******/
CREATE USER [##MS_PolicyEventProcessingLogin##] FOR LOGIN [##MS_PolicyEventProcessingLogin##] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [##MS_PolicyTsqlExecutionLogin##]    Script Date: 5/27/2022 4:45:11 AM ******/
CREATE USER [##MS_PolicyTsqlExecutionLogin##] FOR LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [MS_DataCollectorInternalUser]    Script Date: 5/27/2022 4:45:11 AM ******/
CREATE USER [MS_DataCollectorInternalUser] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDAlfie]    Script Date: 5/27/2022 4:45:11 AM ******/
CREATE USER [RDAlfie] FOR LOGIN [RDAlfie] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDAlvin]    Script Date: 5/27/2022 4:45:11 AM ******/
CREATE USER [RDAlvin] FOR LOGIN [RDAlvin] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDBenLee]    Script Date: 5/27/2022 4:45:11 AM ******/
CREATE USER [RDBenLee] FOR LOGIN [RDBenLee] WITH DEFAULT_SCHEMA=[RDBenLee]
GO
/****** Object:  User [RDCharlie]    Script Date: 5/27/2022 4:45:11 AM ******/
CREATE USER [RDCharlie] FOR LOGIN [RDCharlie] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDLeon]    Script Date: 5/27/2022 4:45:11 AM ******/
CREATE USER [RDLeon] FOR LOGIN [RDLeon] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDMei]    Script Date: 5/27/2022 4:45:11 AM ******/
CREATE USER [RDMei] FOR LOGIN [RDMei] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [rdsvntrack]    Script Date: 5/27/2022 4:45:11 AM ******/
CREATE USER [rdsvntrack] FOR LOGIN [rdsvntrack] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDSylvia]    Script Date: 5/27/2022 4:45:11 AM ******/
CREATE USER [RDSylvia] FOR LOGIN [RDSylvia] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDVictor]    Script Date: 5/27/2022 4:45:11 AM ******/
CREATE USER [RDVictor] FOR LOGIN [RDVictor] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDVincent]    Script Date: 5/27/2022 4:45:11 AM ******/
CREATE USER [RDVincent] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SqlLink]    Script Date: 5/27/2022 4:45:11 AM ******/
CREATE USER [SqlLink] FOR LOGIN [SqlLink] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [thien]    Script Date: 5/27/2022 4:45:11 AM ******/
CREATE USER [thien] FOR LOGIN [thien] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [vnBilly]    Script Date: 5/27/2022 4:45:11 AM ******/
CREATE USER [vnBilly] FOR LOGIN [vnBilly] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [vnBobby]    Script Date: 5/27/2022 4:45:11 AM ******/
CREATE USER [vnBobby] FOR LOGIN [vnBobby] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [vnBrice]    Script Date: 5/27/2022 4:45:11 AM ******/
CREATE USER [vnBrice] FOR LOGIN [vnBrice] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [vnDaniel]    Script Date: 5/27/2022 4:45:11 AM ******/
CREATE USER [vnDaniel] FOR LOGIN [vnDaniel] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [vnDBA]    Script Date: 5/27/2022 4:45:11 AM ******/
CREATE USER [vnDBA] FOR LOGIN [vnDBA] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [vnPatrick]    Script Date: 5/27/2022 4:45:11 AM ******/
CREATE USER [vnPatrick] FOR LOGIN [vnPatrick] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [DatabaseMailUserRole]    Script Date: 5/27/2022 4:45:11 AM ******/
CREATE ROLE [DatabaseMailUserRole]
GO
/****** Object:  DatabaseRole [db_ssisadmin]    Script Date: 5/27/2022 4:45:11 AM ******/
CREATE ROLE [db_ssisadmin]
GO
/****** Object:  DatabaseRole [db_ssisltduser]    Script Date: 5/27/2022 4:45:11 AM ******/
CREATE ROLE [db_ssisltduser]
GO
/****** Object:  DatabaseRole [db_ssisoperator]    Script Date: 5/27/2022 4:45:11 AM ******/
CREATE ROLE [db_ssisoperator]
GO
/****** Object:  DatabaseRole [dc_admin]    Script Date: 5/27/2022 4:45:11 AM ******/
CREATE ROLE [dc_admin]
GO
/****** Object:  DatabaseRole [dc_operator]    Script Date: 5/27/2022 4:45:11 AM ******/
CREATE ROLE [dc_operator]
GO
/****** Object:  DatabaseRole [dc_proxy]    Script Date: 5/27/2022 4:45:11 AM ******/
CREATE ROLE [dc_proxy]
GO
/****** Object:  DatabaseRole [PolicyAdministratorRole]    Script Date: 5/27/2022 4:45:11 AM ******/
CREATE ROLE [PolicyAdministratorRole]
GO
/****** Object:  DatabaseRole [ServerGroupAdministratorRole]    Script Date: 5/27/2022 4:45:11 AM ******/
CREATE ROLE [ServerGroupAdministratorRole]
GO
/****** Object:  DatabaseRole [ServerGroupReaderRole]    Script Date: 5/27/2022 4:45:11 AM ******/
CREATE ROLE [ServerGroupReaderRole]
GO
/****** Object:  DatabaseRole [SQLAgentOperatorRole]    Script Date: 5/27/2022 4:45:11 AM ******/
CREATE ROLE [SQLAgentOperatorRole]
GO
/****** Object:  DatabaseRole [SQLAgentReaderRole]    Script Date: 5/27/2022 4:45:11 AM ******/
CREATE ROLE [SQLAgentReaderRole]
GO
/****** Object:  DatabaseRole [SQLAgentUserRole]    Script Date: 5/27/2022 4:45:11 AM ******/
CREATE ROLE [SQLAgentUserRole]
GO
/****** Object:  DatabaseRole [TargetServersRole]    Script Date: 5/27/2022 4:45:11 AM ******/
CREATE ROLE [TargetServersRole]
GO
/****** Object:  DatabaseRole [UtilityCMRReader]    Script Date: 5/27/2022 4:45:11 AM ******/
CREATE ROLE [UtilityCMRReader]
GO
/****** Object:  DatabaseRole [UtilityIMRReader]    Script Date: 5/27/2022 4:45:11 AM ******/
CREATE ROLE [UtilityIMRReader]
GO
/****** Object:  DatabaseRole [UtilityIMRWriter]    Script Date: 5/27/2022 4:45:11 AM ******/
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
sys.sp_addrolemember @rolename = N'SQLAgentUserRole', @membername = N'RDAlfie'
GO
sys.sp_addrolemember @rolename = N'SQLAgentReaderRole', @membername = N'RDAlfie'
GO
sys.sp_addrolemember @rolename = N'SQLAgentOperatorRole', @membername = N'RDAlfie'
GO
sys.sp_addrolemember @rolename = N'DatabaseMailUserRole', @membername = N'RDAlfie'
GO
sys.sp_addrolemember @rolename = N'ServerGroupAdministratorRole', @membername = N'RDAlfie'
GO
sys.sp_addrolemember @rolename = N'ServerGroupReaderRole', @membername = N'RDAlfie'
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'RDAlfie'
GO
sys.sp_addrolemember @rolename = N'SQLAgentUserRole', @membername = N'RDAlvin'
GO
sys.sp_addrolemember @rolename = N'SQLAgentReaderRole', @membername = N'RDAlvin'
GO
sys.sp_addrolemember @rolename = N'SQLAgentOperatorRole', @membername = N'RDAlvin'
GO
sys.sp_addrolemember @rolename = N'DatabaseMailUserRole', @membername = N'RDAlvin'
GO
sys.sp_addrolemember @rolename = N'ServerGroupAdministratorRole', @membername = N'RDAlvin'
GO
sys.sp_addrolemember @rolename = N'ServerGroupReaderRole', @membername = N'RDAlvin'
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'RDAlvin'
GO
sys.sp_addrolemember @rolename = N'SQLAgentUserRole', @membername = N'RDBenLee'
GO
sys.sp_addrolemember @rolename = N'DatabaseMailUserRole', @membername = N'RDCharlie'
GO
sys.sp_addrolemember @rolename = N'db_backupoperator', @membername = N'RDCharlie'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDCharlie'
GO
sys.sp_addrolemember @rolename = N'SQLAgentUserRole', @membername = N'RDLeon'
GO
sys.sp_addrolemember @rolename = N'SQLAgentReaderRole', @membername = N'RDLeon'
GO
sys.sp_addrolemember @rolename = N'SQLAgentOperatorRole', @membername = N'RDLeon'
GO
sys.sp_addrolemember @rolename = N'db_ssisadmin', @membername = N'RDLeon'
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'RDLeon'
GO
sys.sp_addrolemember @rolename = N'db_backupoperator', @membername = N'RDLeon'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDLeon'
GO
sys.sp_addrolemember @rolename = N'SQLAgentUserRole', @membername = N'RDMei'
GO
sys.sp_addrolemember @rolename = N'SQLAgentReaderRole', @membername = N'RDMei'
GO
sys.sp_addrolemember @rolename = N'SQLAgentUserRole', @membername = N'RDSylvia'
GO
sys.sp_addrolemember @rolename = N'SQLAgentReaderRole', @membername = N'RDSylvia'
GO
sys.sp_addrolemember @rolename = N'SQLAgentOperatorRole', @membername = N'RDSylvia'
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'RDSylvia'
GO
sys.sp_addrolemember @rolename = N'db_backupoperator', @membername = N'RDSylvia'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDSylvia'
GO
sys.sp_addrolemember @rolename = N'SQLAgentUserRole', @membername = N'RDVictor'
GO
sys.sp_addrolemember @rolename = N'SQLAgentReaderRole', @membername = N'RDVictor'
GO
sys.sp_addrolemember @rolename = N'SQLAgentOperatorRole', @membername = N'RDVictor'
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
sys.sp_addrolemember @rolename = N'SQLAgentUserRole', @membername = N'SqlLink'
GO
sys.sp_addrolemember @rolename = N'SQLAgentReaderRole', @membername = N'SqlLink'
GO
sys.sp_addrolemember @rolename = N'SQLAgentOperatorRole', @membername = N'SqlLink'
GO
sys.sp_addrolemember @rolename = N'DatabaseMailUserRole', @membername = N'SqlLink'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'SqlLink'
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'thien'
GO
sys.sp_addrolemember @rolename = N'db_backupoperator', @membername = N'thien'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'thien'
GO
sys.sp_addrolemember @rolename = N'SQLAgentUserRole', @membername = N'vnBilly'
GO
sys.sp_addrolemember @rolename = N'SQLAgentReaderRole', @membername = N'vnBilly'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'vnBilly'
GO
sys.sp_addrolemember @rolename = N'SQLAgentUserRole', @membername = N'vnBobby'
GO
sys.sp_addrolemember @rolename = N'SQLAgentReaderRole', @membername = N'vnBobby'
GO
sys.sp_addrolemember @rolename = N'SQLAgentOperatorRole', @membername = N'vnBobby'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'vnBobby'
GO
sys.sp_addrolemember @rolename = N'SQLAgentUserRole', @membername = N'vnBrice'
GO
sys.sp_addrolemember @rolename = N'SQLAgentReaderRole', @membername = N'vnBrice'
GO
sys.sp_addrolemember @rolename = N'SQLAgentUserRole', @membername = N'vnDaniel'
GO
sys.sp_addrolemember @rolename = N'SQLAgentReaderRole', @membername = N'vnDaniel'
GO
sys.sp_addrolemember @rolename = N'SQLAgentOperatorRole', @membername = N'vnDaniel'
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'vnDaniel'
GO
sys.sp_addrolemember @rolename = N'db_backupoperator', @membername = N'vnDaniel'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'vnDaniel'
GO
sys.sp_addrolemember @rolename = N'SQLAgentUserRole', @membername = N'vnDBA'
GO
sys.sp_addrolemember @rolename = N'SQLAgentReaderRole', @membername = N'vnDBA'
GO
sys.sp_addrolemember @rolename = N'SQLAgentOperatorRole', @membername = N'vnDBA'
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'vnDBA'
GO
sys.sp_addrolemember @rolename = N'db_backupoperator', @membername = N'vnDBA'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'vnDBA'
GO
sys.sp_addrolemember @rolename = N'SQLAgentUserRole', @membername = N'vnPatrick'
GO
sys.sp_addrolemember @rolename = N'SQLAgentReaderRole', @membername = N'vnPatrick'
GO
sys.sp_addrolemember @rolename = N'SQLAgentOperatorRole', @membername = N'vnPatrick'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'vnPatrick'
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
/****** Object:  Schema [DatabaseMailUserRole]    Script Date: 5/27/2022 4:45:12 AM ******/
CREATE SCHEMA [DatabaseMailUserRole]
GO
/****** Object:  Schema [db_ssisadmin]    Script Date: 5/27/2022 4:45:12 AM ******/
CREATE SCHEMA [db_ssisadmin]
GO
/****** Object:  Schema [db_ssisltduser]    Script Date: 5/27/2022 4:45:12 AM ******/
CREATE SCHEMA [db_ssisltduser]
GO
/****** Object:  Schema [db_ssisoperator]    Script Date: 5/27/2022 4:45:12 AM ******/
CREATE SCHEMA [db_ssisoperator]
GO
/****** Object:  Schema [MS_PerfDashboard]    Script Date: 5/27/2022 4:45:12 AM ******/
CREATE SCHEMA [MS_PerfDashboard]
GO
/****** Object:  Schema [RDBenLee]    Script Date: 5/27/2022 4:45:12 AM ******/
CREATE SCHEMA [RDBenLee]
GO
/****** Object:  Schema [SQLAgentOperatorRole]    Script Date: 5/27/2022 4:45:12 AM ******/
CREATE SCHEMA [SQLAgentOperatorRole]
GO
/****** Object:  Schema [SQLAgentReaderRole]    Script Date: 5/27/2022 4:45:12 AM ******/
CREATE SCHEMA [SQLAgentReaderRole]
GO
/****** Object:  Schema [SQLAgentUserRole]    Script Date: 5/27/2022 4:45:12 AM ******/
CREATE SCHEMA [SQLAgentUserRole]
GO
/****** Object:  Schema [TargetServersRole]    Script Date: 5/27/2022 4:45:12 AM ******/
CREATE SCHEMA [TargetServersRole]
GO

