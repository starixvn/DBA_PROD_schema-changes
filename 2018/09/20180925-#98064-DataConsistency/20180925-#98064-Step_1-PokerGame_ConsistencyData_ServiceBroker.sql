USE [bodb_Consistency]
GO
/*
	Created: 20180925@Kathy
	Task: Data consistency
	DB: DBTP/bodb_Consistency

*/
ALTER QUEUE [dbo].[Queue_DataConsistency] WITH STATUS = ON , RETENTION = OFF , ACTIVATION (  STATUS = ON , PROCEDURE_NAME = [dbo].[DBA_Consistency_MessageReceive] , MAX_QUEUE_READERS = 10 , EXECUTE AS OWNER  ), POISON_MESSAGE_HANDLING (STATUS = ON) 