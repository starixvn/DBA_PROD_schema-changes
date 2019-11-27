/*
	Task - Setup sync status of tickets DB052 ==> DB054
		+ Create objects of ssb

	Run on DB052.bodb02
*/
use bodb02
go

CREATE MESSAGE TYPE [MessageType_Settled_Ticket] VALIDATION = NONE
GO
CREATE CONTRACT [Contract_Settled_Ticket] ([MessageType_Settled_Ticket] SENT BY ANY)
GO
CREATE QUEUE [dbo].[Queue_Settled_Ticket_DBAGE] WITH STATUS = ON , RETENTION = OFF , POISON_MESSAGE_HANDLING (STATUS = ON)  ON [ServiceBroker] 
GO
CREATE SERVICE [Service_Settled_Ticket_DBAGE]  ON QUEUE [dbo].[Queue_Settled_Ticket_DBAGE] ([Contract_Settled_Ticket])
GO

GRANT SEND ON SERVICE::[Service_Settled_Ticket_DBAGE] TO [public] AS [dbo]
GO
CREATE ROUTE [Route_Settled_Ticket_DBAGE]   WITH  SERVICE_NAME  = N'Service_Settled_Ticket_BETRUNNING' ,  ADDRESS  = N'TCP://DB054:4742' 
GO