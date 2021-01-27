/*
	Task: Sync data Ticketvoiding_VoidBetAutomation_Service after setup replication
	Run on subs DB06x, DBTP
*/
USE bodb02
GO

--TRUNCATE TABLE Ticketvoiding_VoidBetAutomation_Service

SET IDENTITY_INSERT Ticketvoiding_VoidBetAutomation_Service ON

INSERT Ticketvoiding_VoidBetAutomation_Service(
ID, RequestID, VoidingHistory, statusID, matchID, SessionID, createdDate, ModifiedDate, NegativeBalanceUsers, VoidResults, IsAutoVoid, IsRunExternalService, MessageId, ReasonId, 
                      IsSentBatchMessage, IsSentMessageToAdminSite, IsInsertedVoidedTransaction, IsUpdatedVoidingHistory, IsSentEmail, IsSentLetsTalk
                      )
SELECT ID, RequestID, VoidingHistory, statusID, matchID, SessionID, createdDate, ModifiedDate, NegativeBalanceUsers, VoidResults, IsAutoVoid, IsRunExternalService, MessageId, ReasonId, 
                      IsSentBatchMessage, IsSentMessageToAdminSite, IsInsertedVoidedTransaction, IsUpdatedVoidingHistory, IsSentEmail, IsSentLetsTalk
FROM DBTRANS.bodb02.dbo.Ticketvoiding_VoidBetAutomation_Service WITH (NOLOCK)


SET IDENTITY_INSERT Ticketvoiding_VoidBetAutomation_Service OFF