--*** Start Bettrans_Exchange
declare @tmpAction_Bettrans_Exchange TABLE (ChangeType VARCHAR(20))
MERGE dbo.Bettrans_Exchange TARGET
USING (
	SELECT  [betID], [site], [currencyType], [eventType], [eventTypeName], [eventName], [eventID], [marketName], [marketID], [selectionName], [selectionID], [matchType], [betPlaced], [ip], [matchOddsReq], [unMatchAmount], [reduction], [userId], [extension1], [matchStake], [matchAvgOdds], [profitLoss], [betStatus], [dateMatched], [APIEndDate]
	FROM DB052.bodb_3rdProduct.dbo.Bettrans_Exchange WITH (NOLOCK)
) AS SOURCE
	ON	TARGET.[betID] = SOURCE.[betID]
WHEN	MATCHED AND (SOURCE.[site] <> TARGET.[site] OR SOURCE.[currencyType] <> TARGET.[currencyType] OR SOURCE.[eventType] <> TARGET.[eventType] OR SOURCE.[eventTypeName] <> TARGET.[eventTypeName] OR SOURCE.[eventName] <> TARGET.[eventName] OR SOURCE.[eventID] <> TARGET.[eventID] OR SOURCE.[marketName] <> TARGET.[marketName] OR SOURCE.[marketID] <> TARGET.[marketID] OR SOURCE.[selectionName] <> TARGET.[selectionName] OR SOURCE.[selectionID] <> TARGET.[selectionID] OR SOURCE.[matchType] <> TARGET.[matchType] OR SOURCE.[betPlaced] <> TARGET.[betPlaced] OR SOURCE.[ip] <> TARGET.[ip] OR SOURCE.[matchOddsReq] <> TARGET.[matchOddsReq] OR SOURCE.[unMatchAmount] <> TARGET.[unMatchAmount] OR SOURCE.[reduction] <> TARGET.[reduction] OR SOURCE.[userId] <> TARGET.[userId] OR SOURCE.[extension1] <> TARGET.[extension1] OR SOURCE.[matchStake] <> TARGET.[matchStake] OR SOURCE.[matchAvgOdds] <> TARGET.[matchAvgOdds] OR SOURCE.[profitLoss] <> TARGET.[profitLoss] OR SOURCE.[betStatus] <> TARGET.[betStatus] OR SOURCE.[dateMatched] <> TARGET.[dateMatched] OR SOURCE.[APIEndDate] <> TARGET.[APIEndDate]) THEN
	UPDATE SET  [site] = SOURCE.[site], [currencyType] = SOURCE.[currencyType], [eventType] = SOURCE.[eventType], [eventTypeName] = SOURCE.[eventTypeName], [eventName] = SOURCE.[eventName], [eventID] = SOURCE.[eventID], [marketName] = SOURCE.[marketName], [marketID] = SOURCE.[marketID], [selectionName] = SOURCE.[selectionName], [selectionID] = SOURCE.[selectionID], [matchType] = SOURCE.[matchType], [betPlaced] = SOURCE.[betPlaced], [ip] = SOURCE.[ip], [matchOddsReq] = SOURCE.[matchOddsReq], [unMatchAmount] = SOURCE.[unMatchAmount], [reduction] = SOURCE.[reduction], [userId] = SOURCE.[userId], [extension1] = SOURCE.[extension1], [matchStake] = SOURCE.[matchStake], [matchAvgOdds] = SOURCE.[matchAvgOdds], [profitLoss] = SOURCE.[profitLoss], [betStatus] = SOURCE.[betStatus], [dateMatched] = SOURCE.[dateMatched], [APIEndDate] = SOURCE.[APIEndDate]
