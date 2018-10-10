declare @MoveBetsDay smalldatetime

SELECT @MoveBetsDay = max(eventdate) FROM bodb02.dbo.match14 WITH(NOLOCK)

--*** Start bettrans_AGCasino
SELECT  [TicketID], [CustID], [Transdate], [GameType], [Stake], [Actual_Stake], [Winlost], [Status], [StatusID], [PlayType], [Winlostdate], [Username], [IP], [recommend], [mrecommend], [srecommend], [Currency], [IsVIPGame]
into #tmpbettrans_AGCasino
FROM DB052.bodb_PlayTechCS.dbo.bettrans_AGCasino WITH (NOLOCK)
WHERE winlostdate >= @MoveBetsDay

declare @tmpAction_bettrans_AGCasino TABLE (ChangeType VARCHAR(20))
MERGE dbo.bettrans_AGCasino TARGET
USING (
	SELECT  [TicketID], [CustID], [Transdate], [GameType], [Stake], [Actual_Stake], [Winlost], [Status], [StatusID], [PlayType], [Winlostdate], [Username], [IP], [recommend], [mrecommend], [srecommend], [Currency], [IsVIPGame]
	FROM #tmpbettrans_AGCasino
) AS SOURCE
	ON	TARGET.[TicketID] = SOURCE.[TicketID]
WHEN	MATCHED AND (SOURCE.[CustID] <> TARGET.[CustID] OR SOURCE.[Transdate] <> TARGET.[Transdate] OR SOURCE.[GameType] <> TARGET.[GameType] OR SOURCE.[Stake] <> TARGET.[Stake] OR SOURCE.[Actual_Stake] <> TARGET.[Actual_Stake] OR SOURCE.[Winlost] <> TARGET.[Winlost] OR SOURCE.[Status] <> TARGET.[Status] OR SOURCE.[StatusID] <> TARGET.[StatusID] OR SOURCE.[PlayType] <> TARGET.[PlayType] OR SOURCE.[Winlostdate] <> TARGET.[Winlostdate] OR SOURCE.[Username] <> TARGET.[Username] OR SOURCE.[IP] <> TARGET.[IP] OR SOURCE.[recommend] <> TARGET.[recommend] OR SOURCE.[mrecommend] <> TARGET.[mrecommend] OR SOURCE.[srecommend] <> TARGET.[srecommend] OR SOURCE.[Currency] <> TARGET.[Currency] OR SOURCE.[IsVIPGame] <> TARGET.[IsVIPGame]) THEN
	UPDATE SET  [CustID] = SOURCE.[CustID], [Transdate] = SOURCE.[Transdate], [GameType] = SOURCE.[GameType], [Stake] = SOURCE.[Stake], [Actual_Stake] = SOURCE.[Actual_Stake], [Winlost] = SOURCE.[Winlost], [Status] = SOURCE.[Status], [StatusID] = SOURCE.[StatusID], [PlayType] = SOURCE.[PlayType], [Winlostdate] = SOURCE.[Winlostdate], [Username] = SOURCE.[Username], [IP] = SOURCE.[IP], [recommend] = SOURCE.[recommend], [mrecommend] = SOURCE.[mrecommend], [srecommend] = SOURCE.[srecommend], [Currency] = SOURCE.[Currency], [IsVIPGame] = SOURCE.[IsVIPGame]
WHEN NOT MATCHED BY TARGET THEN	
	INSERT ( [TicketID], [CustID], [Transdate], [GameType], [Stake], [Actual_Stake], [Winlost], [Status], [StatusID], [PlayType], [Winlostdate], [Username], [IP], [recommend], [mrecommend], [srecommend], [Currency], [IsVIPGame])
	VALUES( SOURCE.[TicketID], SOURCE.[CustID], SOURCE.[Transdate], SOURCE.[GameType], SOURCE.[Stake], SOURCE.[Actual_Stake], SOURCE.[Winlost], SOURCE.[Status], SOURCE.[StatusID], SOURCE.[PlayType], SOURCE.[Winlostdate], SOURCE.[Username], SOURCE.[IP], SOURCE.[recommend], SOURCE.[mrecommend], SOURCE.[srecommend], SOURCE.[Currency], SOURCE.[IsVIPGame])	
WHEN NOT MATCHED BY SOURCE AND TARGET.winlostdate >= @MoveBetsDay THEN DELETE
OUTPUT $action into @tmpAction_bettrans_AGCasino;

