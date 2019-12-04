/*
	Creator:	20191122@Sophia
	Task:		Trigger for Ploutos system - [Redmine: #123957]
	Server:		DB053
*/

USE [bodb_LicenseeReportArchive]
GO
CREATE TRIGGER [dbo].[rptDep_AuditTickets_AfterInsert]
	ON [dbo].[rptDep_AuditTickets] AFTER INSERT
AS
 /*
	Created:20191122@Sophia
	Task: Trigger after insert and add ticket to BetTicket
	DB: DBLIC.bodb_LicenseeReportArchive
	Revisions:
		- 20191122@Sophia: Initialize
 */
BEGIN
SET NOCOUNT ON 
 
INSERT INTO [bodb_Ploutos].[dbo].[BetTicket]
           ([TransactionId]
           ,[TransactionDate]
           ,[SettlementDate]
           ,[CustId]
		   ,[BrandCode]
           ,[GameCode]
           ,[GameType]
           ,[GamePlatformCode]
           ,[CurrencyCode]
           ,[BetAmount]
           ,[DebitAmount]
           ,[CreditAmount]
           ,[NetAmount]
           ,[WinLostDate] 
		   ,StatusID
            )
SELECT 	TransactionId AS [TransactionId]
		,TransactionDate AS [TransactionDate]
		,SettlementDate AS [SettlementDate]
		,T.PlayerNo AS [CustId]
		,T.Brand AS [BrandCode]
		,'0'+ CAST(GameCode as VARCHAR(10)) AS [GameCode]
		,CASE GameType WHEN 'CA' THEN 0
					   WHEN 'RNG' THEN 1
					   WHEN 'SB' THEN 2 
			END	 AS [GameType]	
		,GameType AS [GamePlatformCode]
		,T.CurrencyCode AS [CurrencyCode]
		,T.BetAmount
		,T.DebitAmount
		,T.CreditAmount
		,T.NetAmount
		,T.WinLostDate  
		,0 AS StatusID
FROM INSERTED T  
WHERE  T.DebitAmount <> T.CreditAmount   --- Exclude Draw ticket

END
GO

ALTER TABLE [dbo].[rptDep_AuditTickets] ENABLE TRIGGER [rptDep_AuditTickets_AfterInsert]
GO

USE [bodb_LicenseeReportArchive]
GO
CREATE TRIGGER [dbo].[rptDep_AuditTickets_AfterUpdate]
	ON [dbo].[rptDep_AuditTickets] AFTER UPDATE
AS
 /*
	Created:20191123@Bobby
	Task: Trigger after update and add ticket to rptDep_AuditTickets_History
	DB: DBLIC.bodb_LicenseeReportArchive
	Revisions:
		- 20191123@Bobby: Initialize
 */
 
BEGIN
	SET NOCOUNT ON 
 
	INSERT INTO [dbo].[rptDep_AuditTickets_History]
			   ([PlayerNo]
			   ,[PlayerName]
			   ,[PlayerType]
			   ,[TransactionDate]
			   ,[TransactionId]
			   ,[SettlementDate]
			   ,[Brand]
			   ,[BrandUrl]
			   ,[GameCode]
			   ,[GameName]
			   ,[GameType]
			   ,[CurrencyCode]
			   ,[BetType]
			   ,[BetAmount]
			   ,[DebitAmount]
			   ,[CreditAmount]
			   ,[NetAmount]
			   ,[WinLostDate]
			   ,[ModifiedDate])
	SELECT 	[PlayerNo]
			   ,[PlayerName]
			   ,[PlayerType]
			   ,[TransactionDate]
			   ,[TransactionId]
			   ,[SettlementDate]
			   ,[Brand]
			   ,[BrandUrl]
			   ,[GameCode]
			   ,[GameName]
			   ,[GameType]
			   ,[CurrencyCode]
			   ,[BetType]
			   ,[BetAmount]
			   ,[DebitAmount]
			   ,[CreditAmount]
			   ,[NetAmount]
			   ,[WinLostDate]
			   ,GETDATE()
	FROM deleted T

END
GO
ALTER TABLE [dbo].[rptDep_AuditTickets] ENABLE TRIGGER [rptDep_AuditTickets_AfterUpdate]
GO

