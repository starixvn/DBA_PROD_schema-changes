/*
	Task: Sync data from DB052.bodb_Licensee to DBCUST.bodb_Licensee (script is auto-gen from DMVs)
	Created by Daniel @20181001 for project DBLIC new HA structure (#99855)
	Run at destination DBCUST.bodb_Licensee

*/


--*** Start Country
declare @tmpAction_Country TABLE (ChangeType VARCHAR(20))
MERGE dbo.Country TARGET
USING (
	SELECT  [countrySHORT], [countryLONG]
	FROM DB052.bodb_Licensee.dbo.Country WITH (NOLOCK)
) AS SOURCE
	ON	TARGET.[countrySHORT] = SOURCE.[countrySHORT]
WHEN	MATCHED AND (SOURCE.[countryLONG] <> TARGET.[countryLONG]) THEN
	UPDATE SET  [countryLONG] = SOURCE.[countryLONG]
WHEN NOT MATCHED BY TARGET THEN	
	INSERT ( [countrySHORT], [countryLONG])
	VALUES( SOURCE.[countrySHORT], SOURCE.[countryLONG])	
WHEN NOT MATCHED BY SOURCE THEN DELETE
OUTPUT $action into @tmpAction_Country;

declare @s_Country varchar(100)
select @s_Country = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Country where ChangeType = 'INSERT'
select @s_Country = @s_Country + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Country where ChangeType = 'UPDATE'
select @s_Country = @s_Country + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Country where ChangeType = 'DELETE'
PRINT 'Country: ' + @s_Country
--*** Done Country

--*** Start CurrencyUser
declare @tmpAction_CurrencyUser TABLE (ChangeType VARCHAR(20))
MERGE dbo.CurrencyUser TARGET
USING (
	SELECT  [usrID], [LicenseeID], [CurrencyID], [SystemID], [isActive]
	FROM DB052.bodb_Licensee.dbo.CurrencyUser WITH (NOLOCK)
) AS SOURCE
	ON	TARGET.[usrID] = SOURCE.[usrID] AND TARGET.[LicenseeID] = SOURCE.[LicenseeID] AND TARGET.[CurrencyID] = SOURCE.[CurrencyID] AND TARGET.[SystemID] = SOURCE.[SystemID]
WHEN	MATCHED AND (SOURCE.[isActive] <> TARGET.[isActive]) THEN
	UPDATE SET  [isActive] = SOURCE.[isActive]
WHEN NOT MATCHED BY TARGET THEN	
	INSERT ( [usrID], [LicenseeID], [CurrencyID], [SystemID], [isActive])
	VALUES( SOURCE.[usrID], SOURCE.[LicenseeID], SOURCE.[CurrencyID], SOURCE.[SystemID], SOURCE.[isActive])	
WHEN NOT MATCHED BY SOURCE THEN DELETE
OUTPUT $action into @tmpAction_CurrencyUser;

declare @s_CurrencyUser varchar(100)
select @s_CurrencyUser = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_CurrencyUser where ChangeType = 'INSERT'
select @s_CurrencyUser = @s_CurrencyUser + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_CurrencyUser where ChangeType = 'UPDATE'
select @s_CurrencyUser = @s_CurrencyUser + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_CurrencyUser where ChangeType = 'DELETE'
PRINT 'CurrencyUser: ' + @s_CurrencyUser
--*** Done CurrencyUser
--*** Start Functions
declare @tmpAction_Functions TABLE (ChangeType VARCHAR(20))
SET IDENTITY_INSERT Functions ONMERGE dbo.Functions TARGET
USING (
	SELECT  [FunctionId], [Name], [Description], [ParentId], [Url], [IsMenu], [IsActive], [DisplayOrder], [IsNew], [FunctionKey], [Environment], [IsFunction]
	FROM DB052.bodb_Licensee.dbo.Functions WITH (NOLOCK)
) AS SOURCE
	ON	TARGET.[FunctionId] = SOURCE.[FunctionId]
WHEN	MATCHED AND (SOURCE.[Name] <> TARGET.[Name] OR SOURCE.[Description] <> TARGET.[Description] OR SOURCE.[ParentId] <> TARGET.[ParentId] OR SOURCE.[Url] <> TARGET.[Url] OR SOURCE.[IsMenu] <> TARGET.[IsMenu] OR SOURCE.[IsActive] <> TARGET.[IsActive] OR SOURCE.[DisplayOrder] <> TARGET.[DisplayOrder] OR SOURCE.[IsNew] <> TARGET.[IsNew] OR SOURCE.[FunctionKey] <> TARGET.[FunctionKey] OR SOURCE.[Environment] <> TARGET.[Environment] OR SOURCE.[IsFunction] <> TARGET.[IsFunction]) THEN
	UPDATE SET  [Name] = SOURCE.[Name], [Description] = SOURCE.[Description], [ParentId] = SOURCE.[ParentId], [Url] = SOURCE.[Url], [IsMenu] = SOURCE.[IsMenu], [IsActive] = SOURCE.[IsActive], [DisplayOrder] = SOURCE.[DisplayOrder], [IsNew] = SOURCE.[IsNew], [FunctionKey] = SOURCE.[FunctionKey], [Environment] = SOURCE.[Environment], [IsFunction] = SOURCE.[IsFunction]
WHEN NOT MATCHED BY TARGET THEN	
	INSERT ( [FunctionId], [Name], [Description], [ParentId], [Url], [IsMenu], [IsActive], [DisplayOrder], [IsNew], [FunctionKey], [Environment], [IsFunction])
	VALUES( SOURCE.[FunctionId], SOURCE.[Name], SOURCE.[Description], SOURCE.[ParentId], SOURCE.[Url], SOURCE.[IsMenu], SOURCE.[IsActive], SOURCE.[DisplayOrder], SOURCE.[IsNew], SOURCE.[FunctionKey], SOURCE.[Environment], SOURCE.[IsFunction])	
WHEN NOT MATCHED BY SOURCE THEN DELETE
OUTPUT $action into @tmpAction_Functions;
SET IDENTITY_INSERT Functions OFF
declare @s_Functions varchar(100)
select @s_Functions = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Functions where ChangeType = 'INSERT'
select @s_Functions = @s_Functions + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Functions where ChangeType = 'UPDATE'
select @s_Functions = @s_Functions + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Functions where ChangeType = 'DELETE'
PRINT 'Functions: ' + @s_Functions
--*** Done Functions
--*** Start Labels
declare @tmpAction_Labels TABLE (ChangeType VARCHAR(20))
MERGE dbo.Labels TARGET
USING (
	SELECT  [LabelID], [LicenseeID], [LabelName], [AffectedDate], [IsKPISummary]
	FROM DB052.bodb_Licensee.dbo.Labels WITH (NOLOCK)
) AS SOURCE
	ON	TARGET.[LabelID] = SOURCE.[LabelID]
WHEN	MATCHED AND (SOURCE.[LicenseeID] <> TARGET.[LicenseeID] OR SOURCE.[LabelName] <> TARGET.[LabelName] OR SOURCE.[AffectedDate] <> TARGET.[AffectedDate] OR SOURCE.[IsKPISummary] <> TARGET.[IsKPISummary]) THEN
	UPDATE SET  [LicenseeID] = SOURCE.[LicenseeID], [LabelName] = SOURCE.[LabelName], [AffectedDate] = SOURCE.[AffectedDate], [IsKPISummary] = SOURCE.[IsKPISummary]
WHEN NOT MATCHED BY TARGET THEN	
	INSERT ( [LabelID], [LicenseeID], [LabelName], [AffectedDate], [IsKPISummary])
	VALUES( SOURCE.[LabelID], SOURCE.[LicenseeID], SOURCE.[LabelName], SOURCE.[AffectedDate], SOURCE.[IsKPISummary])	
WHEN NOT MATCHED BY SOURCE THEN DELETE
OUTPUT $action into @tmpAction_Labels;

