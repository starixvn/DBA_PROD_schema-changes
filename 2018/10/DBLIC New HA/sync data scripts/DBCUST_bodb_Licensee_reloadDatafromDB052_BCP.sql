
--*** Start Functions
DELETE FunctionsSET IDENTITY_INSERT Functions ONINSERT INTO Functions( [FunctionId], [Name], [Description], [ParentId], [Url], [IsMenu], [IsActive], [DisplayOrder], [IsNew], [FunctionKey], [Environment], [IsFunction])SELECT  [FunctionId], [Name], [Description], [ParentId], [Url], [IsMenu], [IsActive], [DisplayOrder], [IsNew], [FunctionKey], [Environment], [IsFunction]FROM DB052.bodb_Licensee.dbo.Functions WITH(NOLOCK)SET IDENTITY_INSERT Functions OFF
--*** Done Functions
--*** Start Labels
DELETE LabelsINSERT INTO Labels( [LicenseeID], [LabelID], [LabelName], [AffectedDate], [IsKPISummary])SELECT  [LicenseeID], [LabelID], [LabelName], [AffectedDate], [IsKPISummary]FROM DB052.bodb_Licensee.dbo.Labels WITH(NOLOCK)
--*** Done Labels
--*** Start LicenseeBAConfig
DELETE LicenseeBAConfigINSERT INTO LicenseeBAConfig( [LicenseeID], [1x2Comm], [OtherComm], [EnableBA], [ModifyBy], [ModifyDate], [groupa], [groupb], [groupc], [groupd])SELECT  [LicenseeID], [1x2Comm], [OtherComm], [EnableBA], [ModifyBy], [ModifyDate], [groupa], [groupb], [groupc], [groupd]FROM DB052.bodb_Licensee.dbo.LicenseeBAConfig WITH(NOLOCK)
--*** Done LicenseeBAConfig
--*** Start LicenseeBAHistory
DELETE LicenseeBAHistorySET IDENTITY_INSERT LicenseeBAHistory ONINSERT INTO LicenseeBAHistory( [ID], [LicenseeID], [CustID], [OnDate], [OffDate], [OnBy], [OffBy], [GroupComm], [1x2Comm], [OtherComm], [Status], [Ugroup])SELECT  distinct [ID], [LicenseeID], [CustID], [OnDate], [OffDate], [OnBy], [OffBy], [GroupComm], [1x2Comm], [OtherComm], [Status], [Ugroup]FROM DB052.bodb_Licensee.dbo.LicenseeBAHistory WITH(NOLOCK) where [ID] NOT IN(18254,18260,18252,18255,18261,18256,18253,11,18259,18262)SET IDENTITY_INSERT LicenseeBAHistory OFF
--*** Done LicenseeBAHistory
--*** Start LicenseeCurrencyBAGroup
DELETE LicenseeCurrencyBAGroupINSERT INTO LicenseeCurrencyBAGroup( [LicenseeID], [Currency], [ugroup], [ModifyBy], [ModifyDate])SELECT  [LicenseeID], [Currency], [ugroup], [ModifyBy], [ModifyDate]FROM DB052.bodb_Licensee.dbo.LicenseeCurrencyBAGroup WITH(NOLOCK)
--*** Done LicenseeCurrencyBAGroup
--*** Start LicenseeCust
DELETE LicenseeCustINSERT INTO LicenseeCust( [LicenseeID], [CustID], [RoleID], [Currency], [CurrencyName], [Description])SELECT  [LicenseeID], [CustID], [RoleID], [Currency], [CurrencyName], [Description]FROM DB052.bodb_Licensee.dbo.LicenseeCust WITH(NOLOCK)
--*** Done LicenseeCust
--*** Start LicenseeCustComm
DELETE LicenseeCustCommINSERT INTO LicenseeCustComm( [LicenseeID], [CustID], [SBComm], [RacingComm], [NGComm], [GroupCommID], [LCComm], [RNGComm], [Parlaycomm], [AllbetComm])SELECT  [LicenseeID], [CustID], [SBComm], [RacingComm], [NGComm], [GroupCommID], [LCComm], [RNGComm], [Parlaycomm], [AllbetComm]FROM DB052.bodb_Licensee.dbo.LicenseeCustComm WITH(NOLOCK)
--*** Done LicenseeCustComm
--*** Start LicenseeFunctions
DELETE LicenseeFunctionsSET IDENTITY_INSERT LicenseeFunctions ONINSERT INTO LicenseeFunctions( [LicenseeFunctionId], [LicenseeId], [FunctionId])SELECT  [LicenseeFunctionId], [LicenseeId], [FunctionId]FROM DB052.bodb_Licensee.dbo.LicenseeFunctions WITH(NOLOCK)SET IDENTITY_INSERT LicenseeFunctions OFF
--*** Done LicenseeFunctions
--*** Start LicenseeGroupComm
DELETE LicenseeGroupCommSET IDENTITY_INSERT LicenseeGroupComm ONINSERT INTO LicenseeGroupComm( [id], [Licenseeid], [GroupName], [IsActive], [SBComm], [RacingComm], [NGComm], [color], [IsDefault], [LCComm], [RNGComm], [Parlaycomm], [AllbetComm])SELECT  [id], [Licenseeid], [GroupName], [IsActive], [SBComm], [RacingComm], [NGComm], [color], [IsDefault], [LCComm], [RNGComm], [Parlaycomm], [AllbetComm]FROM DB052.bodb_Licensee.dbo.LicenseeGroupComm WITH(NOLOCK)SET IDENTITY_INSERT LicenseeGroupComm OFF
--*** Done LicenseeGroupComm
--*** Start LicenseeMultiCurrencyConfig
DELETE LicenseeMultiCurrencyConfigINSERT INTO LicenseeMultiCurrencyConfig( [Recommend], [Currency], [FromDate], [ToDate], [Active])SELECT  [Recommend], [Currency], [FromDate], [ToDate], [Active]FROM DB052.bodb_Licensee.dbo.LicenseeMultiCurrencyConfig WITH(NOLOCK)
--*** Done LicenseeMultiCurrencyConfig
--*** Start LicenseeProduct3rd
DELETE LicenseeProduct3rdINSERT INTO LicenseeProduct3rd( [LicenseeID], [ProductID], [Comm], [Winloss], [EffectiveDate])SELECT  [LicenseeID], [ProductID], [Comm], [Winloss], [EffectiveDate]FROM DB052.bodb_Licensee.dbo.LicenseeProduct3rd WITH(NOLOCK)
--*** Done LicenseeProduct3rd
--*** Start LicenseeReseller
DELETE LicenseeResellerINSERT INTO LicenseeReseller( [ResellerID], [LicenseeID], [TnxRate])SELECT  [ResellerID], [LicenseeID], [TnxRate]FROM DB052.bodb_Licensee.dbo.LicenseeReseller WITH(NOLOCK)
--*** Done LicenseeReseller
--*** Start Licensees
DELETE LicenseesINSERT INTO Licensees( [LicenseeID], [LicenseeName], [Description], [IsDeposit], [AffectedDate], [IsActive], [IsKPIActive], [IsOneWorkActive], [BrandName], [CompanyName], [IsAllowedMemberComm], [EditBetSetting])SELECT  [LicenseeID], [LicenseeName], [Description], [IsDeposit], [AffectedDate], [IsActive], [IsKPIActive], [IsOneWorkActive], [BrandName], [CompanyName], [IsAllowedMemberComm], [EditBetSetting]FROM DB052.bodb_Licensee.dbo.Licensees WITH(NOLOCK)
--*** Done Licensees
--*** Start LicenseeSourcedSetting
DELETE LicenseeSourcedSetting--SET IDENTITY_INSERT LicenseeSourcedSetting ONINSERT INTO LicenseeSourcedSetting( [SiteName], [LicenseeID], [SourcedLicenseeID], [SourcedCurrencyID], [IsActive], [Roleid], [EffectiveDate], [SourcedId], [SourcedSiteName], [EndDate])SELECT  [SiteName], [LicenseeID], [SourcedLicenseeID], [SourcedCurrencyID], [IsActive], [Roleid], [EffectiveDate], [SourcedId], [SourcedSiteName], [EndDate]FROM DB052.bodb_Licensee.dbo.LicenseeSourcedSetting WITH(NOLOCK)--SET IDENTITY_INSERT LicenseeSourcedSetting OFF
--*** Done LicenseeSourcedSetting
--*** Start LicenseeSpecialCust
DELETE LicenseeSpecialCustINSERT INTO LicenseeSpecialCust( [Licenseeid], [Custid], [ugroup], [ugroup_old], [modifyby], [modifydate])SELECT  [Licenseeid], [Custid], [ugroup], [ugroup_old], [modifyby], [modifydate]FROM DB052.bodb_Licensee.dbo.LicenseeSpecialCust WITH(NOLOCK)
--*** Done LicenseeSpecialCust
--*** Start LicenseeUser
DELETE LicenseeUserINSERT INTO LicenseeUser( [LicenseeID], [UserID], [isActive], [PageAccess], [ModifyDate], [ModifyBy])SELECT  [LicenseeID], [UserID], [isActive], [PageAccess], [ModifyDate], [ModifyBy]FROM DB052.bodb_Licensee.dbo.LicenseeUser WITH(NOLOCK)
--*** Done LicenseeUser
--*** Start LicenseeUserFunctions
DELETE LicenseeUserFunctionsSET IDENTITY_INSERT LicenseeUserFunctions ONINSERT INTO LicenseeUserFunctions( [UserFuncionId], [UserId], [FunctionId], [LicenseeId])SELECT  [UserFuncionId], [UserId], [FunctionId], [LicenseeId]FROM DB052.bodb_Licensee.dbo.LicenseeUserFunctions WITH(NOLOCK)SET IDENTITY_INSERT LicenseeUserFunctions OFF
--*** Done LicenseeUserFunctions
--*** Start LrfDomain
DELETE LrfDomainINSERT INTO LrfDomain( [Id], [DomainName], [IsActive], [Protocol])SELECT  [Id], [DomainName], [IsActive], [Protocol]FROM DB052.bodb_Licensee.dbo.LrfDomain WITH(NOLOCK)
--*** Done LrfDomain
--*** Start On_User
DELETE On_UserSET IDENTITY_INSERT On_User ONINSERT INTO On_User( [custid], [reload_time], [ServerID], [on_userid], [IP], [iskickedout], [NetSessionID])SELECT  [custid], [reload_time], [ServerID], [on_userid], [IP], [iskickedout], [NetSessionID]FROM DB052.bodb_Licensee.dbo.On_User WITH(NOLOCK)SET IDENTITY_INSERT On_User OFF
--*** Done On_User
--*** Start Product3rd
DELETE Product3rdINSERT INTO Product3rd( [Productid], [ProductName], [Description], [ProductPrefix], [OfferSingle])SELECT  [Productid], [ProductName], [Description], [ProductPrefix], [OfferSingle]FROM DB052.bodb_Licensee.dbo.Product3rd WITH(NOLOCK)
--*** Done Product3rd
--*** Start Resellers
DELETE ResellersSET IDENTITY_INSERT Resellers ONINSERT INTO Resellers( [ResellerID], [ResellerName], [Description], [ResellerType])SELECT  [ResellerID], [ResellerName], [Description], [ResellerType]FROM DB052.bodb_Licensee.dbo.Resellers WITH(NOLOCK)SET IDENTITY_INSERT Resellers OFF
--*** Done Resellers
--*** Start Sport_Bettype_Reference
DELETE Sport_Bettype_ReferenceINSERT INTO Sport_Bettype_Reference( [Bettype], [Sporttype], [isLicensee], [BettypeRef], [SporttypeRef], [isActive])SELECT  [Bettype], [Sporttype], [isLicensee], [BettypeRef], [SporttypeRef], [isActive]FROM DB052.bodb_Licensee.dbo.Sport_Bettype_Reference WITH(NOLOCK)
--*** Done Sport_Bettype_Reference
--*** Start SystemLicensee
DELETE SystemLicenseeINSERT INTO SystemLicensee( [SystemID], [LicenseeID], [IsActive])SELECT  [SystemID], [LicenseeID], [IsActive]FROM DB052.bodb_Licensee.dbo.SystemLicensee WITH(NOLOCK)
--*** Done SystemLicensee
--*** Start Systems
DELETE SystemsSET IDENTITY_INSERT Systems ONINSERT INTO Systems( [id], [SystemName], [Description])SELECT  [id], [SystemName], [Description]FROM DB052.bodb_Licensee.dbo.Systems WITH(NOLOCK)SET IDENTITY_INSERT Systems OFF
--*** Done Systems
--*** Start Users
DELETE UsersSET IDENTITY_INSERT Users ONINSERT INTO Users( [UserID], [Username], [UserPwd], [UserSalt], [UserRole], [FirstName], [LastName], [Email], [Status], [Creator], [CreateDate], [LicenseeName], [isInternal])SELECT  [UserID], [Username], [UserPwd], [UserSalt], [UserRole], [FirstName], [LastName], [Email], [Status], [Creator], [CreateDate], [LicenseeName], [isInternal]FROM DB052.bodb_Licensee.dbo.Users WITH(NOLOCK)SET IDENTITY_INSERT Users OFF
--*** Done Users
