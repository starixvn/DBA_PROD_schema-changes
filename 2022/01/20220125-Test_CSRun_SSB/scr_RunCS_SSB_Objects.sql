/*
	Creator:	20220121@Daniel
	Task:		Script deploy service broker objects for run Setting
	Database:	DBSPARE.bodb02_CustRep
	
*/

USE [bodb02_CustRep]
GO

CREATE QUEUE [dbo].[RunCSInitiatorQueue] WITH STATUS = ON , RETENTION = OFF , POISON_MESSAGE_HANDLING (STATUS = ON)  ON [PRIMARY] 
GO

CREATE QUEUE [dbo].[RunCSTargetQueue] WITH STATUS = ON , RETENTION = OFF , ACTIVATION (  STATUS = ON , PROCEDURE_NAME = [dbo].[SB_RunCSTargetQueueActivator] , MAX_QUEUE_READERS = 10 , EXECUTE AS OWNER  ), POISON_MESSAGE_HANDLING (STATUS = ON)  ON [PRIMARY] 
GO

CREATE MESSAGE TYPE [RunCSMessage] VALIDATION = NONE
GO

CREATE CONTRACT [RunCSContract] ([RunCSMessage] SENT BY INITIATOR)
GO

CREATE SERVICE [RunCSInitiator]  ON QUEUE [dbo].[RunCSInitiatorQueue] ([RunCSContract])
GO

CREATE SERVICE [RunCSTarget]  ON QUEUE [dbo].[RunCSTargetQueue] ([RunCSContract])
GO