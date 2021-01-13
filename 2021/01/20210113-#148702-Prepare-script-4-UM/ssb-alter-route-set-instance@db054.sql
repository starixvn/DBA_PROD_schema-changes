
/*
	Task - Setup new server DB052
		+ Alter route set broker instanceId
	Run on DB054
*/
USE ServiceBrokerDB
GO
ALTER ROUTE [Route_Settled_Ticket_BETRUNNING]   WITH  SERVICE_NAME  = N'Service_Settled_Ticket_DBAGE', BROKER_INSTANCE = N'43FCD305-0516-44CC-BE73-DD7BBD01A363' ,  ADDRESS  = N'TCP://DB052:4741' 
GO