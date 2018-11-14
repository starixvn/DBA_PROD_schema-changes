ALTER PROCEDURE Task_SYNC_bodb_Licensee_NoRepTableFromDB052
AS
/*
	Task: Sync data for some tables that kept for phase 1 (not add into DBCUST replication yet)
	Created: 20181004@Daniel
*/
BEGIN
	--*** Start LA_ChargeInfo_SystemMapping
	TRUNCATE TABLE LA_ChargeInfo_SystemMapping
	INSERT LA_ChargeInfo_SystemMapping SELECT * FROM DB052.bodb_Licensee.dbo.LA_ChargeInfo_SystemMapping with (nolock)
	--*** Done LA_ChargeInfo_SystemMapping
	--*** Start LA_Product3rdSub
	declare @tmpAction_LA_Product3rdSub TABLE (ChangeType VARCHAR(20))
	MERGE dbo.LA_Product3rdSub TARGET
	USING (
		SELECT  [Productid], [BettypeRef], [ProductName]
		FROM DB052.bodb_Licensee.dbo.LA_Product3rdSub WITH (NOLOCK)
	) AS SOURCE
		ON	TARGET.[Productid] = SOURCE.[Productid] AND TARGET.[BettypeRef] = SOURCE.[BettypeRef]
	WHEN	MATCHED AND (SOURCE.[ProductName] <> TARGET.[ProductName]) THEN
		UPDATE SET  [ProductName] = SOURCE.[ProductName]
	WHEN NOT MATCHED BY TARGET THEN	
		INSERT ( [Productid], [BettypeRef], [ProductName])
		VALUES( SOURCE.[Productid], SOURCE.[BettypeRef], SOURCE.[ProductName])	
	WHEN NOT MATCHED BY SOURCE THEN DELETE
	OUTPUT $action into @tmpAction_LA_Product3rdSub;

	declare @s_LA_Product3rdSub varchar(100)
	select @s_LA_Product3rdSub = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LA_Product3rdSub where ChangeType = 'INSERT'
	select @s_LA_Product3rdSub = @s_LA_Product3rdSub + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LA_Product3rdSub where ChangeType = 'UPDATE'
	select @s_LA_Product3rdSub = @s_LA_Product3rdSub + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LA_Product3rdSub where ChangeType = 'DELETE'
	PRINT 'LA_Product3rdSub: ' + @s_LA_Product3rdSub
	--*** Done LA_Product3rdSub
	----*** Start LicenseeBATransaction
	--declare @tmpAction_LicenseeBATransaction TABLE (ChangeType VARCHAR(20))
	--MERGE dbo.LicenseeBATransaction TARGET
	--USING (
	--	SELECT  [TransID], [Transdate]
	--	FROM DB052.bodb_Licensee.dbo.LicenseeBATransaction WITH (NOLOCK)
	--) AS SOURCE
	--	ON	TARGET.[TransID] = SOURCE.[TransID]
	--WHEN	MATCHED AND (SOURCE.[Transdate] <> TARGET.[Transdate]) THEN
	--	UPDATE SET  [Transdate] = SOURCE.[Transdate]
	--WHEN NOT MATCHED BY TARGET THEN	
	--	INSERT ( [TransID], [Transdate])
	--	VALUES( SOURCE.[TransID], SOURCE.[Transdate])	
	--WHEN NOT MATCHED BY SOURCE THEN DELETE
	--OUTPUT $action into @tmpAction_LicenseeBATransaction;

	--declare @s_LicenseeBATransac varchar(100)
	--select @s_LicenseeBATransac = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeBATransaction where ChangeType = 'INSERT'
	--select @s_LicenseeBATransac = @s_LicenseeBATransac + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeBATransaction where ChangeType = 'UPDATE'
	--select @s_LicenseeBATransac = @s_LicenseeBATransac + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeBATransaction where ChangeType = 'DELETE'
	--PRINT 'LicenseeBATransaction: ' + @s_LicenseeBATransac
	----*** Done LicenseeBATransaction
	----*** Start LicenseeBATransaction_active
	--TRUNCATE TABLE LicenseeBATransaction_active
	--INSERT LicenseeBATransaction_active SELECT * FROM DB052.bodb_Licensee.dbo.LicenseeBATransaction_active with (nolock)
	----*** Done LicenseeBATransaction_active
	--*** Start LICSettings
	declare @tmpAction_LICSettings TABLE (ChangeType VARCHAR(20))
	SET IDENTITY_INSERT LICSettings ON	MERGE dbo.LICSettings TARGET
	USING (
		SELECT  [VID], [VName], [VValue], [VValue2]
		FROM DB052.bodb_Licensee.dbo.LICSettings WITH (NOLOCK)
	) AS SOURCE
		ON	TARGET.[VID] = SOURCE.[VID]
	WHEN	MATCHED AND (SOURCE.[VName] <> TARGET.[VName] OR SOURCE.[VValue] <> TARGET.[VValue] OR SOURCE.[VValue2] <> TARGET.[VValue2]) THEN
		UPDATE SET  [VName] = SOURCE.[VName], [VValue] = SOURCE.[VValue], [VValue2] = SOURCE.[VValue2]
	WHEN NOT MATCHED BY TARGET THEN	
		INSERT ( [VID], [VName], [VValue], [VValue2])
		VALUES( SOURCE.[VID], SOURCE.[VName], SOURCE.[VValue], SOURCE.[VValue2])	
	WHEN NOT MATCHED BY SOURCE THEN DELETE
	OUTPUT $action into @tmpAction_LICSettings;
	SET IDENTITY_INSERT LICSettings OFF
	declare @s_LICSettings varchar(100)
	select @s_LICSettings = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LICSettings where ChangeType = 'INSERT'
	select @s_LICSettings = @s_LICSettings + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LICSettings where ChangeType = 'UPDATE'
	select @s_LICSettings = @s_LICSettings + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LICSettings where ChangeType = 'DELETE'
	PRINT 'LICSettings: ' + @s_LICSettings
	--*** Done LICSettings
	--*** Start OAS_ChargeInfo
	declare @tmpAction_OAS_ChargeInfo TABLE (ChangeType VARCHAR(20))
	SET IDENTITY_INSERT OAS_ChargeInfo ON	MERGE dbo.OAS_ChargeInfo TARGET
	USING (
		SELECT  [ChargeID], [ProductID], [FromParty], [ToParty], [ParentChargeID], [Rate], [ChargeType], [FromDate], [ToDate], [MinAmount], [MaxAmount], [Remark], [BaseCurrencyId], [FirstOfBilling], [BasisOfBilling]
		FROM DB052.bodb_Licensee.dbo.OAS_ChargeInfo WITH (NOLOCK)
	) AS SOURCE
		ON	TARGET.[ChargeID] = SOURCE.[ChargeID]
	WHEN	MATCHED AND (SOURCE.[ProductID] <> TARGET.[ProductID] OR SOURCE.[FromParty] <> TARGET.[FromParty] OR SOURCE.[ToParty] <> TARGET.[ToParty] OR SOURCE.[ParentChargeID] <> TARGET.[ParentChargeID] OR SOURCE.[Rate] <> TARGET.[Rate] OR SOURCE.[ChargeType] <> TARGET.[ChargeType] OR SOURCE.[FromDate] <> TARGET.[FromDate] OR SOURCE.[ToDate] <> TARGET.[ToDate] OR SOURCE.[MinAmount] <> TARGET.[MinAmount] OR SOURCE.[MaxAmount] <> TARGET.[MaxAmount] OR SOURCE.[Remark] <> TARGET.[Remark] OR SOURCE.[BaseCurrencyId] <> TARGET.[BaseCurrencyId] OR SOURCE.[FirstOfBilling] <> TARGET.[FirstOfBilling] OR SOURCE.[BasisOfBilling] <> TARGET.[BasisOfBilling]) THEN
		UPDATE SET  [ProductID] = SOURCE.[ProductID], [FromParty] = SOURCE.[FromParty], [ToParty] = SOURCE.[ToParty], [ParentChargeID] = SOURCE.[ParentChargeID], [Rate] = SOURCE.[Rate], [ChargeType] = SOURCE.[ChargeType], [FromDate] = SOURCE.[FromDate], [ToDate] = SOURCE.[ToDate], [MinAmount] = SOURCE.[MinAmount], [MaxAmount] = SOURCE.[MaxAmount], [Remark] = SOURCE.[Remark], [BaseCurrencyId] = SOURCE.[BaseCurrencyId], [FirstOfBilling] = SOURCE.[FirstOfBilling], [BasisOfBilling] = SOURCE.[BasisOfBilling]
	WHEN NOT MATCHED BY TARGET THEN	
		INSERT ( [ChargeID], [ProductID], [FromParty], [ToParty], [ParentChargeID], [Rate], [ChargeType], [FromDate], [ToDate], [MinAmount], [MaxAmount], [Remark], [BaseCurrencyId], [FirstOfBilling], [BasisOfBilling])
		VALUES( SOURCE.[ChargeID], SOURCE.[ProductID], SOURCE.[FromParty], SOURCE.[ToParty], SOURCE.[ParentChargeID], SOURCE.[Rate], SOURCE.[ChargeType], SOURCE.[FromDate], SOURCE.[ToDate], SOURCE.[MinAmount], SOURCE.[MaxAmount], SOURCE.[Remark], SOURCE.[BaseCurrencyId], SOURCE.[FirstOfBilling], SOURCE.[BasisOfBilling])	
	WHEN NOT MATCHED BY SOURCE THEN DELETE
	OUTPUT $action into @tmpAction_OAS_ChargeInfo;
	SET IDENTITY_INSERT OAS_ChargeInfo OFF
	declare @s_OAS_ChargeInfo varchar(100)
	select @s_OAS_ChargeInfo = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_OAS_ChargeInfo where ChangeType = 'INSERT'
	select @s_OAS_ChargeInfo = @s_OAS_ChargeInfo + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_OAS_ChargeInfo where ChangeType = 'UPDATE'
	select @s_OAS_ChargeInfo = @s_OAS_ChargeInfo + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_OAS_ChargeInfo where ChangeType = 'DELETE'
	PRINT 'OAS_ChargeInfo: ' + @s_OAS_ChargeInfo
	--*** Done OAS_ChargeInfo
	--*** Start OAS_ChargeInfoSub
	declare @tmpAction_OAS_ChargeInfoSub TABLE (ChangeType VARCHAR(20))
	SET IDENTITY_INSERT OAS_ChargeInfoSub ON	MERGE dbo.OAS_ChargeInfoSub TARGET
	USING (
		SELECT  [ChargeID], [ProductID], [BettypeRef], [FromParty], [ToParty], [ParentChargeID], [Rate], [ChargeType], [FromDate], [ToDate], [MinAmount], [MaxAmount], [BaseCurrencyId], [FirstOfBilling], [BasisOfBilling], [ChargeIdRef]
		FROM DB052.bodb_Licensee.dbo.OAS_ChargeInfoSub WITH (NOLOCK)
	) AS SOURCE
		ON	TARGET.[ChargeID] = SOURCE.[ChargeID]
	WHEN	MATCHED AND (SOURCE.[ProductID] <> TARGET.[ProductID] OR SOURCE.[BettypeRef] <> TARGET.[BettypeRef] OR SOURCE.[FromParty] <> TARGET.[FromParty] OR SOURCE.[ToParty] <> TARGET.[ToParty] OR SOURCE.[ParentChargeID] <> TARGET.[ParentChargeID] OR SOURCE.[Rate] <> TARGET.[Rate] OR SOURCE.[ChargeType] <> TARGET.[ChargeType] OR SOURCE.[FromDate] <> TARGET.[FromDate] OR SOURCE.[ToDate] <> TARGET.[ToDate] OR SOURCE.[MinAmount] <> TARGET.[MinAmount] OR SOURCE.[MaxAmount] <> TARGET.[MaxAmount] OR SOURCE.[BaseCurrencyId] <> TARGET.[BaseCurrencyId] OR SOURCE.[FirstOfBilling] <> TARGET.[FirstOfBilling] OR SOURCE.[BasisOfBilling] <> TARGET.[BasisOfBilling] OR SOURCE.[ChargeIdRef] <> TARGET.[ChargeIdRef]) THEN
		UPDATE SET  [ProductID] = SOURCE.[ProductID], [BettypeRef] = SOURCE.[BettypeRef], [FromParty] = SOURCE.[FromParty], [ToParty] = SOURCE.[ToParty], [ParentChargeID] = SOURCE.[ParentChargeID], [Rate] = SOURCE.[Rate], [ChargeType] = SOURCE.[ChargeType], [FromDate] = SOURCE.[FromDate], [ToDate] = SOURCE.[ToDate], [MinAmount] = SOURCE.[MinAmount], [MaxAmount] = SOURCE.[MaxAmount], [BaseCurrencyId] = SOURCE.[BaseCurrencyId], [FirstOfBilling] = SOURCE.[FirstOfBilling], [BasisOfBilling] = SOURCE.[BasisOfBilling], [ChargeIdRef] = SOURCE.[ChargeIdRef]
	WHEN NOT MATCHED BY TARGET THEN	
		INSERT ( [ChargeID], [ProductID], [BettypeRef], [FromParty], [ToParty], [ParentChargeID], [Rate], [ChargeType], [FromDate], [ToDate], [MinAmount], [MaxAmount], [BaseCurrencyId], [FirstOfBilling], [BasisOfBilling], [ChargeIdRef])
		VALUES( SOURCE.[ChargeID], SOURCE.[ProductID], SOURCE.[BettypeRef], SOURCE.[FromParty], SOURCE.[ToParty], SOURCE.[ParentChargeID], SOURCE.[Rate], SOURCE.[ChargeType], SOURCE.[FromDate], SOURCE.[ToDate], SOURCE.[MinAmount], SOURCE.[MaxAmount], SOURCE.[BaseCurrencyId], SOURCE.[FirstOfBilling], SOURCE.[BasisOfBilling], SOURCE.[ChargeIdRef])	
	WHEN NOT MATCHED BY SOURCE THEN DELETE
	OUTPUT $action into @tmpAction_OAS_ChargeInfoSub;
	SET IDENTITY_INSERT OAS_ChargeInfoSub OFF
	declare @s_OAS_ChargeInfoSub varchar(100)
	select @s_OAS_ChargeInfoSub = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_OAS_ChargeInfoSub where ChangeType = 'INSERT'
	select @s_OAS_ChargeInfoSub = @s_OAS_ChargeInfoSub + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_OAS_ChargeInfoSub where ChangeType = 'UPDATE'
	select @s_OAS_ChargeInfoSub = @s_OAS_ChargeInfoSub + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_OAS_ChargeInfoSub where ChangeType = 'DELETE'
	PRINT 'OAS_ChargeInfoSub: ' + @s_OAS_ChargeInfoSub
	--*** Done OAS_ChargeInfoSub
	--*** Start OAS_Party
	declare @tmpAction_OAS_Party TABLE (ChangeType VARCHAR(20))
	SET IDENTITY_INSERT OAS_Party ON	MERGE dbo.OAS_Party TARGET
	USING (
		SELECT  [PartyID], [PartyName], [Description], [PartyType], [OldRefID], [SetupName]
		FROM DB052.bodb_Licensee.dbo.OAS_Party WITH (NOLOCK)
	) AS SOURCE
		ON	TARGET.[PartyID] = SOURCE.[PartyID]
	WHEN	MATCHED AND (SOURCE.[PartyName] <> TARGET.[PartyName] OR SOURCE.[Description] <> TARGET.[Description] OR SOURCE.[PartyType] <> TARGET.[PartyType] OR SOURCE.[OldRefID] <> TARGET.[OldRefID] OR SOURCE.[SetupName] <> TARGET.[SetupName]) THEN
		UPDATE SET  [PartyName] = SOURCE.[PartyName], [Description] = SOURCE.[Description], [PartyType] = SOURCE.[PartyType], [OldRefID] = SOURCE.[OldRefID], [SetupName] = SOURCE.[SetupName]
	WHEN NOT MATCHED BY TARGET THEN	
		INSERT ( [PartyID], [PartyName], [Description], [PartyType], [OldRefID], [SetupName])
		VALUES( SOURCE.[PartyID], SOURCE.[PartyName], SOURCE.[Description], SOURCE.[PartyType], SOURCE.[OldRefID], SOURCE.[SetupName])	
	WHEN NOT MATCHED BY SOURCE THEN DELETE
	OUTPUT $action into @tmpAction_OAS_Party;
	SET IDENTITY_INSERT OAS_Party OFF
	declare @s_OAS_Party varchar(100)
	select @s_OAS_Party = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_OAS_Party where ChangeType = 'INSERT'
	select @s_OAS_Party = @s_OAS_Party + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_OAS_Party where ChangeType = 'UPDATE'
	select @s_OAS_Party = @s_OAS_Party + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_OAS_Party where ChangeType = 'DELETE'
	PRINT 'OAS_Party: ' + @s_OAS_Party
	--*** Done OAS_Party
	--*** Start OAS_PartyDetail
	TRUNCATE TABLE OAS_PartyDetail
	INSERT OAS_PartyDetail SELECT * FROM DB052.bodb_Licensee.dbo.OAS_PartyDetail with (nolock)
	--*** Done OAS_PartyDetailEND
