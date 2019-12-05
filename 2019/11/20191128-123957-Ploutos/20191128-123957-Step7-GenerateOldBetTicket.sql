USE [bodb_Ploutos]
GO

 /*
Created: 20191120@Sophia
DB: DB053.bodb_Ploutos
Task :  Initial Data
*/

 
 DECLARE  @Brand VARCHAR(100) = 'Opal88'  
 , @FromDate DATETIME = '2018-01-01'
 , @ToDate DATETIME = '2019-12-01'


SELECT *
INTO #T
FROM bodb_LicenseeReportArchive.dbo.rptDep_AuditTickets t WITH (NOLOCK) 
WHERE Brand = @Brand   
AND WINLOSTDATE BETWEEN @FromDate AND @Todate
  
 
INSERT INTO [dbo].[BetTicket]
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
		   ,[StatusID])
SELECT 
		TransactionId AS [TransactionId]
		,TransactionDate AS [TransactionDate]
		,SettlementDate AS [SettlementDate]	
		,T.PlayerNo AS [CustId]
		,T.Brand
		,'0'+ CAST(GameCode as VARCHAR(10)) AS [GameCode]
		,CASE GameType WHEN 'CA' THEN 0
					   WHEN 'RNG' THEN 1
					   WHEn 'SB' THEN 2 
			END	 AS [GameType]
		,GameType AS [GamePlatformCode]
		,T.CurrencyCode AS [CurrencyCode]
		,T.BetAmount
		,T.DebitAmount
		,T.CreditAmount
		,T.NetAmount
		,T.WinLostDate 
		,0 AS StatusID
FROM #T T
WHERE T.DebitAmount <> T.CreditAmount   --- Exclude Draw ticket
	AND NOT EXISTS (Select 1 FROM BetTicket b WITH (NOLOCK) WHERE b.TransactionId = T.TransactionId)
	AND EXISTS(SELECT 1 FROM PlayerProfile p WITH (NOLOCK) WHERE p.CustID = t.PlayerNo AND p.BrandCode = t.Brand)
	  

DROP TABLE #T 
 
 