/*
	Task - Setup sync status of tickets DB052 ==> DB054
		+ 

	Run on DB054.bodb02
*/


--==========ssb objects====================
CREATE MESSAGE TYPE [MessageType_Settled_Ticket] VALIDATION = NONE
GO
CREATE CONTRACT [Contract_Settled_Ticket] ([MessageType_Settled_Ticket] SENT BY ANY)
GO
CREATE QUEUE [dbo].[Queue_Settled_Ticket_BETRUNNING] WITH STATUS = ON , RETENTION = OFF , ACTIVATION (  STATUS = ON , PROCEDURE_NAME = [sb].[Settled_Ticket_ProcessData] , MAX_QUEUE_READERS = 10 , EXECUTE AS N'dbo'  ), POISON_MESSAGE_HANDLING (STATUS = ON)  ON [ServiceBrokerData] 
GO
CREATE SERVICE [Service_Settled_Ticket_BETRUNNING]  ON QUEUE [dbo].[Queue_Settled_Ticket_BETRUNNING] ([Contract_Settled_Ticket])
GO

GRANT SEND ON SERVICE::[Service_Settled_Ticket_BETRUNNING] TO [public] AS [dbo]
GO

CREATE ROUTE [Route_Settled_Ticket_BETRUNNING]   WITH  SERVICE_NAME  = N'Service_Settled_Ticket_DBAGE' ,  ADDRESS  = N'TCP://DB052:4741' 
GO