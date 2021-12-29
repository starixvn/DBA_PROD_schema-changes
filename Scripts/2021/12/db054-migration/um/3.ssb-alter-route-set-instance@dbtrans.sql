
/*
	Task - Upgrade SQL Server DB054 to 2019
		+ Alter route
	Run on DBTrans
*/
USE [bodb_CustomerLog]
GO

ALTER ROUTE [Route_TicketVoiding_DBLOG]   WITH  SERVICE_NAME  = N'Service_TicketVoiding_DBLOG',  ADDRESS  = N'TCP://DB054:4742' 
GO