declare @s_Labels varchar(100)
select @s_Labels = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Labels where ChangeType = 'INSERT'
select @s_Labels = @s_Labels + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Labels where ChangeType = 'UPDATE'
select @s_Labels = @s_Labels + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Labels where ChangeType = 'DELETE'
PRINT 'Labels: ' + @s_Labels
--*** Done Labels
--*** Start LicenseeBAConfig
declare @tmpAction_LicenseeBAConfig TABLE (ChangeType VARCHAR(20))
MERGE dbo.LicenseeBAConfig TARGET
USING (
	SELECT  [LicenseeID], [1x2Comm], [OtherComm], [EnableBA], [ModifyBy], [ModifyDate], [groupa], [groupb], [groupc], [groupd]
	FROM DB052.bodb_Licensee.dbo.LicenseeBAConfig WITH (NOLOCK)
) AS SOURCE
	ON	TARGET.[LicenseeID] = SOURCE.[LicenseeID]
WHEN	MATCHED AND (SOURCE.[1x2Comm] <> TARGET.[1x2Comm] OR SOURCE.[OtherComm] <> TARGET.[OtherComm] OR SOURCE.[EnableBA] <> TARGET.[EnableBA] OR SOURCE.[ModifyBy] <> TARGET.[ModifyBy] OR SOURCE.[ModifyDate] <> TARGET.[ModifyDate] OR SOURCE.[groupa] <> TARGET.[groupa] OR SOURCE.[groupb] <> TARGET.[groupb] OR SOURCE.[groupc] <> TARGET.[groupc] OR SOURCE.[groupd] <> TARGET.[groupd]) THEN
	UPDATE SET  [1x2Comm] = SOURCE.[1x2Comm], [OtherComm] = SOURCE.[OtherComm], [EnableBA] = SOURCE.[EnableBA], [ModifyBy] = SOURCE.[ModifyBy], [ModifyDate] = SOURCE.[ModifyDate], [groupa] = SOURCE.[groupa], [groupb] = SOURCE.[groupb], [groupc] = SOURCE.[groupc], [groupd] = SOURCE.[groupd]
WHEN NOT MATCHED BY TARGET THEN	
	INSERT ( [LicenseeID], [1x2Comm], [OtherComm], [EnableBA], [ModifyBy], [ModifyDate], [groupa], [groupb], [groupc], [groupd])
	VALUES( SOURCE.[LicenseeID], SOURCE.[1x2Comm], SOURCE.[OtherComm], SOURCE.[EnableBA], SOURCE.[ModifyBy], SOURCE.[ModifyDate], SOURCE.[groupa], SOURCE.[groupb], SOURCE.[groupc], SOURCE.[groupd])	
WHEN NOT MATCHED BY SOURCE THEN DELETE
OUTPUT $action into @tmpAction_LicenseeBAConfig;

declare @s_LicenseeBAConfig varchar(100)
select @s_LicenseeBAConfig = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeBAConfig where ChangeType = 'INSERT'
select @s_LicenseeBAConfig = @s_LicenseeBAConfig + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeBAConfig where ChangeType = 'UPDATE'
select @s_LicenseeBAConfig = @s_LicenseeBAConfig + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeBAConfig where ChangeType = 'DELETE'
PRINT 'LicenseeBAConfig: ' + @s_LicenseeBAConfig
--*** Done LicenseeBAConfig
--*** Start LicenseeBAHistory
declare @tmpAction_LicenseeBAHistory TABLE (ChangeType VARCHAR(20))
SET IDENTITY_INSERT LicenseeBAHistory ONMERGE dbo.LicenseeBAHistory TARGET
USING (
	SELECT  [ID], [LicenseeID], [CustID], [OnDate], [OffDate], [OnBy], [OffBy], [GroupComm], [1x2Comm], [OtherComm], [Status], [Ugroup]
	FROM DB052.bodb_Licensee.dbo.LicenseeBAHistory WITH (NOLOCK)
) AS SOURCE
	ON	TARGET.[ID] = SOURCE.[ID]
WHEN	MATCHED AND (SOURCE.[LicenseeID] <> TARGET.[LicenseeID] OR SOURCE.[CustID] <> TARGET.[CustID] OR SOURCE.[OnDate] <> TARGET.[OnDate] OR SOURCE.[OffDate] <> TARGET.[OffDate] OR SOURCE.[OnBy] <> TARGET.[OnBy] OR SOURCE.[OffBy] <> TARGET.[OffBy] OR SOURCE.[GroupComm] <> TARGET.[GroupComm] OR SOURCE.[1x2Comm] <> TARGET.[1x2Comm] OR SOURCE.[OtherComm] <> TARGET.[OtherComm] OR SOURCE.[Status] <> TARGET.[Status] OR SOURCE.[Ugroup] <> TARGET.[Ugroup]) THEN
	UPDATE SET  [LicenseeID] = SOURCE.[LicenseeID], [CustID] = SOURCE.[CustID], [OnDate] = SOURCE.[OnDate], [OffDate] = SOURCE.[OffDate], [OnBy] = SOURCE.[OnBy], [OffBy] = SOURCE.[OffBy], [GroupComm] = SOURCE.[GroupComm], [1x2Comm] = SOURCE.[1x2Comm], [OtherComm] = SOURCE.[OtherComm], [Status] = SOURCE.[Status], [Ugroup] = SOURCE.[Ugroup]
WHEN NOT MATCHED BY TARGET THEN	
	INSERT ( [ID], [LicenseeID], [CustID], [OnDate], [OffDate], [OnBy], [OffBy], [GroupComm], [1x2Comm], [OtherComm], [Status], [Ugroup])
	VALUES( SOURCE.[ID], SOURCE.[LicenseeID], SOURCE.[CustID], SOURCE.[OnDate], SOURCE.[OffDate], SOURCE.[OnBy], SOURCE.[OffBy], SOURCE.[GroupComm], SOURCE.[1x2Comm], SOURCE.[OtherComm], SOURCE.[Status], SOURCE.[Ugroup])	
WHEN NOT MATCHED BY SOURCE THEN DELETE
OUTPUT $action into @tmpAction_LicenseeBAHistory;
SET IDENTITY_INSERT LicenseeBAHistory OFF
declare @s_LicenseeBAHistory varchar(100)
select @s_LicenseeBAHistory = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeBAHistory where ChangeType = 'INSERT'
select @s_LicenseeBAHistory = @s_LicenseeBAHistory + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeBAHistory where ChangeType = 'UPDATE'
select @s_LicenseeBAHistory = @s_LicenseeBAHistory + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeBAHistory where ChangeType = 'DELETE'
PRINT 'LicenseeBAHistory: ' + @s_LicenseeBAHistory
--*** Done LicenseeBAHistory
--*** Start LicenseeCurrencyBAGroup
declare @tmpAction_LicenseeCurrencyBAGroup TABLE (ChangeType VARCHAR(20))
MERGE dbo.LicenseeCurrencyBAGroup TARGET
USING (
	SELECT  [LicenseeID], [Currency], [ugroup], [ModifyBy], [ModifyDate]
	FROM DB052.bodb_Licensee.dbo.LicenseeCurrencyBAGroup WITH (NOLOCK)
) AS SOURCE
	ON	TARGET.[LicenseeID] = SOURCE.[LicenseeID] AND TARGET.[Currency] = SOURCE.[Currency]
WHEN	MATCHED AND (SOURCE.[ugroup] <> TARGET.[ugroup] OR SOURCE.[ModifyBy] <> TARGET.[ModifyBy] OR SOURCE.[ModifyDate] <> TARGET.[ModifyDate]) THEN
	UPDATE SET  [ugroup] = SOURCE.[ugroup], [ModifyBy] = SOURCE.[ModifyBy], [ModifyDate] = SOURCE.[ModifyDate]
WHEN NOT MATCHED BY TARGET THEN	
	INSERT ( [LicenseeID], [Currency], [ugroup], [ModifyBy], [ModifyDate])
	VALUES( SOURCE.[LicenseeID], SOURCE.[Currency], SOURCE.[ugroup], SOURCE.[ModifyBy], SOURCE.[ModifyDate])	
