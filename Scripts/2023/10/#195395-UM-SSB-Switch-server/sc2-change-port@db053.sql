
--DB053
--//Change port ssb on DB055
USE [bodb02]
GO

ALTER ROUTE [Route_Settled_Ticket_DBAGE]   WITH  SERVICE_NAME  = N'Service_Settled_Ticket_BETRUNNING' ,  ADDRESS  = N'TCP://DB055:4742' 
GO