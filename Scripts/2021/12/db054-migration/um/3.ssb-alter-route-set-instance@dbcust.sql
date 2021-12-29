
/*
	Task - Upgrade SQL Server DB054 to 2019
		+ Alter route
	Run on DBCUST
*/
USE [bodb_CustomerLog]
GO
ALTER ROUTE [Route_CustomerLog_DBCUST]   WITH  SERVICE_NAME  = N'Service_CustomerLog_DBLOG',  ADDRESS  = N'TCP://DB054:4742' 
GO
ALTER ROUTE [Route_UserLog_Others_To_DBLOG]   WITH  SERVICE_NAME  = N'Service_UserLog_Others_DBLOG',  ADDRESS  = N'TCP://DB054:4742' 
GO