WHEN NOT MATCHED BY SOURCE THEN DELETE
OUTPUT $action into @tmpAction_LicenseeCurrencyBAGroup;

declare @s_LicenseeCurrencyB varchar(100)
select @s_LicenseeCurrencyB = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeCurrencyBAGroup where ChangeType = 'INSERT'
select @s_LicenseeCurrencyB = @s_LicenseeCurrencyB + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeCurrencyBAGroup where ChangeType = 'UPDATE'
select @s_LicenseeCurrencyB = @s_LicenseeCurrencyB + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeCurrencyBAGroup where ChangeType = 'DELETE'
PRINT 'LicenseeCurrencyBAGroup: ' + @s_LicenseeCurrencyB
--*** Done LicenseeCurrencyBAGroup
--*** Start LicenseeCust
declare @tmpAction_LicenseeCust TABLE (ChangeType VARCHAR(20))
MERGE dbo.LicenseeCust TARGET
USING (
	SELECT  [LicenseeID], [CustID], [RoleID], [Currency], [CurrencyName], [Description]
	FROM DB052.bodb_Licensee.dbo.LicenseeCust WITH (NOLOCK)
) AS SOURCE
	ON	TARGET.[LicenseeID] = SOURCE.[LicenseeID] AND TARGET.[CustID] = SOURCE.[CustID] AND TARGET.[RoleID] = SOURCE.[RoleID] AND TARGET.[Currency] = SOURCE.[Currency]
WHEN	MATCHED AND (SOURCE.[CurrencyName] <> TARGET.[CurrencyName] OR SOURCE.[Description] <> TARGET.[Description]) THEN
	UPDATE SET  [CurrencyName] = SOURCE.[CurrencyName], [Description] = SOURCE.[Description]
WHEN NOT MATCHED BY TARGET THEN	
	INSERT ( [LicenseeID], [CustID], [RoleID], [Currency], [CurrencyName], [Description])
	VALUES( SOURCE.[LicenseeID], SOURCE.[CustID], SOURCE.[RoleID], SOURCE.[Currency], SOURCE.[CurrencyName], SOURCE.[Description])	
WHEN NOT MATCHED BY SOURCE THEN DELETE
OUTPUT $action into @tmpAction_LicenseeCust;

declare @s_LicenseeCust varchar(100)
select @s_LicenseeCust = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeCust where ChangeType = 'INSERT'
select @s_LicenseeCust = @s_LicenseeCust + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeCust where ChangeType = 'UPDATE'
select @s_LicenseeCust = @s_LicenseeCust + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeCust where ChangeType = 'DELETE'
PRINT 'LicenseeCust: ' + @s_LicenseeCust
--*** Done LicenseeCust
--*** Start LicenseeCustComm
declare @tmpAction_LicenseeCustComm TABLE (ChangeType VARCHAR(20))
MERGE dbo.LicenseeCustComm TARGET
USING (
	SELECT  [CustID], [LicenseeID], [SBComm], [RacingComm], [NGComm], [GroupCommID], [LCComm], [RNGComm], [Parlaycomm], [AllbetComm]
	FROM DB052.bodb_Licensee.dbo.LicenseeCustComm WITH (NOLOCK)
) AS SOURCE
	ON	TARGET.[CustID] = SOURCE.[CustID]
WHEN	MATCHED AND (SOURCE.[LicenseeID] <> TARGET.[LicenseeID] OR SOURCE.[SBComm] <> TARGET.[SBComm] OR SOURCE.[RacingComm] <> TARGET.[RacingComm] OR SOURCE.[NGComm] <> TARGET.[NGComm] OR SOURCE.[GroupCommID] <> TARGET.[GroupCommID] OR SOURCE.[LCComm] <> TARGET.[LCComm] OR SOURCE.[RNGComm] <> TARGET.[RNGComm] OR SOURCE.[Parlaycomm] <> TARGET.[Parlaycomm] OR SOURCE.[AllbetComm] <> TARGET.[AllbetComm]) THEN
	UPDATE SET  [LicenseeID] = SOURCE.[LicenseeID], [SBComm] = SOURCE.[SBComm], [RacingComm] = SOURCE.[RacingComm], [NGComm] = SOURCE.[NGComm], [GroupCommID] = SOURCE.[GroupCommID], [LCComm] = SOURCE.[LCComm], [RNGComm] = SOURCE.[RNGComm], [Parlaycomm] = SOURCE.[Parlaycomm], [AllbetComm] = SOURCE.[AllbetComm]
WHEN NOT MATCHED BY TARGET THEN	
	INSERT ( [CustID], [LicenseeID], [SBComm], [RacingComm], [NGComm], [GroupCommID], [LCComm], [RNGComm], [Parlaycomm], [AllbetComm])
	VALUES( SOURCE.[CustID], SOURCE.[LicenseeID], SOURCE.[SBComm], SOURCE.[RacingComm], SOURCE.[NGComm], SOURCE.[GroupCommID], SOURCE.[LCComm], SOURCE.[RNGComm], SOURCE.[Parlaycomm], SOURCE.[AllbetComm])	
WHEN NOT MATCHED BY SOURCE THEN DELETE
OUTPUT $action into @tmpAction_LicenseeCustComm;

declare @s_LicenseeCustComm varchar(100)
select @s_LicenseeCustComm = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeCustComm where ChangeType = 'INSERT'
select @s_LicenseeCustComm = @s_LicenseeCustComm + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeCustComm where ChangeType = 'UPDATE'
select @s_LicenseeCustComm = @s_LicenseeCustComm + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeCustComm where ChangeType = 'DELETE'
PRINT 'LicenseeCustComm: ' + @s_LicenseeCustComm
--*** Done LicenseeCustComm
--*** Start LicenseeFunctions
declare @tmpAction_LicenseeFunctions TABLE (ChangeType VARCHAR(20))
SET IDENTITY_INSERT LicenseeFunctions ONMERGE dbo.LicenseeFunctions TARGET
USING (
	SELECT  [LicenseeFunctionId], [LicenseeId], [FunctionId]
	FROM DB052.bodb_Licensee.dbo.LicenseeFunctions WITH (NOLOCK)
) AS SOURCE
	ON	TARGET.[LicenseeFunctionId] = SOURCE.[LicenseeFunctionId]
WHEN	MATCHED AND (SOURCE.[LicenseeId] <> TARGET.[LicenseeId] OR SOURCE.[FunctionId] <> TARGET.[FunctionId]) THEN
	UPDATE SET  [LicenseeId] = SOURCE.[LicenseeId], [FunctionId] = SOURCE.[FunctionId]
WHEN NOT MATCHED BY TARGET THEN	
	INSERT ( [LicenseeFunctionId], [LicenseeId], [FunctionId])
	VALUES( SOURCE.[LicenseeFunctionId], SOURCE.[LicenseeId], SOURCE.[FunctionId])	
WHEN NOT MATCHED BY SOURCE THEN DELETE
OUTPUT $action into @tmpAction_LicenseeFunctions;
SET IDENTITY_INSERT LicenseeFunctions OFF
declare @s_LicenseeFunctions varchar(100)
select @s_LicenseeFunctions = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeFunctions where ChangeType = 'INSERT'
select @s_LicenseeFunctions = @s_LicenseeFunctions + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeFunctions where ChangeType = 'UPDATE'
select @s_LicenseeFunctions = @s_LicenseeFunctions + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeFunctions where ChangeType = 'DELETE'
PRINT 'LicenseeFunctions: ' + @s_LicenseeFunctions
--*** Done LicenseeFunctions
--*** Start LicenseeGroupComm
declare @tmpAction_LicenseeGroupComm TABLE (ChangeType VARCHAR(20))
SET IDENTITY_INSERT LicenseeGroupComm ONMERGE dbo.LicenseeGroupComm TARGET
USING (
	SELECT  [id], [Licenseeid], [GroupName], [IsActive], [SBComm], [RacingComm], [NGComm], [color], [IsDefault], [LCComm], [RNGComm], [Parlaycomm], [AllbetComm]
	FROM DB052.bodb_Licensee.dbo.LicenseeGroupComm WITH (NOLOCK)
) AS SOURCE
	ON	TARGET.[id] = SOURCE.[id]