WHEN NOT MATCHED BY TARGET THEN	
	INSERT ( [betID], [site], [currencyType], [eventType], [eventTypeName], [eventName], [eventID], [marketName], [marketID], [selectionName], [selectionID], [matchType], [betPlaced], [ip], [matchOddsReq], [unMatchAmount], [reduction], [userId], [extension1], [matchStake], [matchAvgOdds], [profitLoss], [betStatus], [dateMatched], [APIEndDate])
	VALUES( SOURCE.[betID], SOURCE.[site], SOURCE.[currencyType], SOURCE.[eventType], SOURCE.[eventTypeName], SOURCE.[eventName], SOURCE.[eventID], SOURCE.[marketName], SOURCE.[marketID], SOURCE.[selectionName], SOURCE.[selectionID], SOURCE.[matchType], SOURCE.[betPlaced], SOURCE.[ip], SOURCE.[matchOddsReq], SOURCE.[unMatchAmount], SOURCE.[reduction], SOURCE.[userId], SOURCE.[extension1], SOURCE.[matchStake], SOURCE.[matchAvgOdds], SOURCE.[profitLoss], SOURCE.[betStatus], SOURCE.[dateMatched], SOURCE.[APIEndDate])	
WHEN NOT MATCHED BY SOURCE THEN DELETE
OUTPUT $action into @tmpAction_Bettrans_Exchange;

declare @s_Bettrans_Exchange varchar(100)
select @s_Bettrans_Exchange = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Bettrans_Exchange where ChangeType = 'INSERT'
select @s_Bettrans_Exchange = @s_Bettrans_Exchange + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Bettrans_Exchange where ChangeType = 'UPDATE'
select @s_Bettrans_Exchange = @s_Bettrans_Exchange + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Bettrans_Exchange where ChangeType = 'DELETE'
PRINT 'Bettrans_Exchange: ' + @s_Bettrans_Exchange
--*** Done Bettrans_Exchange
--*** Start BettransM_Exchange
declare @tmpAction_BettransM_Exchange TABLE (ChangeType VARCHAR(20))
SET IDENTITY_INSERT BettransM_Exchange ONMERGE dbo.BettransM_Exchange TARGET
USING (
	SELECT  [TransID], [BetID], [betTaken], [txStake], [txOddsMatched], [actualOdds]
	FROM DB052.bodb_3rdProduct.dbo.BettransM_Exchange WITH (NOLOCK)
) AS SOURCE
	ON	TARGET.[TransID] = SOURCE.[TransID]
WHEN	MATCHED AND (SOURCE.[BetID] <> TARGET.[BetID] OR SOURCE.[betTaken] <> TARGET.[betTaken] OR SOURCE.[txStake] <> TARGET.[txStake] OR SOURCE.[txOddsMatched] <> TARGET.[txOddsMatched] OR SOURCE.[actualOdds] <> TARGET.[actualOdds]) THEN
	UPDATE SET  [BetID] = SOURCE.[BetID], [betTaken] = SOURCE.[betTaken], [txStake] = SOURCE.[txStake], [txOddsMatched] = SOURCE.[txOddsMatched], [actualOdds] = SOURCE.[actualOdds]
WHEN NOT MATCHED BY TARGET THEN	
	INSERT ( [TransID], [BetID], [betTaken], [txStake], [txOddsMatched], [actualOdds])
	VALUES( SOURCE.[TransID], SOURCE.[BetID], SOURCE.[betTaken], SOURCE.[txStake], SOURCE.[txOddsMatched], SOURCE.[actualOdds])	