declare @s_bettrans_AGCasino varchar(100)
select @s_bettrans_AGCasino = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_bettrans_AGCasino where ChangeType = 'INSERT'
select @s_bettrans_AGCasino = @s_bettrans_AGCasino + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_bettrans_AGCasino where ChangeType = 'UPDATE'
select @s_bettrans_AGCasino = @s_bettrans_AGCasino + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_bettrans_AGCasino where ChangeType = 'DELETE'
PRINT 'bettrans_AGCasino: ' + @s_bettrans_AGCasino
--*** Done bettrans_AGCasino
--*** Start Product3rd_ImportQueue
--declare @tmpAction_Product3rd_ImportQueue TABLE (ChangeType VARCHAR(20))
--SET IDENTITY_INSERT Product3rd_ImportQueue ON--MERGE dbo.Product3rd_ImportQueue TARGET
--USING (
--	SELECT  [QueueID], [CheckInTime], [FinishedTime], [LicenseeName], [ProductID], [XmlData], [Winlostdate], [LogDesc], [isSummarized], [StartDate], [EndDate], [JobType], [IsForceUpdate]
--	FROM DB052.bodb_PlayTechCS.dbo.Product3rd_ImportQueue WITH (NOLOCK)
--) AS SOURCE
--	ON	TARGET.[QueueID] = SOURCE.[QueueID]
--WHEN	MATCHED AND (SOURCE.[CheckInTime] <> TARGET.[CheckInTime] OR SOURCE.[FinishedTime] <> TARGET.[FinishedTime] OR SOURCE.[LicenseeName] <> TARGET.[LicenseeName] OR SOURCE.[ProductID] <> TARGET.[ProductID] OR SOURCE.[XmlData] <> TARGET.[XmlData] OR SOURCE.[Winlostdate] <> TARGET.[Winlostdate] OR SOURCE.[LogDesc] <> TARGET.[LogDesc] OR SOURCE.[isSummarized] <> TARGET.[isSummarized] OR SOURCE.[StartDate] <> TARGET.[StartDate] OR SOURCE.[EndDate] <> TARGET.[EndDate] OR SOURCE.[JobType] <> TARGET.[JobType] OR SOURCE.[IsForceUpdate] <> TARGET.[IsForceUpdate]) THEN
--	UPDATE SET  [CheckInTime] = SOURCE.[CheckInTime], [FinishedTime] = SOURCE.[FinishedTime], [LicenseeName] = SOURCE.[LicenseeName], [ProductID] = SOURCE.[ProductID], [XmlData] = SOURCE.[XmlData], [Winlostdate] = SOURCE.[Winlostdate], [LogDesc] = SOURCE.[LogDesc], [isSummarized] = SOURCE.[isSummarized], [StartDate] = SOURCE.[StartDate], [EndDate] = SOURCE.[EndDate], [JobType] = SOURCE.[JobType], [IsForceUpdate] = SOURCE.[IsForceUpdate]
--WHEN NOT MATCHED BY TARGET THEN	
--	INSERT ( [QueueID], [CheckInTime], [FinishedTime], [LicenseeName], [ProductID], [XmlData], [Winlostdate], [LogDesc], [isSummarized], [StartDate], [EndDate], [JobType], [IsForceUpdate])
--	VALUES( SOURCE.[QueueID], SOURCE.[CheckInTime], SOURCE.[FinishedTime], SOURCE.[LicenseeName], SOURCE.[ProductID], SOURCE.[XmlData], SOURCE.[Winlostdate], SOURCE.[LogDesc], SOURCE.[isSummarized], SOURCE.[StartDate], SOURCE.[EndDate], SOURCE.[JobType], SOURCE.[IsForceUpdate])	
--WHEN NOT MATCHED BY SOURCE THEN DELETE
--OUTPUT $action into @tmpAction_Product3rd_ImportQueue;
--SET IDENTITY_INSERT Product3rd_ImportQueue OFF
--declare @s_Product3rd_Import varchar(100)
--select @s_Product3rd_Import = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Product3rd_ImportQueue where ChangeType = 'INSERT'
--select @s_Product3rd_Import = @s_Product3rd_Import + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Product3rd_ImportQueue where ChangeType = 'UPDATE'
--select @s_Product3rd_Import = @s_Product3rd_Import + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Product3rd_ImportQueue where ChangeType = 'DELETE'
--PRINT 'Product3rd_ImportQueue: ' + @s_Product3rd_Import
--*** Done Product3rd_ImportQueue
--*** Start bettrans_GoldDeluxe

SELECT  [TicketID], [CustID], [Transdate], [GameType], [ProductID], [BetType], [Stake], [Winlost], [StartBalance], [EndBalance], [JackpotWin], [Status], [StatusID], [Winlostdate], [Currency], [RNGID], [recommend], [mrecommend], [srecommend], [UserName2]
into #tmpbettrans_GoldDeluxe
FROM DB052.bodb_PlayTechCS.dbo.bettrans_GoldDeluxe WITH (NOLOCK)
WHERE winlostdate >= @MoveBetsDay