WHEN	MATCHED AND (SOURCE.[Licenseeid] <> TARGET.[Licenseeid] OR SOURCE.[GroupName] <> TARGET.[GroupName] OR SOURCE.[IsActive] <> TARGET.[IsActive] OR SOURCE.[SBComm] <> TARGET.[SBComm] OR SOURCE.[RacingComm] <> TARGET.[RacingComm] OR SOURCE.[NGComm] <> TARGET.[NGComm] OR SOURCE.[color] <> TARGET.[color] OR SOURCE.[IsDefault] <> TARGET.[IsDefault] OR SOURCE.[LCComm] <> TARGET.[LCComm] OR SOURCE.[RNGComm] <> TARGET.[RNGComm] OR SOURCE.[Parlaycomm] <> TARGET.[Parlaycomm] OR SOURCE.[AllbetComm] <> TARGET.[AllbetComm]) THEN
	UPDATE SET  [Licenseeid] = SOURCE.[Licenseeid], [GroupName] = SOURCE.[GroupName], [IsActive] = SOURCE.[IsActive], [SBComm] = SOURCE.[SBComm], [RacingComm] = SOURCE.[RacingComm], [NGComm] = SOURCE.[NGComm], [color] = SOURCE.[color], [IsDefault] = SOURCE.[IsDefault], [LCComm] = SOURCE.[LCComm], [RNGComm] = SOURCE.[RNGComm], [Parlaycomm] = SOURCE.[Parlaycomm], [AllbetComm] = SOURCE.[AllbetComm]
WHEN NOT MATCHED BY TARGET THEN	
	INSERT ( [id], [Licenseeid], [GroupName], [IsActive], [SBComm], [RacingComm], [NGComm], [color], [IsDefault], [LCComm], [RNGComm], [Parlaycomm], [AllbetComm])
	VALUES( SOURCE.[id], SOURCE.[Licenseeid], SOURCE.[GroupName], SOURCE.[IsActive], SOURCE.[SBComm], SOURCE.[RacingComm], SOURCE.[NGComm], SOURCE.[color], SOURCE.[IsDefault], SOURCE.[LCComm], SOURCE.[RNGComm], SOURCE.[Parlaycomm], SOURCE.[AllbetComm])	
WHEN NOT MATCHED BY SOURCE THEN DELETE
OUTPUT $action into @tmpAction_LicenseeGroupComm;
SET IDENTITY_INSERT LicenseeGroupComm OFF
declare @s_LicenseeGroupComm varchar(100)
select @s_LicenseeGroupComm = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeGroupComm where ChangeType = 'INSERT'
select @s_LicenseeGroupComm = @s_LicenseeGroupComm + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeGroupComm where ChangeType = 'UPDATE'
select @s_LicenseeGroupComm = @s_LicenseeGroupComm + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeGroupComm where ChangeType = 'DELETE'
PRINT 'LicenseeGroupComm: ' + @s_LicenseeGroupComm
--*** Done LicenseeGroupComm
--*** Start LicenseeMultiCurrencyConfig
declare @tmpAction_LicenseeMultiCurrencyConfig TABLE (ChangeType VARCHAR(20))
MERGE dbo.LicenseeMultiCurrencyConfig TARGET
USING (
	SELECT  [Recommend], [Currency], [FromDate], [ToDate], [Active]
	FROM DB052.bodb_Licensee.dbo.LicenseeMultiCurrencyConfig WITH (NOLOCK)
) AS SOURCE
	ON	TARGET.[Recommend] = SOURCE.[Recommend] AND TARGET.[Currency] = SOURCE.[Currency] AND TARGET.[FromDate] = SOURCE.[FromDate]
WHEN	MATCHED AND (SOURCE.[ToDate] <> TARGET.[ToDate] OR SOURCE.[Active] <> TARGET.[Active]) THEN
	UPDATE SET  [ToDate] = SOURCE.[ToDate], [Active] = SOURCE.[Active]
WHEN NOT MATCHED BY TARGET THEN	
	INSERT ( [Recommend], [Currency], [FromDate], [ToDate], [Active])
	VALUES( SOURCE.[Recommend], SOURCE.[Currency], SOURCE.[FromDate], SOURCE.[ToDate], SOURCE.[Active])	
WHEN NOT MATCHED BY SOURCE THEN DELETE
OUTPUT $action into @tmpAction_LicenseeMultiCurrencyConfig;

declare @s_LicenseeMultiCurr varchar(100)
select @s_LicenseeMultiCurr = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeMultiCurrencyConfig where ChangeType = 'INSERT'
select @s_LicenseeMultiCurr = @s_LicenseeMultiCurr + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeMultiCurrencyConfig where ChangeType = 'UPDATE'
select @s_LicenseeMultiCurr = @s_LicenseeMultiCurr + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeMultiCurrencyConfig where ChangeType = 'DELETE'
PRINT 'LicenseeMultiCurrencyConfig: ' + @s_LicenseeMultiCurr
--*** Done LicenseeMultiCurrencyConfig
--*** Start LicenseeProduct3rd
declare @tmpAction_LicenseeProduct3rd TABLE (ChangeType VARCHAR(20))
MERGE dbo.LicenseeProduct3rd TARGET
USING (
	SELECT  [LicenseeID], [ProductID], [Comm], [Winloss], [EffectiveDate]
	FROM DB052.bodb_Licensee.dbo.LicenseeProduct3rd WITH (NOLOCK)
) AS SOURCE
	ON	TARGET.[LicenseeID] = SOURCE.[LicenseeID] AND TARGET.[ProductID] = SOURCE.[ProductID]
WHEN	MATCHED AND (SOURCE.[Comm] <> TARGET.[Comm] OR SOURCE.[Winloss] <> TARGET.[Winloss] OR SOURCE.[EffectiveDate] <> TARGET.[EffectiveDate]) THEN
	UPDATE SET  [Comm] = SOURCE.[Comm], [Winloss] = SOURCE.[Winloss], [EffectiveDate] = SOURCE.[EffectiveDate]
WHEN NOT MATCHED BY TARGET THEN	
	INSERT ( [LicenseeID], [ProductID], [Comm], [Winloss], [EffectiveDate])
	VALUES( SOURCE.[LicenseeID], SOURCE.[ProductID], SOURCE.[Comm], SOURCE.[Winloss], SOURCE.[EffectiveDate])	
WHEN NOT MATCHED BY SOURCE THEN DELETE
OUTPUT $action into @tmpAction_LicenseeProduct3rd;

declare @s_LicenseeProduct3r varchar(100)
select @s_LicenseeProduct3r = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeProduct3rd where ChangeType = 'INSERT'
select @s_LicenseeProduct3r = @s_LicenseeProduct3r + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeProduct3rd where ChangeType = 'UPDATE'
select @s_LicenseeProduct3r = @s_LicenseeProduct3r + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeProduct3rd where ChangeType = 'DELETE'
PRINT 'LicenseeProduct3rd: ' + @s_LicenseeProduct3r
--*** Done LicenseeProduct3rd
--*** Start LicenseeReseller
declare @tmpAction_LicenseeReseller TABLE (ChangeType VARCHAR(20))
MERGE dbo.LicenseeReseller TARGET
USING (
	SELECT  [ResellerID], [LicenseeID], [TnxRate]
	FROM DB052.bodb_Licensee.dbo.LicenseeReseller WITH (NOLOCK)
) AS SOURCE
	ON	TARGET.[ResellerID] = SOURCE.[ResellerID] AND TARGET.[LicenseeID] = SOURCE.[LicenseeID]
WHEN	MATCHED AND (SOURCE.[TnxRate] <> TARGET.[TnxRate]) THEN
	UPDATE SET  [TnxRate] = SOURCE.[TnxRate]
WHEN NOT MATCHED BY TARGET THEN	
	INSERT ( [ResellerID], [LicenseeID], [TnxRate])
	VALUES( SOURCE.[ResellerID], SOURCE.[LicenseeID], SOURCE.[TnxRate])	