WHEN NOT MATCHED BY SOURCE THEN DELETE
OUTPUT $action into @tmpAction_BettransM_Exchange;
SET IDENTITY_INSERT BettransM_Exchange OFF
declare @s_BettransM_Exchang varchar(100)
select @s_BettransM_Exchang = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_BettransM_Exchange where ChangeType = 'INSERT'
select @s_BettransM_Exchang = @s_BettransM_Exchang + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_BettransM_Exchange where ChangeType = 'UPDATE'
select @s_BettransM_Exchang = @s_BettransM_Exchang + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_BettransM_Exchange where ChangeType = 'DELETE'
PRINT 'BettransM_Exchange: ' + @s_BettransM_Exchang
--*** Done BettransM_Exchange
--*** Start Sum_winloss_Exchange
declare @tmpAction_Sum_winloss_Exchange TABLE (ChangeType VARCHAR(20))
MERGE dbo.Sum_winloss_Exchange TARGET
USING (
	SELECT  [userId], [eventID], [marketID], [settledDate], [agentId], [eventTypeName], [eventName], [marketName], [startTime], [profitLoss], [marketTotal], [commission], [agentCommission], [stakeTotal], [resettledDate], [CustID], [Currency], [ExVirtualRate]
	FROM DB052.bodb_3rdProduct.dbo.Sum_winloss_Exchange WITH (NOLOCK)
) AS SOURCE
	ON	TARGET.[userId] = SOURCE.[userId] AND TARGET.[eventID] = SOURCE.[eventID] AND TARGET.[marketID] = SOURCE.[marketID] AND TARGET.[settledDate] = SOURCE.[settledDate]
WHEN	MATCHED AND (SOURCE.[agentId] <> TARGET.[agentId] OR SOURCE.[eventTypeName] <> TARGET.[eventTypeName] OR SOURCE.[eventName] <> TARGET.[eventName] OR SOURCE.[marketName] <> TARGET.[marketName] OR SOURCE.[startTime] <> TARGET.[startTime] OR SOURCE.[profitLoss] <> TARGET.[profitLoss] OR SOURCE.[marketTotal] <> TARGET.[marketTotal] OR SOURCE.[commission] <> TARGET.[commission] OR SOURCE.[agentCommission] <> TARGET.[agentCommission] OR SOURCE.[stakeTotal] <> TARGET.[stakeTotal] OR SOURCE.[resettledDate] <> TARGET.[resettledDate] OR SOURCE.[CustID] <> TARGET.[CustID] OR SOURCE.[Currency] <> TARGET.[Currency] OR SOURCE.[ExVirtualRate] <> TARGET.[ExVirtualRate]) THEN
	UPDATE SET  [agentId] = SOURCE.[agentId], [eventTypeName] = SOURCE.[eventTypeName], [eventName] = SOURCE.[eventName], [marketName] = SOURCE.[marketName], [startTime] = SOURCE.[startTime], [profitLoss] = SOURCE.[profitLoss], [marketTotal] = SOURCE.[marketTotal], [commission] = SOURCE.[commission], [agentCommission] = SOURCE.[agentCommission], [stakeTotal] = SOURCE.[stakeTotal], [resettledDate] = SOURCE.[resettledDate], [CustID] = SOURCE.[CustID], [Currency] = SOURCE.[Currency], [ExVirtualRate] = SOURCE.[ExVirtualRate]
WHEN NOT MATCHED BY TARGET THEN	
	INSERT ( [userId], [eventID], [marketID], [settledDate], [agentId], [eventTypeName], [eventName], [marketName], [startTime], [profitLoss], [marketTotal], [commission], [agentCommission], [stakeTotal], [resettledDate], [CustID], [Currency], [ExVirtualRate])
	VALUES( SOURCE.[userId], SOURCE.[eventID], SOURCE.[marketID], SOURCE.[settledDate], SOURCE.[agentId], SOURCE.[eventTypeName], SOURCE.[eventName], SOURCE.[marketName], SOURCE.[startTime], SOURCE.[profitLoss], SOURCE.[marketTotal], SOURCE.[commission], SOURCE.[agentCommission], SOURCE.[stakeTotal], SOURCE.[resettledDate], SOURCE.[CustID], SOURCE.[Currency], SOURCE.[ExVirtualRate])	
WHEN NOT MATCHED BY SOURCE THEN DELETE
OUTPUT $action into @tmpAction_Sum_winloss_Exchange;

