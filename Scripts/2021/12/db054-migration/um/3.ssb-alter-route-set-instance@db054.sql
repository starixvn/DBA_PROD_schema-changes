
/*
	Task - Upgrade SQL Server DB054 to 2019
		+ Alter route
	Run on DB054
*/
USE ServiceBrokerDB
GO
ALTER ROUTE [Route_Settled_Ticket_BETRUNNING]   WITH  SERVICE_NAME  = N'Service_Settled_Ticket_DBAGE',  ADDRESS  = N'TCP://DB052:4741' 
GO