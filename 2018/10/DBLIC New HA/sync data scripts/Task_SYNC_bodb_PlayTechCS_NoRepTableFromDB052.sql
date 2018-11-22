CREATE PROCEDURE Task_SYNC_bodb_PlayTechCS_NoRepTableFromDB052
AS
/*
	Task: Sync data for some tables @bodb_PlayTechCS
	Created: 20181004@Daniel
*/
BEGIN
	declare @MoveBetsDay smalldatetime

	SELECT @MoveBetsDay = max(eventdate) FROM bodb02.dbo.match14 WITH(NOLOCK)

	SELECT  [CustId], [Currency], [WinlostDate], [Thirdpartyid], [UserName], [Stake], [WinLoss], [TransferInApi], [TransferOutApi], [OpeningBalance], [ClosingBalance], [Createdate], [ModifyDate], [UserName2]
	into #tmp
	FROM DB052.bodb_PlayTechCS.dbo.BalanceAGCasino WITH (NOLOCK)
	WHERE winlostdate >= @MoveBetsDay

	ALTER TABLE #tmp ADD  CONSTRAINT [PK_#tmp] PRIMARY KEY CLUSTERED 
	(
		[WinlostDate] ASC,
		[Currency] ASC,
		[CustId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)


	--*** Start BalanceAGCasino
	declare @tmpAction_BalanceAGCasino TABLE (ChangeType VARCHAR(20))
	MERGE dbo.BalanceAGCasino WITH(HOLDLOCK) TARGET
	USING (
		SELECT  [CustId], [Currency], [WinlostDate], [Thirdpartyid], [UserName], [Stake], [WinLoss], [TransferInApi], [TransferOutApi], [OpeningBalance], [ClosingBalance], [Createdate], [ModifyDate], [UserName2]
		FROM #tmp
		--SELECT  [CustId], [Currency], [WinlostDate], [Thirdpartyid], [UserName], [Stake], [WinLoss], [TransferInApi], [TransferOutApi], [OpeningBalance], [ClosingBalance], [Createdate], [ModifyDate], [UserName2]
		--FROM DB052.bodb_PlayTechCS.dbo.BalanceAGCasino WITH (NOLOCK)
	) AS SOURCE
		ON	TARGET.[CustId] = SOURCE.[CustId] AND TARGET.[Currency] = SOURCE.[Currency] AND TARGET.[WinlostDate] = SOURCE.[WinlostDate]
	WHEN	MATCHED AND (SOURCE.[Thirdpartyid] <> TARGET.[Thirdpartyid] OR SOURCE.[UserName] <> TARGET.[UserName] OR SOURCE.[Stake] <> TARGET.[Stake] OR SOURCE.[WinLoss] <> TARGET.[WinLoss] OR SOURCE.[TransferInApi] <> TARGET.[TransferInApi] OR SOURCE.[TransferOutApi] <> TARGET.[TransferOutApi] OR SOURCE.[OpeningBalance] <> TARGET.[OpeningBalance] OR SOURCE.[ClosingBalance] <> TARGET.[ClosingBalance] OR SOURCE.[Createdate] <> TARGET.[Createdate] OR SOURCE.[ModifyDate] <> TARGET.[ModifyDate] OR SOURCE.[UserName2] <> TARGET.[UserName2]) THEN
		UPDATE SET  [Thirdpartyid] = SOURCE.[Thirdpartyid], [UserName] = SOURCE.[UserName], [Stake] = SOURCE.[Stake], [WinLoss] = SOURCE.[WinLoss], [TransferInApi] = SOURCE.[TransferInApi], [TransferOutApi] = SOURCE.[TransferOutApi], [OpeningBalance] = SOURCE.[OpeningBalance], [ClosingBalance] = SOURCE.[ClosingBalance], [Createdate] = SOURCE.[Createdate], [ModifyDate] = SOURCE.[ModifyDate], [UserName2] = SOURCE.[UserName2]
	WHEN NOT MATCHED BY TARGET THEN	
		INSERT ( [CustId], [Currency], [WinlostDate], [Thirdpartyid], [UserName], [Stake], [WinLoss], [TransferInApi], [TransferOutApi], [OpeningBalance], [ClosingBalance], [Createdate], [ModifyDate], [UserName2])
		VALUES( SOURCE.[CustId], SOURCE.[Currency], SOURCE.[WinlostDate], SOURCE.[Thirdpartyid], SOURCE.[UserName], SOURCE.[Stake], SOURCE.[WinLoss], SOURCE.[TransferInApi], SOURCE.[TransferOutApi], SOURCE.[OpeningBalance], SOURCE.[ClosingBalance], SOURCE.[Createdate], SOURCE.[ModifyDate], SOURCE.[UserName2])	
	WHEN NOT MATCHED BY SOURCE  AND TARGET.winlostdate >= @MoveBetsDay THEN DELETE
	OUTPUT $action into @tmpAction_BalanceAGCasino;

	declare @s_BalanceAGCasino varchar(100)
	select @s_BalanceAGCasino = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_BalanceAGCasino where ChangeType = 'INSERT'
	select @s_BalanceAGCasino = @s_BalanceAGCasino + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_BalanceAGCasino where ChangeType = 'UPDATE'
	select @s_BalanceAGCasino = @s_BalanceAGCasino + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_BalanceAGCasino where ChangeType = 'DELETE'
	PRINT 'BalanceAGCasino: ' + @s_BalanceAGCasino
	--*** Done BalanceAGCasino	drop table #tmpEND