WHEN NOT MATCHED BY SOURCE THEN DELETE
OUTPUT $action into @tmpAction_LicenseeReseller;

declare @s_LicenseeReseller varchar(100)
select @s_LicenseeReseller = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeReseller where ChangeType = 'INSERT'
select @s_LicenseeReseller = @s_LicenseeReseller + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeReseller where ChangeType = 'UPDATE'
select @s_LicenseeReseller = @s_LicenseeReseller + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeReseller where ChangeType = 'DELETE'
PRINT 'LicenseeReseller: ' + @s_LicenseeReseller
--*** Done LicenseeReseller
--*** Start Licensees
declare @tmpAction_Licensees TABLE (ChangeType VARCHAR(20))
MERGE dbo.Licensees TARGET
USING (
	SELECT  [LicenseeID], [LicenseeName], [Description], [IsDeposit], [AffectedDate], [IsActive], [IsKPIActive], [IsOneWorkActive], [BrandName], [CompanyName], [IsAllowedMemberComm], [EditBetSetting]
	FROM DB052.bodb_Licensee.dbo.Licensees WITH (NOLOCK)
) AS SOURCE
	ON	TARGET.[LicenseeID] = SOURCE.[LicenseeID]
WHEN	MATCHED AND (SOURCE.[LicenseeName] <> TARGET.[LicenseeName] OR SOURCE.[Description] <> TARGET.[Description] OR SOURCE.[IsDeposit] <> TARGET.[IsDeposit] OR SOURCE.[AffectedDate] <> TARGET.[AffectedDate] OR SOURCE.[IsActive] <> TARGET.[IsActive] OR SOURCE.[IsKPIActive] <> TARGET.[IsKPIActive] OR SOURCE.[IsOneWorkActive] <> TARGET.[IsOneWorkActive] OR SOURCE.[BrandName] <> TARGET.[BrandName] OR SOURCE.[CompanyName] <> TARGET.[CompanyName] OR SOURCE.[IsAllowedMemberComm] <> TARGET.[IsAllowedMemberComm] OR SOURCE.[EditBetSetting] <> TARGET.[EditBetSetting]) THEN
	UPDATE SET  [LicenseeName] = SOURCE.[LicenseeName], [Description] = SOURCE.[Description], [IsDeposit] = SOURCE.[IsDeposit], [AffectedDate] = SOURCE.[AffectedDate], [IsActive] = SOURCE.[IsActive], [IsKPIActive] = SOURCE.[IsKPIActive], [IsOneWorkActive] = SOURCE.[IsOneWorkActive], [BrandName] = SOURCE.[BrandName], [CompanyName] = SOURCE.[CompanyName], [IsAllowedMemberComm] = SOURCE.[IsAllowedMemberComm], [EditBetSetting] = SOURCE.[EditBetSetting]
WHEN NOT MATCHED BY TARGET THEN	
	INSERT ( [LicenseeID], [LicenseeName], [Description], [IsDeposit], [AffectedDate], [IsActive], [IsKPIActive], [IsOneWorkActive], [BrandName], [CompanyName], [IsAllowedMemberComm], [EditBetSetting])
	VALUES( SOURCE.[LicenseeID], SOURCE.[LicenseeName], SOURCE.[Description], SOURCE.[IsDeposit], SOURCE.[AffectedDate], SOURCE.[IsActive], SOURCE.[IsKPIActive], SOURCE.[IsOneWorkActive], SOURCE.[BrandName], SOURCE.[CompanyName], SOURCE.[IsAllowedMemberComm], SOURCE.[EditBetSetting])	
WHEN NOT MATCHED BY SOURCE THEN DELETE
OUTPUT $action into @tmpAction_Licensees;

declare @s_Licensees varchar(100)
select @s_Licensees = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Licensees where ChangeType = 'INSERT'
select @s_Licensees = @s_Licensees + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Licensees where ChangeType = 'UPDATE'
select @s_Licensees = @s_Licensees + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Licensees where ChangeType = 'DELETE'
PRINT 'Licensees: ' + @s_Licensees
--*** Done Licensees
--*** Start LicenseeSourcedSetting - NEW
declare @tmpAction_LicenseeSourcedSetting TABLE (ChangeType VARCHAR(20))
SET IDENTITY_INSERT LicenseeSourcedSetting ONMERGE dbo.LicenseeSourcedSetting TARGET
USING (
	SELECT  [ID], [SiteName], [LicenseeID], [SourcedLicenseeID], [SourcedCurrencyID], [IsActive], [Roleid], [EffectiveDate], [SourcedId], [SourcedSiteName], [EndDate]
	FROM DB052.bodb_Licensee.dbo.LicenseeSourcedSetting WITH (NOLOCK)
) AS SOURCE
	ON	TARGET.[ID] = SOURCE.[ID]
WHEN	MATCHED AND (SOURCE.[SiteName] <> TARGET.[SiteName] OR SOURCE.[LicenseeID] <> TARGET.[LicenseeID] OR SOURCE.[SourcedLicenseeID] <> TARGET.[SourcedLicenseeID] OR SOURCE.[SourcedCurrencyID] <> TARGET.[SourcedCurrencyID] OR SOURCE.[IsActive] <> TARGET.[IsActive] OR SOURCE.[Roleid] <> TARGET.[Roleid] OR SOURCE.[EffectiveDate] <> TARGET.[EffectiveDate] OR SOURCE.[SourcedId] <> TARGET.[SourcedId] OR SOURCE.[SourcedSiteName] <> TARGET.[SourcedSiteName] OR SOURCE.[EndDate] <> TARGET.[EndDate]) THEN
	UPDATE SET  [SiteName] = SOURCE.[SiteName], [LicenseeID] = SOURCE.[LicenseeID], [SourcedLicenseeID] = SOURCE.[SourcedLicenseeID], [SourcedCurrencyID] = SOURCE.[SourcedCurrencyID], [IsActive] = SOURCE.[IsActive], [Roleid] = SOURCE.[Roleid], [EffectiveDate] = SOURCE.[EffectiveDate], [SourcedId] = SOURCE.[SourcedId], [SourcedSiteName] = SOURCE.[SourcedSiteName], [EndDate] = SOURCE.[EndDate]
WHEN NOT MATCHED BY TARGET THEN	
	INSERT ( [ID], [SiteName], [LicenseeID], [SourcedLicenseeID], [SourcedCurrencyID], [IsActive], [Roleid], [EffectiveDate], [SourcedId], [SourcedSiteName], [EndDate])
	VALUES( SOURCE.[ID], SOURCE.[SiteName], SOURCE.[LicenseeID], SOURCE.[SourcedLicenseeID], SOURCE.[SourcedCurrencyID], SOURCE.[IsActive], SOURCE.[Roleid], SOURCE.[EffectiveDate], SOURCE.[SourcedId], SOURCE.[SourcedSiteName], SOURCE.[EndDate])	
WHEN NOT MATCHED BY SOURCE THEN DELETE
OUTPUT $action into @tmpAction_LicenseeSourcedSetting;
SET IDENTITY_INSERT LicenseeSourcedSetting OFF
declare @s_LicenseeSourcedSe varchar(100)
select @s_LicenseeSourcedSe = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeSourcedSetting where ChangeType = 'INSERT'
select @s_LicenseeSourcedSe = @s_LicenseeSourcedSe + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeSourcedSetting where ChangeType = 'UPDATE'
select @s_LicenseeSourcedSe = @s_LicenseeSourcedSe + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeSourcedSetting where ChangeType = 'DELETE'
PRINT 'LicenseeSourcedSetting: ' + @s_LicenseeSourcedSe
--*** Done LicenseeSourcedSetting
--*** Start LicenseeSpecialCust
declare @tmpAction_LicenseeSpecialCust TABLE (ChangeType VARCHAR(20))
MERGE dbo.LicenseeSpecialCust TARGET
USING (
	SELECT  [Custid], [Licenseeid], [ugroup], [ugroup_old], [modifyby], [modifydate]
	FROM DB052.bodb_Licensee.dbo.LicenseeSpecialCust WITH (NOLOCK)
) AS SOURCE
	ON	TARGET.[Custid] = SOURCE.[Custid]
