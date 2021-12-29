
/*
	Task - Upgrade SQL Server DB054 to 2019
		+ Alter route
	Run on DB052
*/
USE bodb02
GO
ALTER ROUTE [Route_Settled_Ticket_DBAGE]   WITH  SERVICE_NAME  = N'Service_Settled_Ticket_BETRUNNING',  ADDRESS  = N'TCP://DB054:4742' 
GO