declare @tmpAction_bettrans_GoldDeluxe TABLE (ChangeType VARCHAR(20))
MERGE dbo.bettrans_GoldDeluxe TARGET
USING (
	SELECT  [TicketID], [CustID], [Transdate], [GameType], [ProductID], [BetType], [Stake], [Winlost], [StartBalance], [EndBalance], [JackpotWin], [Status], [StatusID], [Winlostdate], [Currency], [RNGID], [recommend], [mrecommend], [srecommend], [UserName2]
	FROM #tmpbettrans_GoldDeluxe
) AS SOURCE
	ON	TARGET.[TicketID] = SOURCE.[TicketID]
WHEN	MATCHED AND (SOURCE.[CustID] <> TARGET.[CustID] OR SOURCE.[Transdate] <> TARGET.[Transdate] OR SOURCE.[GameType] <> TARGET.[GameType] OR SOURCE.[ProductID] <> TARGET.[ProductID] OR SOURCE.[BetType] <> TARGET.[BetType] OR SOURCE.[Stake] <> TARGET.[Stake] OR SOURCE.[Winlost] <> TARGET.[Winlost] OR SOURCE.[StartBalance] <> TARGET.[StartBalance] OR SOURCE.[EndBalance] <> TARGET.[EndBalance] OR SOURCE.[JackpotWin] <> TARGET.[JackpotWin] OR SOURCE.[Status] <> TARGET.[Status] OR SOURCE.[StatusID] <> TARGET.[StatusID] OR SOURCE.[Winlostdate] <> TARGET.[Winlostdate] OR SOURCE.[Currency] <> TARGET.[Currency] OR SOURCE.[RNGID] <> TARGET.[RNGID] OR SOURCE.[recommend] <> TARGET.[recommend] OR SOURCE.[mrecommend] <> TARGET.[mrecommend] OR SOURCE.[srecommend] <> TARGET.[srecommend] OR SOURCE.[UserName2] <> TARGET.[UserName2]) THEN
	UPDATE SET  [CustID] = SOURCE.[CustID], [Transdate] = SOURCE.[Transdate], [GameType] = SOURCE.[GameType], [ProductID] = SOURCE.[ProductID], [BetType] = SOURCE.[BetType], [Stake] = SOURCE.[Stake], [Winlost] = SOURCE.[Winlost], [StartBalance] = SOURCE.[StartBalance], [EndBalance] = SOURCE.[EndBalance], [JackpotWin] = SOURCE.[JackpotWin], [Status] = SOURCE.[Status], [StatusID] = SOURCE.[StatusID], [Winlostdate] = SOURCE.[Winlostdate], [Currency] = SOURCE.[Currency], [RNGID] = SOURCE.[RNGID], [recommend] = SOURCE.[recommend], [mrecommend] = SOURCE.[mrecommend], [srecommend] = SOURCE.[srecommend], [UserName2] = SOURCE.[UserName2]
WHEN NOT MATCHED BY TARGET THEN	
	INSERT ( [TicketID], [CustID], [Transdate], [GameType], [ProductID], [BetType], [Stake], [Winlost], [StartBalance], [EndBalance], [JackpotWin], [Status], [StatusID], [Winlostdate], [Currency], [RNGID], [recommend], [mrecommend], [srecommend], [UserName2])
	VALUES( SOURCE.[TicketID], SOURCE.[CustID], SOURCE.[Transdate], SOURCE.[GameType], SOURCE.[ProductID], SOURCE.[BetType], SOURCE.[Stake], SOURCE.[Winlost], SOURCE.[StartBalance], SOURCE.[EndBalance], SOURCE.[JackpotWin], SOURCE.[Status], SOURCE.[StatusID], SOURCE.[Winlostdate], SOURCE.[Currency], SOURCE.[RNGID], SOURCE.[recommend], SOURCE.[mrecommend], SOURCE.[srecommend], SOURCE.[UserName2])	
WHEN NOT MATCHED BY SOURCE AND TARGET.winlostdate >= @MoveBetsDay THEN DELETE
OUTPUT $action into @tmpAction_bettrans_GoldDeluxe;

declare @s_bettrans_GoldDelu varchar(100)
select @s_bettrans_GoldDelu = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_bettrans_GoldDeluxe where ChangeType = 'INSERT'
select @s_bettrans_GoldDelu = @s_bettrans_GoldDelu + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_bettrans_GoldDeluxe where ChangeType = 'UPDATE'
select @s_bettrans_GoldDelu = @s_bettrans_GoldDelu + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_bettrans_GoldDeluxe where ChangeType = 'DELETE'
PRINT 'bettrans_GoldDeluxe: ' + @s_bettrans_GoldDelu
--*** Done bettrans_GoldDeluxe