WHEN	MATCHED AND (SOURCE.[Licenseeid] <> TARGET.[Licenseeid] OR SOURCE.[ugroup] <> TARGET.[ugroup] OR SOURCE.[ugroup_old] <> TARGET.[ugroup_old] OR SOURCE.[modifyby] <> TARGET.[modifyby] OR SOURCE.[modifydate] <> TARGET.[modifydate]) THEN
	UPDATE SET  [Licenseeid] = SOURCE.[Licenseeid], [ugroup] = SOURCE.[ugroup], [ugroup_old] = SOURCE.[ugroup_old], [modifyby] = SOURCE.[modifyby], [modifydate] = SOURCE.[modifydate]
WHEN NOT MATCHED BY TARGET THEN	
	INSERT ( [Custid], [Licenseeid], [ugroup], [ugroup_old], [modifyby], [modifydate])
	VALUES( SOURCE.[Custid], SOURCE.[Licenseeid], SOURCE.[ugroup], SOURCE.[ugroup_old], SOURCE.[modifyby], SOURCE.[modifydate])	
WHEN NOT MATCHED BY SOURCE THEN DELETE
OUTPUT $action into @tmpAction_LicenseeSpecialCust;

declare @s_LicenseeSpecialCu varchar(100)
select @s_LicenseeSpecialCu = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeSpecialCust where ChangeType = 'INSERT'
select @s_LicenseeSpecialCu = @s_LicenseeSpecialCu + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeSpecialCust where ChangeType = 'UPDATE'
select @s_LicenseeSpecialCu = @s_LicenseeSpecialCu + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeSpecialCust where ChangeType = 'DELETE'
PRINT 'LicenseeSpecialCust: ' + @s_LicenseeSpecialCu
--*** Done LicenseeSpecialCust
--*** Start LicenseeUser
declare @tmpAction_LicenseeUser TABLE (ChangeType VARCHAR(20))
MERGE dbo.LicenseeUser TARGET
USING (
	SELECT  [LicenseeID], [UserID], [isActive], [PageAccess], [ModifyDate], [ModifyBy]
	FROM DB052.bodb_Licensee.dbo.LicenseeUser WITH (NOLOCK)
) AS SOURCE
	ON	TARGET.[LicenseeID] = SOURCE.[LicenseeID] AND TARGET.[UserID] = SOURCE.[UserID]
WHEN	MATCHED AND (SOURCE.[isActive] <> TARGET.[isActive] OR SOURCE.[PageAccess] <> TARGET.[PageAccess] OR SOURCE.[ModifyDate] <> TARGET.[ModifyDate] OR SOURCE.[ModifyBy] <> TARGET.[ModifyBy]) THEN
	UPDATE SET  [isActive] = SOURCE.[isActive], [PageAccess] = SOURCE.[PageAccess], [ModifyDate] = SOURCE.[ModifyDate], [ModifyBy] = SOURCE.[ModifyBy]
WHEN NOT MATCHED BY TARGET THEN	
	INSERT ( [LicenseeID], [UserID], [isActive], [PageAccess], [ModifyDate], [ModifyBy])
	VALUES( SOURCE.[LicenseeID], SOURCE.[UserID], SOURCE.[isActive], SOURCE.[PageAccess], SOURCE.[ModifyDate], SOURCE.[ModifyBy])	
WHEN NOT MATCHED BY SOURCE THEN DELETE
OUTPUT $action into @tmpAction_LicenseeUser;

declare @s_LicenseeUser varchar(100)
select @s_LicenseeUser = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeUser where ChangeType = 'INSERT'
select @s_LicenseeUser = @s_LicenseeUser + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeUser where ChangeType = 'UPDATE'
select @s_LicenseeUser = @s_LicenseeUser + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeUser where ChangeType = 'DELETE'
PRINT 'LicenseeUser: ' + @s_LicenseeUser
--*** Done LicenseeUser
--*** Start LicenseeUserFunctions
declare @tmpAction_LicenseeUserFunctions TABLE (ChangeType VARCHAR(20))
SET IDENTITY_INSERT LicenseeUserFunctions ONMERGE dbo.LicenseeUserFunctions TARGET
USING (
	SELECT  [UserFuncionId], [UserId], [FunctionId], [LicenseeId]
	FROM DB052.bodb_Licensee.dbo.LicenseeUserFunctions WITH (NOLOCK)
) AS SOURCE
	ON	TARGET.[UserFuncionId] = SOURCE.[UserFuncionId]
WHEN	MATCHED AND (SOURCE.[UserId] <> TARGET.[UserId] OR SOURCE.[FunctionId] <> TARGET.[FunctionId] OR SOURCE.[LicenseeId] <> TARGET.[LicenseeId]) THEN
	UPDATE SET  [UserId] = SOURCE.[UserId], [FunctionId] = SOURCE.[FunctionId], [LicenseeId] = SOURCE.[LicenseeId]
WHEN NOT MATCHED BY TARGET THEN	
	INSERT ( [UserFuncionId], [UserId], [FunctionId], [LicenseeId])
	VALUES( SOURCE.[UserFuncionId], SOURCE.[UserId], SOURCE.[FunctionId], SOURCE.[LicenseeId])	
WHEN NOT MATCHED BY SOURCE THEN DELETE
OUTPUT $action into @tmpAction_LicenseeUserFunctions;
SET IDENTITY_INSERT LicenseeUserFunctions OFF
declare @s_LicenseeUserFunct varchar(100)
select @s_LicenseeUserFunct = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeUserFunctions where ChangeType = 'INSERT'
select @s_LicenseeUserFunct = @s_LicenseeUserFunct + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeUserFunctions where ChangeType = 'UPDATE'
select @s_LicenseeUserFunct = @s_LicenseeUserFunct + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LicenseeUserFunctions where ChangeType = 'DELETE'
PRINT 'LicenseeUserFunctions: ' + @s_LicenseeUserFunct
--*** Done LicenseeUserFunctions
--*** Start LrfDomain
declare @tmpAction_LrfDomain TABLE (ChangeType VARCHAR(20))
MERGE dbo.LrfDomain TARGET
USING (
	SELECT  [Id], [DomainName], [IsActive], [Protocol]
	FROM DB052.bodb_Licensee.dbo.LrfDomain WITH (NOLOCK)
) AS SOURCE
	ON	TARGET.[Id] = SOURCE.[Id]
WHEN	MATCHED AND (SOURCE.[DomainName] <> TARGET.[DomainName] OR SOURCE.[IsActive] <> TARGET.[IsActive] OR SOURCE.[Protocol] <> TARGET.[Protocol]) THEN
	UPDATE SET  [DomainName] = SOURCE.[DomainName], [IsActive] = SOURCE.[IsActive], [Protocol] = SOURCE.[Protocol]
WHEN NOT MATCHED BY TARGET THEN	
	INSERT ( [Id], [DomainName], [IsActive], [Protocol])
	VALUES( SOURCE.[Id], SOURCE.[DomainName], SOURCE.[IsActive], SOURCE.[Protocol])	
WHEN NOT MATCHED BY SOURCE THEN DELETE
OUTPUT $action into @tmpAction_LrfDomain;

declare @s_LrfDomain varchar(100)
select @s_LrfDomain = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LrfDomain where ChangeType = 'INSERT'
select @s_LrfDomain = @s_LrfDomain + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LrfDomain where ChangeType = 'UPDATE'
select @s_LrfDomain = @s_LrfDomain + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_LrfDomain where ChangeType = 'DELETE'
PRINT 'LrfDomain: ' + @s_LrfDomain
--*** Done LrfDomain
--*** Start On_User
declare @tmpAction_On_User TABLE (ChangeType VARCHAR(20))
SET IDENTITY_INSERT On_User ONMERGE dbo.On_User TARGET
USING (
	SELECT  [on_userid], [custid], [reload_time], [ServerID], [IP], [iskickedout], [NetSessionID]
	FROM DB052.bodb_Licensee.dbo.On_User WITH (NOLOCK)
) AS SOURCE
	ON	TARGET.[on_userid] = SOURCE.[on_userid]
