
/*
	Task - Setup new server DB054
		+ Alter route set broker instanceId
	Run on DBTrans
*/
USE [bodb_CustomerLog]
GO

ALTER ROUTE [Route_TicketVoiding_DBLOG]   WITH  SERVICE_NAME  = N'Service_TicketVoiding_DBLOG', BROKER_INSTANCE = N'CEC3A6B7-FB52-4CE8-8974-29992E1DE16A' ,  ADDRESS  = N'TCP://DB054:4742' 
GO