declare @s_Sum_winloss_Excha varchar(100)
select @s_Sum_winloss_Excha = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Sum_winloss_Exchange where ChangeType = 'INSERT'
select @s_Sum_winloss_Excha = @s_Sum_winloss_Excha + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Sum_winloss_Exchange where ChangeType = 'UPDATE'
select @s_Sum_winloss_Excha = @s_Sum_winloss_Excha + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Sum_winloss_Exchange where ChangeType = 'DELETE'
PRINT 'Sum_winloss_Exchange: ' + @s_Sum_winloss_Excha
--*** Done Sum_winloss_Exchange
--*** Start Product3rd_SummarizedDateHistory
declare @tmpAction_Product3rd_SummarizedDateHistory TABLE (ChangeType VARCHAR(20))
SET IDENTITY_INSERT Product3rd_SummarizedDateHistory ONMERGE dbo.Product3rd_SummarizedDateHistory TARGET
USING (
	SELECT  [ID], [ProductID], [CreatedDate], [WinlostDate], [SumToThirdPartyDate], [SumToBettingProductDate], [SumToBettransDate]
	FROM DB052.bodb_3rdProduct.dbo.Product3rd_SummarizedDateHistory WITH (NOLOCK)
) AS SOURCE
	ON	TARGET.[ID] = SOURCE.[ID]
WHEN	MATCHED AND (SOURCE.[ProductID] <> TARGET.[ProductID] OR SOURCE.[CreatedDate] <> TARGET.[CreatedDate] OR SOURCE.[WinlostDate] <> TARGET.[WinlostDate] OR SOURCE.[SumToThirdPartyDate] <> TARGET.[SumToThirdPartyDate] OR SOURCE.[SumToBettingProductDate] <> TARGET.[SumToBettingProductDate] OR SOURCE.[SumToBettransDate] <> TARGET.[SumToBettransDate]) THEN
	UPDATE SET  [ProductID] = SOURCE.[ProductID], [CreatedDate] = SOURCE.[CreatedDate], [WinlostDate] = SOURCE.[WinlostDate], [SumToThirdPartyDate] = SOURCE.[SumToThirdPartyDate], [SumToBettingProductDate] = SOURCE.[SumToBettingProductDate], [SumToBettransDate] = SOURCE.[SumToBettransDate]
WHEN NOT MATCHED BY TARGET THEN	
	INSERT ( [ID], [ProductID], [CreatedDate], [WinlostDate], [SumToThirdPartyDate], [SumToBettingProductDate], [SumToBettransDate])
	VALUES( SOURCE.[ID], SOURCE.[ProductID], SOURCE.[CreatedDate], SOURCE.[WinlostDate], SOURCE.[SumToThirdPartyDate], SOURCE.[SumToBettingProductDate], SOURCE.[SumToBettransDate])	
WHEN NOT MATCHED BY SOURCE THEN DELETE
OUTPUT $action into @tmpAction_Product3rd_SummarizedDateHistory;
SET IDENTITY_INSERT Product3rd_SummarizedDateHistory OFF
declare @s_Product3rd_Summar varchar(100)
select @s_Product3rd_Summar = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Product3rd_SummarizedDateHistory where ChangeType = 'INSERT'
select @s_Product3rd_Summar = @s_Product3rd_Summar + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Product3rd_SummarizedDateHistory where ChangeType = 'UPDATE'
select @s_Product3rd_Summar = @s_Product3rd_Summar + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Product3rd_SummarizedDateHistory where ChangeType = 'DELETE'
PRINT 'Product3rd_SummarizedDateHistory: ' + @s_Product3rd_Summar
--*** Done Product3rd_SummarizedDateHistory
--*** Start BetTrans_VoidBridge
declare @tmpAction_BetTrans_VoidBridge TABLE (ChangeType VARCHAR(20))
SET IDENTITY_INSERT BetTrans_VoidBridge ONMERGE dbo.BetTrans_VoidBridge TARGET
USING (
	SELECT  [TransId], [CustId], [Currency], [Status], [StakeAmount], [WinAmount], [WinlostDate], [TransDate], [GameId], [GameName], [GameType], [GameKind], [Balance], [Recommend], [SiteName], [TransactionId]
	FROM DB052.bodb_3rdProduct.dbo.BetTrans_VoidBridge WITH (NOLOCK)
) AS SOURCE
	ON	TARGET.[TransId] = SOURCE.[TransId]