WHEN	MATCHED AND (SOURCE.[custid] <> TARGET.[custid] OR SOURCE.[reload_time] <> TARGET.[reload_time] OR SOURCE.[ServerID] <> TARGET.[ServerID] OR SOURCE.[IP] <> TARGET.[IP] OR SOURCE.[iskickedout] <> TARGET.[iskickedout] OR SOURCE.[NetSessionID] <> TARGET.[NetSessionID]) THEN
	UPDATE SET  [custid] = SOURCE.[custid], [reload_time] = SOURCE.[reload_time], [ServerID] = SOURCE.[ServerID], [IP] = SOURCE.[IP], [iskickedout] = SOURCE.[iskickedout], [NetSessionID] = SOURCE.[NetSessionID]
WHEN NOT MATCHED BY TARGET THEN	
	INSERT ( [on_userid], [custid], [reload_time], [ServerID], [IP], [iskickedout], [NetSessionID])
	VALUES( SOURCE.[on_userid], SOURCE.[custid], SOURCE.[reload_time], SOURCE.[ServerID], SOURCE.[IP], SOURCE.[iskickedout], SOURCE.[NetSessionID])	
WHEN NOT MATCHED BY SOURCE THEN DELETE
OUTPUT $action into @tmpAction_On_User;
SET IDENTITY_INSERT On_User OFF
declare @s_On_User varchar(100)
select @s_On_User = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_On_User where ChangeType = 'INSERT'
select @s_On_User = @s_On_User + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_On_User where ChangeType = 'UPDATE'
select @s_On_User = @s_On_User + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_On_User where ChangeType = 'DELETE'
PRINT 'On_User: ' + @s_On_User
--*** Done On_User
----*** Start Product3rd
--declare @tmpAction_Product3rd TABLE (ChangeType VARCHAR(20))
--MERGE dbo.Product3rd TARGET
--USING (
--	SELECT  [Productid], [ProductName], [Description], [ProductPrefix], [OfferSingle]
--	FROM DB052.bodb_Licensee.dbo.Product3rd WITH (NOLOCK)
--) AS SOURCE
--	ON	TARGET.[Productid] = SOURCE.[Productid]
--WHEN	MATCHED AND (SOURCE.[ProductName] <> TARGET.[ProductName] OR SOURCE.[Description] <> TARGET.[Description] OR SOURCE.[ProductPrefix] <> TARGET.[ProductPrefix] OR SOURCE.[OfferSingle] <> TARGET.[OfferSingle]) THEN
--	UPDATE SET  [ProductName] = SOURCE.[ProductName], [Description] = SOURCE.[Description], [ProductPrefix] = SOURCE.[ProductPrefix], [OfferSingle] = SOURCE.[OfferSingle]
--WHEN NOT MATCHED BY TARGET THEN	
--	INSERT ( [Productid], [ProductName], [Description], [ProductPrefix], [OfferSingle])
--	VALUES( SOURCE.[Productid], SOURCE.[ProductName], SOURCE.[Description], SOURCE.[ProductPrefix], SOURCE.[OfferSingle])	
--WHEN NOT MATCHED BY SOURCE THEN DELETE
--OUTPUT $action into @tmpAction_Product3rd;

--declare @s_Product3rd varchar(100)
--select @s_Product3rd = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Product3rd where ChangeType = 'INSERT'
--select @s_Product3rd = @s_Product3rd + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Product3rd where ChangeType = 'UPDATE'
--select @s_Product3rd = @s_Product3rd + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Product3rd where ChangeType = 'DELETE'
--PRINT 'Product3rd: ' + @s_Product3rd
----*** Done Product3rd--*** Start Product3rd (with new added column)
declare @tmpAction_Product3rd TABLE (ChangeType VARCHAR(20))
MERGE dbo.Product3rd TARGET
USING (
	SELECT  [Productid], [ProductName], [Description], [ProductPrefix], [OfferSingle], [ApplyDCS]
	FROM DB052.bodb_Licensee.dbo.Product3rd WITH (NOLOCK)
) AS SOURCE
	ON	TARGET.[Productid] = SOURCE.[Productid]
WHEN	MATCHED AND (SOURCE.[ProductName] <> TARGET.[ProductName] OR SOURCE.[Description] <> TARGET.[Description] OR SOURCE.[ProductPrefix] <> TARGET.[ProductPrefix] OR SOURCE.[OfferSingle] <> TARGET.[OfferSingle] OR SOURCE.[ApplyDCS] <> TARGET.[ApplyDCS]) THEN
	UPDATE SET  [ProductName] = SOURCE.[ProductName], [Description] = SOURCE.[Description], [ProductPrefix] = SOURCE.[ProductPrefix], [OfferSingle] = SOURCE.[OfferSingle], [ApplyDCS] = SOURCE.[ApplyDCS]
WHEN NOT MATCHED BY TARGET THEN	
	INSERT ( [Productid], [ProductName], [Description], [ProductPrefix], [OfferSingle], [ApplyDCS])
	VALUES( SOURCE.[Productid], SOURCE.[ProductName], SOURCE.[Description], SOURCE.[ProductPrefix], SOURCE.[OfferSingle], SOURCE.[ApplyDCS])	
WHEN NOT MATCHED BY SOURCE THEN DELETE
OUTPUT $action into @tmpAction_Product3rd;

declare @s_Product3rd varchar(100)
select @s_Product3rd = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Product3rd where ChangeType = 'INSERT'
select @s_Product3rd = @s_Product3rd + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Product3rd where ChangeType = 'UPDATE'
select @s_Product3rd = @s_Product3rd + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Product3rd where ChangeType = 'DELETE'
PRINT 'Product3rd: ' + @s_Product3rd
--*** Done Product3rd
--*** Start Resellers
declare @tmpAction_Resellers TABLE (ChangeType VARCHAR(20))
SET IDENTITY_INSERT Resellers ONMERGE dbo.Resellers TARGET
USING (
	SELECT  [ResellerID], [ResellerName], [Description], [ResellerType]
	FROM DB052.bodb_Licensee.dbo.Resellers WITH (NOLOCK)
) AS SOURCE
	ON	TARGET.[ResellerID] = SOURCE.[ResellerID]
WHEN	MATCHED AND (SOURCE.[ResellerName] <> TARGET.[ResellerName] OR SOURCE.[Description] <> TARGET.[Description] OR SOURCE.[ResellerType] <> TARGET.[ResellerType]) THEN
	UPDATE SET  [ResellerName] = SOURCE.[ResellerName], [Description] = SOURCE.[Description], [ResellerType] = SOURCE.[ResellerType]
WHEN NOT MATCHED BY TARGET THEN	
	INSERT ( [ResellerID], [ResellerName], [Description], [ResellerType])
	VALUES( SOURCE.[ResellerID], SOURCE.[ResellerName], SOURCE.[Description], SOURCE.[ResellerType])	
WHEN NOT MATCHED BY SOURCE THEN DELETE
OUTPUT $action into @tmpAction_Resellers;
SET IDENTITY_INSERT Resellers OFF
declare @s_Resellers varchar(100)
select @s_Resellers = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Resellers where ChangeType = 'INSERT'
select @s_Resellers = @s_Resellers + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Resellers where ChangeType = 'UPDATE'
select @s_Resellers = @s_Resellers + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Resellers where ChangeType = 'DELETE'
PRINT 'Resellers: ' + @s_Resellers
--*** Done Resellers
--*** Start Sport_Bettype_Reference
declare @tmpAction_Sport_Bettype_Reference TABLE (ChangeType VARCHAR(20))
MERGE dbo.Sport_Bettype_Reference TARGET
USING (
	SELECT  [Bettype], [Sporttype], [isLicensee], [BettypeRef], [SporttypeRef], [isActive]
	FROM DB052.bodb_Licensee.dbo.Sport_Bettype_Reference WITH (NOLOCK)
) AS SOURCE
	ON	TARGET.[Bettype] = SOURCE.[Bettype] AND TARGET.[Sporttype] = SOURCE.[Sporttype] AND TARGET.[isLicensee] = SOURCE.[isLicensee]
