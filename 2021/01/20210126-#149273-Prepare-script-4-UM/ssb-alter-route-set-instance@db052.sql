
/*
	Task - Setup new server DB052
		+ Alter route set broker instanceId
	Run on DB052
*/
USE bodb02
GO
ALTER ROUTE [Route_Settled_Ticket_DBAGE]   WITH  SERVICE_NAME  = N'Service_Settled_Ticket_BETRUNNING', BROKER_INSTANCE = N'45746C2F-3DD4-4509-9F61-F40121B741AD' ,  ADDRESS  = N'TCP://DB054:4742' 
GO