WHEN	MATCHED AND (SOURCE.[CustId] <> TARGET.[CustId] OR SOURCE.[Currency] <> TARGET.[Currency] OR SOURCE.[Status] <> TARGET.[Status] OR SOURCE.[StakeAmount] <> TARGET.[StakeAmount] OR SOURCE.[WinAmount] <> TARGET.[WinAmount] OR SOURCE.[WinlostDate] <> TARGET.[WinlostDate] OR SOURCE.[TransDate] <> TARGET.[TransDate] OR SOURCE.[GameId] <> TARGET.[GameId] OR SOURCE.[GameName] <> TARGET.[GameName] OR SOURCE.[GameType] <> TARGET.[GameType] OR SOURCE.[GameKind] <> TARGET.[GameKind] OR SOURCE.[Balance] <> TARGET.[Balance] OR SOURCE.[Recommend] <> TARGET.[Recommend] OR SOURCE.[SiteName] <> TARGET.[SiteName] OR SOURCE.[TransactionId] <> TARGET.[TransactionId]) THEN
	UPDATE SET  [CustId] = SOURCE.[CustId], [Currency] = SOURCE.[Currency], [Status] = SOURCE.[Status], [StakeAmount] = SOURCE.[StakeAmount], [WinAmount] = SOURCE.[WinAmount], [WinlostDate] = SOURCE.[WinlostDate], [TransDate] = SOURCE.[TransDate], [GameId] = SOURCE.[GameId], [GameName] = SOURCE.[GameName], [GameType] = SOURCE.[GameType], [GameKind] = SOURCE.[GameKind], [Balance] = SOURCE.[Balance], [Recommend] = SOURCE.[Recommend], [SiteName] = SOURCE.[SiteName], [TransactionId] = SOURCE.[TransactionId]
WHEN NOT MATCHED BY TARGET THEN	
	INSERT ( [TransId], [CustId], [Currency], [Status], [StakeAmount], [WinAmount], [WinlostDate], [TransDate], [GameId], [GameName], [GameType], [GameKind], [Balance], [Recommend], [SiteName], [TransactionId])
	VALUES( SOURCE.[TransId], SOURCE.[CustId], SOURCE.[Currency], SOURCE.[Status], SOURCE.[StakeAmount], SOURCE.[WinAmount], SOURCE.[WinlostDate], SOURCE.[TransDate], SOURCE.[GameId], SOURCE.[GameName], SOURCE.[GameType], SOURCE.[GameKind], SOURCE.[Balance], SOURCE.[Recommend], SOURCE.[SiteName], SOURCE.[TransactionId])	
WHEN NOT MATCHED BY SOURCE THEN DELETE
OUTPUT $action into @tmpAction_BetTrans_VoidBridge;
SET IDENTITY_INSERT BetTrans_VoidBridge OFF
declare @s_BetTrans_VoidBrid varchar(100)
select @s_BetTrans_VoidBrid = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_BetTrans_VoidBridge where ChangeType = 'INSERT'
select @s_BetTrans_VoidBrid = @s_BetTrans_VoidBrid + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_BetTrans_VoidBridge where ChangeType = 'UPDATE'
select @s_BetTrans_VoidBrid = @s_BetTrans_VoidBrid + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_BetTrans_VoidBridge where ChangeType = 'DELETE'
PRINT 'BetTrans_VoidBridge: ' + @s_BetTrans_VoidBrid
--*** Done BetTrans_VoidBridge (est 2 min)
--SET IDENTITY_INSERT BetTrans_VoidBridge OFF