WHEN	MATCHED AND (SOURCE.[BettypeRef] <> TARGET.[BettypeRef] OR SOURCE.[SporttypeRef] <> TARGET.[SporttypeRef] OR SOURCE.[isActive] <> TARGET.[isActive]) THEN
	UPDATE SET  [BettypeRef] = SOURCE.[BettypeRef], [SporttypeRef] = SOURCE.[SporttypeRef], [isActive] = SOURCE.[isActive]
WHEN NOT MATCHED BY TARGET THEN	
	INSERT ( [Bettype], [Sporttype], [isLicensee], [BettypeRef], [SporttypeRef], [isActive])
	VALUES( SOURCE.[Bettype], SOURCE.[Sporttype], SOURCE.[isLicensee], SOURCE.[BettypeRef], SOURCE.[SporttypeRef], SOURCE.[isActive])	
WHEN NOT MATCHED BY SOURCE THEN DELETE
OUTPUT $action into @tmpAction_Sport_Bettype_Reference;

declare @s_Sport_Bettype_Ref varchar(100)
select @s_Sport_Bettype_Ref = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Sport_Bettype_Reference where ChangeType = 'INSERT'
select @s_Sport_Bettype_Ref = @s_Sport_Bettype_Ref + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Sport_Bettype_Reference where ChangeType = 'UPDATE'
select @s_Sport_Bettype_Ref = @s_Sport_Bettype_Ref + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Sport_Bettype_Reference where ChangeType = 'DELETE'
PRINT 'Sport_Bettype_Reference: ' + @s_Sport_Bettype_Ref
--*** Done Sport_Bettype_Reference
--*** Start SystemLicensee
declare @tmpAction_SystemLicensee TABLE (ChangeType VARCHAR(20))
MERGE dbo.SystemLicensee TARGET
USING (
	SELECT  [SystemID], [LicenseeID], [IsActive]
	FROM DB052.bodb_Licensee.dbo.SystemLicensee WITH (NOLOCK)
) AS SOURCE
	ON	TARGET.[SystemID] = SOURCE.[SystemID] AND TARGET.[LicenseeID] = SOURCE.[LicenseeID]
WHEN	MATCHED AND (SOURCE.[IsActive] <> TARGET.[IsActive]) THEN
	UPDATE SET  [IsActive] = SOURCE.[IsActive]
WHEN NOT MATCHED BY TARGET THEN	
	INSERT ( [SystemID], [LicenseeID], [IsActive])
	VALUES( SOURCE.[SystemID], SOURCE.[LicenseeID], SOURCE.[IsActive])	
WHEN NOT MATCHED BY SOURCE THEN DELETE
OUTPUT $action into @tmpAction_SystemLicensee;

declare @s_SystemLicensee varchar(100)
select @s_SystemLicensee = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_SystemLicensee where ChangeType = 'INSERT'
select @s_SystemLicensee = @s_SystemLicensee + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_SystemLicensee where ChangeType = 'UPDATE'
select @s_SystemLicensee = @s_SystemLicensee + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_SystemLicensee where ChangeType = 'DELETE'
PRINT 'SystemLicensee: ' + @s_SystemLicensee
--*** Done SystemLicensee
--*** Start Systems
declare @tmpAction_Systems TABLE (ChangeType VARCHAR(20))
SET IDENTITY_INSERT Systems ONMERGE dbo.Systems TARGET
USING (
	SELECT  [id], [SystemName], [Description]
	FROM DB052.bodb_Licensee.dbo.Systems WITH (NOLOCK)
) AS SOURCE
	ON	TARGET.[id] = SOURCE.[id]
WHEN	MATCHED AND (SOURCE.[SystemName] <> TARGET.[SystemName] OR SOURCE.[Description] <> TARGET.[Description]) THEN
	UPDATE SET  [SystemName] = SOURCE.[SystemName], [Description] = SOURCE.[Description]
WHEN NOT MATCHED BY TARGET THEN	
	INSERT ( [id], [SystemName], [Description])
	VALUES( SOURCE.[id], SOURCE.[SystemName], SOURCE.[Description])	
WHEN NOT MATCHED BY SOURCE THEN DELETE
OUTPUT $action into @tmpAction_Systems;
SET IDENTITY_INSERT Systems OFF
declare @s_Systems varchar(100)
select @s_Systems = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Systems where ChangeType = 'INSERT'
select @s_Systems = @s_Systems + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Systems where ChangeType = 'UPDATE'
select @s_Systems = @s_Systems + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Systems where ChangeType = 'DELETE'
PRINT 'Systems: ' + @s_Systems
--*** Done Systems
--*** Start Users
declare @tmpAction_Users TABLE (ChangeType VARCHAR(20))
SET IDENTITY_INSERT Users ONMERGE dbo.Users TARGET
USING (
	SELECT  [UserID], [Username], [UserPwd], [UserSalt], [UserRole], [FirstName], [LastName], [Email], [Status], [Creator], [CreateDate], [LicenseeName], [isInternal]
	FROM DB052.bodb_Licensee.dbo.Users WITH (NOLOCK)
) AS SOURCE
	ON	TARGET.[UserID] = SOURCE.[UserID]
WHEN	MATCHED AND (SOURCE.[Username] <> TARGET.[Username] OR SOURCE.[UserPwd] <> TARGET.[UserPwd] OR SOURCE.[UserSalt] <> TARGET.[UserSalt] OR SOURCE.[UserRole] <> TARGET.[UserRole] OR SOURCE.[FirstName] <> TARGET.[FirstName] OR SOURCE.[LastName] <> TARGET.[LastName] OR SOURCE.[Email] <> TARGET.[Email] OR SOURCE.[Status] <> TARGET.[Status] OR SOURCE.[Creator] <> TARGET.[Creator] OR SOURCE.[CreateDate] <> TARGET.[CreateDate] OR SOURCE.[LicenseeName] <> TARGET.[LicenseeName] OR SOURCE.[isInternal] <> TARGET.[isInternal]) THEN
	UPDATE SET  [Username] = SOURCE.[Username], [UserPwd] = SOURCE.[UserPwd], [UserSalt] = SOURCE.[UserSalt], [UserRole] = SOURCE.[UserRole], [FirstName] = SOURCE.[FirstName], [LastName] = SOURCE.[LastName], [Email] = SOURCE.[Email], [Status] = SOURCE.[Status], [Creator] = SOURCE.[Creator], [CreateDate] = SOURCE.[CreateDate], [LicenseeName] = SOURCE.[LicenseeName], [isInternal] = SOURCE.[isInternal]
WHEN NOT MATCHED BY TARGET THEN	
	INSERT ( [UserID], [Username], [UserPwd], [UserSalt], [UserRole], [FirstName], [LastName], [Email], [Status], [Creator], [CreateDate], [LicenseeName], [isInternal])
	VALUES( SOURCE.[UserID], SOURCE.[Username], SOURCE.[UserPwd], SOURCE.[UserSalt], SOURCE.[UserRole], SOURCE.[FirstName], SOURCE.[LastName], SOURCE.[Email], SOURCE.[Status], SOURCE.[Creator], SOURCE.[CreateDate], SOURCE.[LicenseeName], SOURCE.[isInternal])	
WHEN NOT MATCHED BY SOURCE THEN DELETE
OUTPUT $action into @tmpAction_Users;
SET IDENTITY_INSERT Users OFF
declare @s_Users varchar(100)
select @s_Users = 'INSERT - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Users where ChangeType = 'INSERT'
select @s_Users = @s_Users + '; UPDATE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Users where ChangeType = 'UPDATE'
select @s_Users = @s_Users + '; DELETE - ' + ISNULL(convert( varchar(20), COUNT(1)), 0) from @tmpAction_Users where ChangeType = 'DELETE'
PRINT 'Users: ' + @s_Users
--*** Done Users