--*** Start Product3rd_ResettledBetHistory
declare @tmpAction_Product3rd_ResettledBetHistory TABLE (ChangeType VARCHAR(20))
SET IDENTITY_INSERT Product3rd_ResettledBetHistory ONMERGE dbo.Product3rd_ResettledBetHistory TARGET
USING (
	SELECT  [Id], [SettledDate], [UserId], [EventId], [MarketId], [ProductId], [CheckInTime], [FinishedTime], [Status]
	FROM DB052.bodb_PlayTechCS.dbo.Product3rd_ResettledBetHistory WITH (NOLOCK)
) AS SOURCE
	ON	TARGET.[Id] = SOURCE.[Id]
WHEN	MATCHED AND (SOURCE.[SettledDate] <> TARGET.[SettledDate] OR SOURCE.[UserId] <> TARGET.[UserId] OR SOURCE.[EventId] <> TARGET.[EventId] OR SOURCE.[MarketId] <> TARGET.[MarketId] OR SOURCE.[ProductId] <> TARGET.[ProductId] OR SOURCE.[CheckInTime] <> TARGET.[CheckInTime] OR SOURCE.[FinishedTime] <> TARGET.[FinishedTime] OR SOURCE.[Status] <> TARGET.[Status]) THEN
	UPDATE SET  [SettledDate] = SOURCE.[SettledDate], [UserId] = SOURCE.[UserId], [EventId] = SOURCE.[EventId], [MarketId] = SOURCE.[MarketId], [ProductId] = SOURCE.[ProductId], [CheckInTime] = SOURCE.[CheckInTime], [FinishedTime] = SOURCE.[FinishedTime], [Status] = SOURCE.[Status]
WHEN NOT MATCHED BY TARGET THEN	
	INSERT ( [Id], [SettledDate], [UserId], [EventId], [MarketId], [ProductId], [CheckInTime], [FinishedTime], [Status])
	VALUES( SOURCE.[Id], SOURCE.[SettledDate], SOURCE.[UserId], SOURCE.[EventId], SOURCE.[MarketId], SOURCE.[ProductId], SOURCE.[CheckInTime], SOURCE.[FinishedTime], SOURCE.[Status])	
WHEN NOT MATCHED BY SOURCE THEN DELETE
OUTPUT $action into @tmpAction_Product3rd_ResettledBetHistory;
SET IDENTITY_INSERT Product3rd_ResettledBetHistory OFF
declare @s_Product3rd_Resett varchar(100)
select @s_Product3rd_Resett = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Product3rd_ResettledBetHistory where ChangeType = 'INSERT'
select @s_Product3rd_Resett = @s_Product3rd_Resett + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Product3rd_ResettledBetHistory where ChangeType = 'UPDATE'
select @s_Product3rd_Resett = @s_Product3rd_Resett + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Product3rd_ResettledBetHistory where ChangeType = 'DELETE'
PRINT 'Product3rd_ResettledBetHistory: ' + @s_Product3rd_Resett
--*** Done Product3rd_ResettledBetHistory

--*** Start LicIntegrationSetting
truncate table dbo.LicIntegrationSetting
insert dbo.LicIntegrationSetting select * from DB052.bodb_PlayTechCS.dbo.LicIntegrationSetting with (nolock)
--*** Done LicIntegrationSetting


--*** Start LicenseeVersionKey
declare @tmpAction_LicenseeVersionKey TABLE (ChangeType VARCHAR(20))
MERGE dbo.LicenseeVersionKey TARGET
USING (
	SELECT  [LicenseeID], [LicenseeName], [VersionKey]
	FROM DB052.bodb_PlayTechCS.dbo.LicenseeVersionKey WITH (NOLOCK)
) AS SOURCE
	ON	TARGET.[LicenseeID] = SOURCE.[LicenseeID]
WHEN	MATCHED AND (SOURCE.[LicenseeName] <> TARGET.[LicenseeName] OR SOURCE.[VersionKey] <> TARGET.[VersionKey]) THEN
	UPDATE SET  [LicenseeName] = SOURCE.[LicenseeName], [VersionKey] = SOURCE.[VersionKey]
WHEN NOT MATCHED BY TARGET THEN	
	INSERT ( [LicenseeID], [LicenseeName], [VersionKey])
	VALUES( SOURCE.[LicenseeID], SOURCE.[LicenseeName], SOURCE.[VersionKey])	
WHEN NOT MATCHED BY SOURCE THEN DELETE
OUTPUT $action into @tmpAction_LicenseeVersionKey;

declare @s_LicenseeVersionKe varchar(100)
select @s_LicenseeVersionKe = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeVersionKey where ChangeType = 'INSERT'
select @s_LicenseeVersionKe = @s_LicenseeVersionKe + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeVersionKey where ChangeType = 'UPDATE'
select @s_LicenseeVersionKe = @s_LicenseeVersionKe + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeVersionKey where ChangeType = 'DELETE'
PRINT 'LicenseeVersionKey: ' + @s_LicenseeVersionKe
--*** Done LicenseeVersionKey
