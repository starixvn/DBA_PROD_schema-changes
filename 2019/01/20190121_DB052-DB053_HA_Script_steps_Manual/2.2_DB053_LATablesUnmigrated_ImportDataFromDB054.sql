/*
	Task: Script import data for LA/OA tables that have not migrated to DBCUST yet, get from DB054 (standby for DB052). This would be for failover the tables to DB053 if DB052 were down.
	Database: DB053.bodb_Licensee
*/


--*** Start Aff_FunctionInfo
TRUNCATE TABLE Aff_FunctionInfoSET IDENTITY_INSERT Aff_FunctionInfo ONINSERT INTO Aff_FunctionInfo( [FunctionID], [FunctionName], [FunctionNote], [FunctionDesc], [FunctionRender], [CreateDate], [ModifyDate], [DisplayOrder], [Creator], [ParentID], [Filenames])SELECT  [FunctionID], [FunctionName], [FunctionNote], [FunctionDesc], [FunctionRender], [CreateDate], [ModifyDate], [DisplayOrder], [Creator], [ParentID], [Filenames]FROM DB054.bodb_Licensee.dbo.Aff_FunctionInfo WITH(NOLOCK)SET IDENTITY_INSERT Aff_FunctionInfo OFF
--*** Done Aff_FunctionInfo
--*** Start Aff_GroupInfo
TRUNCATE TABLE Aff_GroupInfoSET IDENTITY_INSERT Aff_GroupInfo ONINSERT INTO Aff_GroupInfo( [GroupID], [LicenseeID], [GroupName], [GroupDesc], [CreateDate], [ModifyDate], [DisplayOrder], [Creator])SELECT  [GroupID], [LicenseeID], [GroupName], [GroupDesc], [CreateDate], [ModifyDate], [DisplayOrder], [Creator]FROM DB054.bodb_Licensee.dbo.Aff_GroupInfo WITH(NOLOCK)SET IDENTITY_INSERT Aff_GroupInfo OFF
--*** Done Aff_GroupInfo
--*** Start Aff_GroupPolicy
TRUNCATE TABLE Aff_GroupPolicyINSERT INTO Aff_GroupPolicy( [GroupID], [FunctionID], [Policy], [CreateDate], [ModifyDate], [Creator])SELECT  [GroupID], [FunctionID], [Policy], [CreateDate], [ModifyDate], [Creator]FROM DB054.bodb_Licensee.dbo.Aff_GroupPolicy WITH(NOLOCK)
--*** Done Aff_GroupPolicy
--*** Start Aff_LicenseeFunction
TRUNCATE TABLE Aff_LicenseeFunctionINSERT INTO Aff_LicenseeFunction( [LicenseeID], [FunctionID], [IsActive])SELECT  [LicenseeID], [FunctionID], [IsActive]FROM DB054.bodb_Licensee.dbo.Aff_LicenseeFunction WITH(NOLOCK)
--*** Done Aff_LicenseeFunction
--*** Start Aff_LicenseeInfo
TRUNCATE TABLE Aff_LicenseeInfoINSERT INTO Aff_LicenseeInfo( [LicenseeID], [LicenseeName], [IsActive])SELECT  [LicenseeID], [LicenseeName], [IsActive]FROM DB054.bodb_Licensee.dbo.Aff_LicenseeInfo WITH(NOLOCK)
--*** Done Aff_LicenseeInfo
--*** Start Aff_LicenseeUser
TRUNCATE TABLE Aff_LicenseeUserINSERT INTO Aff_LicenseeUser( [LicenseeID], [UserID], [GroupID], [IsActive], [ModifyDate], [ModifyBy])SELECT  [LicenseeID], [UserID], [GroupID], [IsActive], [ModifyDate], [ModifyBy]FROM DB054.bodb_Licensee.dbo.Aff_LicenseeUser WITH(NOLOCK)
--*** Done Aff_LicenseeUser
--*** Start Aff_On_User
TRUNCATE TABLE Aff_On_UserSET IDENTITY_INSERT Aff_On_User ONINSERT INTO Aff_On_User( [CustID], [Reload_Time], [ServerID], [On_UserID], [IP], [IsKickedOut], [NetSessionID])SELECT  [CustID], [Reload_Time], [ServerID], [On_UserID], [IP], [IsKickedOut], [NetSessionID]FROM DB054.bodb_Licensee.dbo.Aff_On_User WITH(NOLOCK)SET IDENTITY_INSERT Aff_On_User OFF
--*** Done Aff_On_User
--*** Start Aff_User_CreatorTransfer
TRUNCATE TABLE Aff_User_CreatorTransferINSERT INTO Aff_User_CreatorTransfer( [LicenseeID], [Aff_OldUsername], [Aff_NewAdminUsername])SELECT  [LicenseeID], [Aff_OldUsername], [Aff_NewAdminUsername]FROM DB054.bodb_Licensee.dbo.Aff_User_CreatorTransfer WITH(NOLOCK)
--*** Done Aff_User_CreatorTransfer
--*** Start Aff_UserPolicy
TRUNCATE TABLE Aff_UserPolicyINSERT INTO Aff_UserPolicy( [UserID], [LicenseeID], [FunctionID], [Policy], [CreateDate], [ModifyDate], [Creator])SELECT  [UserID], [LicenseeID], [FunctionID], [Policy], [CreateDate], [ModifyDate], [Creator]FROM DB054.bodb_Licensee.dbo.Aff_UserPolicy WITH(NOLOCK)
--*** Done Aff_UserPolicy
--*** Start LA_AnalysisFile
TRUNCATE TABLE LA_AnalysisFileSET IDENTITY_INSERT LA_AnalysisFile ONINSERT INTO LA_AnalysisFile( [FileId], [PartyIds], [ProductCodes], [Filename], [FromDate], [ToDate], [Status], [IsSkinView])SELECT  [FileId], [PartyIds], [ProductCodes], [Filename], [FromDate], [ToDate], [Status], [IsSkinView]FROM DB054.bodb_Licensee.dbo.LA_AnalysisFile WITH(NOLOCK)SET IDENTITY_INSERT LA_AnalysisFile OFF
--*** Done LA_AnalysisFile
--*** Start LA_BankInfo
TRUNCATE TABLE LA_BankInfoINSERT INTO LA_BankInfo( [PartyId], [BankId], [AccountNumber], [BankName], [BankAddress], [IBAN], [BeneficiaryName], [SwiftCode], [CorrespondentBank], [CorrespondentAccountNumber], [CorrespondentAddress], [CorrespondentSwiftCode])SELECT  [PartyId], [BankId], [AccountNumber], [BankName], [BankAddress], [IBAN], [BeneficiaryName], [SwiftCode], [CorrespondentBank], [CorrespondentAccountNumber], [CorrespondentAddress], [CorrespondentSwiftCode]FROM DB054.bodb_Licensee.dbo.LA_BankInfo WITH(NOLOCK)
--*** Done LA_BankInfo
--*** Start LA_BillerInfo
TRUNCATE TABLE LA_BillerInfoINSERT INTO LA_BillerInfo( [PartyId], [BillerName], [BillerFullName], [StatusId], [CompanyName], [Address1], [Address2], [LogoPath], [Description], [Logo], [LogoHeight], [LogoWidth])SELECT  [PartyId], [BillerName], [BillerFullName], [StatusId], [CompanyName], [Address1], [Address2], [LogoPath], [Description], [Logo], [LogoHeight], [LogoWidth]FROM DB054.bodb_Licensee.dbo.LA_BillerInfo WITH(NOLOCK)
--*** Done LA_BillerInfo
--*** Start LA_ChargeInfo_MinFee
TRUNCATE TABLE LA_ChargeInfo_MinFeeINSERT INTO LA_ChargeInfo_MinFee( [ChargeID], [MinFee], [MinFeeCurrencyID], [WaiveFrom], [WaiveTo])SELECT  [ChargeID], [MinFee], [MinFeeCurrencyID], [WaiveFrom], [WaiveTo]FROM DB054.bodb_Licensee.dbo.LA_ChargeInfo_MinFee WITH(NOLOCK)
--*** Done LA_ChargeInfo_MinFee
--*** Start LA_DiscountGroupAssignment
TRUNCATE TABLE LA_DiscountGroupAssignmentINSERT INTO LA_DiscountGroupAssignment( [DiscountGroupId], [PartyID], [Remark], [IsApplyDiscount])SELECT  [DiscountGroupId], [PartyID], [Remark], [IsApplyDiscount]FROM DB054.bodb_Licensee.dbo.LA_DiscountGroupAssignment WITH(NOLOCK)
--*** Done LA_DiscountGroupAssignment
--*** Start LA_DiscountGroupCurrency
TRUNCATE TABLE LA_DiscountGroupCurrencyINSERT INTO LA_DiscountGroupCurrency( [DiscountGroupId], [PartyID], [CurrencyId])SELECT  [DiscountGroupId], [PartyID], [CurrencyId]FROM DB054.bodb_Licensee.dbo.LA_DiscountGroupCurrency WITH(NOLOCK)
--*** Done LA_DiscountGroupCurrency
--*** Start LA_DiscountGroupDetail
TRUNCATE TABLE LA_DiscountGroupDetailSET IDENTITY_INSERT LA_DiscountGroupDetail ONINSERT INTO LA_DiscountGroupDetail( [DiscountGroupDetailId], [DiscountGroupId], [FromAmount], [ToAmount], [Rate])SELECT  [DiscountGroupDetailId], [DiscountGroupId], [FromAmount], [ToAmount], [Rate]FROM DB054.bodb_Licensee.dbo.LA_DiscountGroupDetail WITH(NOLOCK)SET IDENTITY_INSERT LA_DiscountGroupDetail OFF
--*** Done LA_DiscountGroupDetail
--*** Start LA_DiscountGroupHeader
TRUNCATE TABLE LA_DiscountGroupHeaderSET IDENTITY_INSERT LA_DiscountGroupHeader ONINSERT INTO LA_DiscountGroupHeader( [DiscountGroupId], [DiscountGroupName], [DiscountGroupType], [CurrencyId], [FromDate], [ToDate], [Priority], [Remark], [ModifiedDate])SELECT  [DiscountGroupId], [DiscountGroupName], [DiscountGroupType], [CurrencyId], [FromDate], [ToDate], [Priority], [Remark], [ModifiedDate]FROM DB054.bodb_Licensee.dbo.LA_DiscountGroupHeader WITH(NOLOCK)SET IDENTITY_INSERT LA_DiscountGroupHeader OFF
--*** Done LA_DiscountGroupHeader
--*** Start LA_DiscountGroupProduct
TRUNCATE TABLE LA_DiscountGroupProductINSERT INTO LA_DiscountGroupProduct( [DiscountGroupId], [ProductId], [CalculationType])SELECT  [DiscountGroupId], [ProductId], [CalculationType]FROM DB054.bodb_Licensee.dbo.LA_DiscountGroupProduct WITH(NOLOCK)
--*** Done LA_DiscountGroupProduct
--*** Start LA_Function
TRUNCATE TABLE LA_FunctionSET IDENTITY_INSERT LA_Function ONINSERT INTO LA_Function( [FunctionID], [FunctionName], [FunctionDesc], [ParentID], [ParentName], [URL], [CreatedDate], [ModifiedDate], [DisplayOrder], [Creator], [StatusID], [FunctionKey])SELECT  [FunctionID], [FunctionName], [FunctionDesc], [ParentID], [ParentName], [URL], [CreatedDate], [ModifiedDate], [DisplayOrder], [Creator], [StatusID], [FunctionKey]FROM DB054.bodb_Licensee.dbo.LA_Function WITH(NOLOCK)SET IDENTITY_INSERT LA_Function OFF
--*** Done LA_Function
--*** Start LA_FunctionParty
TRUNCATE TABLE LA_FunctionPartyINSERT INTO LA_FunctionParty( [FunctionID], [PartyID])SELECT  [FunctionID], [PartyID]FROM DB054.bodb_Licensee.dbo.LA_FunctionParty WITH(NOLOCK)
--*** Done LA_FunctionParty
--*** Start LA_Group
TRUNCATE TABLE LA_GroupSET IDENTITY_INSERT LA_Group ONINSERT INTO LA_Group( [GroupID], [GroupName], [GroupDesc], [StatusID], [ModifyDate], [Modifier])SELECT  [GroupID], [GroupName], [GroupDesc], [StatusID], [ModifyDate], [Modifier]FROM DB054.bodb_Licensee.dbo.LA_Group WITH(NOLOCK)SET IDENTITY_INSERT LA_Group OFF
--*** Done LA_Group
--*** Start LA_GroupFunction
TRUNCATE TABLE LA_GroupFunctionINSERT INTO LA_GroupFunction( [GroupID], [FunctionID])SELECT  [GroupID], [FunctionID]FROM DB054.bodb_Licensee.dbo.LA_GroupFunction WITH(NOLOCK)
--*** Done LA_GroupFunction
--*** Start LA_HostingFees
TRUNCATE TABLE LA_HostingFeesSET IDENTITY_INSERT LA_HostingFees ONINSERT INTO LA_HostingFees( [HostingFeesId], [HostingFeesName], [HostingFeesTypeId], [BaseCurrencyId], [Description])SELECT  [HostingFeesId], [HostingFeesName], [HostingFeesTypeId], [BaseCurrencyId], [Description]FROM DB054.bodb_Licensee.dbo.LA_HostingFees WITH(NOLOCK)SET IDENTITY_INSERT LA_HostingFees OFF
--*** Done LA_HostingFees
--*** Start LA_HostingFeesDetail
TRUNCATE TABLE LA_HostingFeesDetailSET IDENTITY_INSERT LA_HostingFeesDetail ONINSERT INTO LA_HostingFeesDetail( [HostingFeesDetailId], [HostingFeesId], [BaseCurrencyId], [VCMFrom], [VCMTo], [Amount])SELECT  [HostingFeesDetailId], [HostingFeesId], [BaseCurrencyId], [VCMFrom], [VCMTo], [Amount]FROM DB054.bodb_Licensee.dbo.LA_HostingFeesDetail WITH(NOLOCK)SET IDENTITY_INSERT LA_HostingFeesDetail OFF
--*** Done LA_HostingFeesDetail
--*** Start LA_HostingFeesSetting
TRUNCATE TABLE LA_HostingFeesSettingSET IDENTITY_INSERT LA_HostingFeesSetting ONINSERT INTO LA_HostingFeesSetting( [ChargeId], [SettingType], [ParentId], [FromParty], [ToParty], [FromDate], [ToDate], [ProductName], [FirstBilling], [BasisOfBilling], [BaseCurrencyId], [HostingFeesId], [BasedMinimunFees], [Remark])SELECT  [ChargeId], [SettingType], [ParentId], [FromParty], [ToParty], [FromDate], [ToDate], [ProductName], [FirstBilling], [BasisOfBilling], [BaseCurrencyId], [HostingFeesId], [BasedMinimunFees], [Remark]FROM DB054.bodb_Licensee.dbo.LA_HostingFeesSetting WITH(NOLOCK)SET IDENTITY_INSERT LA_HostingFeesSetting OFF
--*** Done LA_HostingFeesSetting
--*** Start LA_HostingFeesTypes
TRUNCATE TABLE LA_HostingFeesTypesSET IDENTITY_INSERT LA_HostingFeesTypes ONINSERT INTO LA_HostingFeesTypes( [HostingFeesTypeId], [HostingFeesTypeName])SELECT  [HostingFeesTypeId], [HostingFeesTypeName]FROM DB054.bodb_Licensee.dbo.LA_HostingFeesTypes WITH(NOLOCK)SET IDENTITY_INSERT LA_HostingFeesTypes OFF
--*** Done LA_HostingFeesTypes
--*** Start LA_InvoiceDetail
TRUNCATE TABLE LA_InvoiceDetailSET IDENTITY_INSERT LA_InvoiceDetail ONINSERT INTO LA_InvoiceDetail( [InvoiceDetailId], [InvoiceHeaderId], [Description], [Reference], [ProductId], [AmountType], [InvoiceAmount])SELECT  [InvoiceDetailId], [InvoiceHeaderId], [Description], [Reference], [ProductId], [AmountType], [InvoiceAmount]FROM DB054.bodb_Licensee.dbo.LA_InvoiceDetail WITH(NOLOCK)SET IDENTITY_INSERT LA_InvoiceDetail OFF
--*** Done LA_InvoiceDetail
--*** Start LA_InvoiceHeader
TRUNCATE TABLE LA_InvoiceHeaderSET IDENTITY_INSERT LA_InvoiceHeader ONINSERT INTO LA_InvoiceHeader( [InvoiceHeaderId], [BillerId], [PartyId], [RefNo], [CurrencyId], [InvoiceSymbol], [InvoiceNumber], [FromDate], [ToDate], [InvoiceDate], [DueDate], [Amount], [InvoiceType], [StatusId], [Note], [HasSent], [HasDeleted], [CreatedBy], [CreatedDateTime], [UpdatedDateTime], [IsSeparateProduct], [MaxPCU], [RateAmount], [IsWaived], [InvoicePath], [InvoiceData], [Environment], [UpdatedBy], [OfficialInvoiceNo])SELECT  [InvoiceHeaderId], [BillerId], [PartyId], [RefNo], [CurrencyId], [InvoiceSymbol], [InvoiceNumber], [FromDate], [ToDate], [InvoiceDate], [DueDate], [Amount], [InvoiceType], [StatusId], [Note], [HasSent], [HasDeleted], [CreatedBy], [CreatedDateTime], [UpdatedDateTime], [IsSeparateProduct], [MaxPCU], [RateAmount], [IsWaived], [InvoicePath], [InvoiceData], [Environment], [UpdatedBy], [OfficialInvoiceNo]FROM DB054.bodb_Licensee.dbo.LA_InvoiceHeader WITH(NOLOCK)SET IDENTITY_INSERT LA_InvoiceHeader OFF
--*** Done LA_InvoiceHeader
--*** Start LA_InvoiceItemType
TRUNCATE TABLE LA_InvoiceItemTypeINSERT INTO LA_InvoiceItemType( [InvItemTypeId], [InvItemTypeName], [SignDB], [GroupDB], [SignSOA], [GroupSOA])SELECT  [InvItemTypeId], [InvItemTypeName], [SignDB], [GroupDB], [SignSOA], [GroupSOA]FROM DB054.bodb_Licensee.dbo.LA_InvoiceItemType WITH(NOLOCK)
--*** Done LA_InvoiceItemType
--*** Start LA_InvoiceSetting
TRUNCATE TABLE LA_InvoiceSettingINSERT INTO LA_InvoiceSetting( [FromPartyId], [ToPartyId], [ProductId], [InvTypeId], [InvTempId], [BankId], [ActiveAddress])SELECT  [FromPartyId], [ToPartyId], [ProductId], [InvTypeId], [InvTempId], [BankId], [ActiveAddress]FROM DB054.bodb_Licensee.dbo.LA_InvoiceSetting WITH(NOLOCK)
--*** Done LA_InvoiceSetting
--*** Start LA_InvoiceStatement
TRUNCATE TABLE LA_InvoiceStatementSET IDENTITY_INSERT LA_InvoiceStatement ONINSERT INTO LA_InvoiceStatement( [InvoiceStatementId], [InvoiceHeaderId], [InvItemTypeId], [StatusID], [Description], [Income], [Expense], [RefNo], [RefPartyId], [ProductId])SELECT  [InvoiceStatementId], [InvoiceHeaderId], [InvItemTypeId], [StatusID], [Description], [Income], [Expense], [RefNo], [RefPartyId], [ProductId]FROM DB054.bodb_Licensee.dbo.LA_InvoiceStatement WITH(NOLOCK)SET IDENTITY_INSERT LA_InvoiceStatement OFF
--*** Done LA_InvoiceStatement
--*** Start LA_InvoiceTemplate
TRUNCATE TABLE LA_InvoiceTemplateSET IDENTITY_INSERT LA_InvoiceTemplate ONINSERT INTO LA_InvoiceTemplate( [InvTemplateId], [InvTemplateName], [TemplatePath])SELECT  [InvTemplateId], [InvTemplateName], [TemplatePath]FROM DB054.bodb_Licensee.dbo.LA_InvoiceTemplate WITH(NOLOCK)SET IDENTITY_INSERT LA_InvoiceTemplate OFF
--*** Done LA_InvoiceTemplate
--*** Start LA_InvoiceType
TRUNCATE TABLE LA_InvoiceTypeSET IDENTITY_INSERT LA_InvoiceType ONINSERT INTO LA_InvoiceType( [InvTypeId], [InvTypeName], [IsVisible])SELECT  [InvTypeId], [InvTypeName], [IsVisible]FROM DB054.bodb_Licensee.dbo.LA_InvoiceType WITH(NOLOCK)SET IDENTITY_INSERT LA_InvoiceType OFF
--*** Done LA_InvoiceType
--*** Start LA_InvoiceTypeMapping
TRUNCATE TABLE LA_InvoiceTypeMappingINSERT INTO LA_InvoiceTypeMapping( [InvTypeId], [InvItemTypeId])SELECT  [InvTypeId], [InvItemTypeId]FROM DB054.bodb_Licensee.dbo.LA_InvoiceTypeMapping WITH(NOLOCK)
--*** Done LA_InvoiceTypeMapping
--*** Start LA_LicenseeRebate
TRUNCATE TABLE LA_LicenseeRebateSET IDENTITY_INSERT LA_LicenseeRebate ONINSERT INTO LA_LicenseeRebate( [RebateID], [LicenseeID], [ProductID], [CurrencyID], [FromDate], [ToDate], [FromAmount], [ToAmount], [Rate], [SystemId])SELECT  [RebateID], [LicenseeID], [ProductID], [CurrencyID], [FromDate], [ToDate], [FromAmount], [ToAmount], [Rate], [SystemId]FROM DB054.bodb_Licensee.dbo.LA_LicenseeRebate WITH(NOLOCK)SET IDENTITY_INSERT LA_LicenseeRebate OFF
--*** Done LA_LicenseeRebate
--*** Start LA_MinFee
TRUNCATE TABLE LA_MinFeeSET IDENTITY_INSERT LA_MinFee ONINSERT INTO LA_MinFee( [MinFeeId], [PartyId], [FeeTypeId], [ProductId], [FeeAmount], [FromDate], [ToDate], [MinFeeTerm], [Priority], [CurrencyId], [MonthOfDeduction])SELECT  [MinFeeId], [PartyId], [FeeTypeId], [ProductId], [FeeAmount], [FromDate], [ToDate], [MinFeeTerm], [Priority], [CurrencyId], [MonthOfDeduction]FROM DB054.bodb_Licensee.dbo.LA_MinFee WITH(NOLOCK)SET IDENTITY_INSERT LA_MinFee OFF
--*** Done LA_MinFee
--*** Start LA_OnUser
TRUNCATE TABLE LA_OnUserSET IDENTITY_INSERT LA_OnUser ONINSERT INTO LA_OnUser( [Custid], [Reload_time], [On_userid], [IP], [iskickedout], [NetSessionID])SELECT  [Custid], [Reload_time], [On_userid], [IP], [iskickedout], [NetSessionID]FROM DB054.bodb_Licensee.dbo.LA_OnUser WITH(NOLOCK)SET IDENTITY_INSERT LA_OnUser OFF
--*** Done LA_OnUser
--*** Start LA_PartyGroup
TRUNCATE TABLE LA_PartyGroupSET IDENTITY_INSERT LA_PartyGroup ONINSERT INTO LA_PartyGroup( [PartyGroupId], [PartyGroupName])SELECT  [PartyGroupId], [PartyGroupName]FROM DB054.bodb_Licensee.dbo.LA_PartyGroup WITH(NOLOCK)SET IDENTITY_INSERT LA_PartyGroup OFF
--*** Done LA_PartyGroup
--*** Start LA_PartyGroupAssignment
TRUNCATE TABLE LA_PartyGroupAssignmentINSERT INTO LA_PartyGroupAssignment( [PartyGroupId], [PartyId])SELECT  [PartyGroupId], [PartyId]FROM DB054.bodb_Licensee.dbo.LA_PartyGroupAssignment WITH(NOLOCK)
--*** Done LA_PartyGroupAssignment
--*** Start LA_SettingGroupAssignment
TRUNCATE TABLE LA_SettingGroupAssignmentSET IDENTITY_INSERT LA_SettingGroupAssignment ONINSERT INTO LA_SettingGroupAssignment( [SettingGroupAssignmentId], [SettingGroupHeaderId], [PartyId], [FromDate], [ToDate], [Status])SELECT  [SettingGroupAssignmentId], [SettingGroupHeaderId], [PartyId], [FromDate], [ToDate], [Status]FROM DB054.bodb_Licensee.dbo.LA_SettingGroupAssignment WITH(NOLOCK)SET IDENTITY_INSERT LA_SettingGroupAssignment OFF
--*** Done LA_SettingGroupAssignment
--*** Start LA_SettingGroupDetail
TRUNCATE TABLE LA_SettingGroupDetailSET IDENTITY_INSERT LA_SettingGroupDetail ONINSERT INTO LA_SettingGroupDetail( [SettingGroupDetailId], [SettingGroupHeaderId], [CurrencyId], [TargetAmount], [Period], [Rate], [FromDate], [ToDate], [RestartDate], [Status])SELECT  [SettingGroupDetailId], [SettingGroupHeaderId], [CurrencyId], [TargetAmount], [Period], [Rate], [FromDate], [ToDate], [RestartDate], [Status]FROM DB054.bodb_Licensee.dbo.LA_SettingGroupDetail WITH(NOLOCK)SET IDENTITY_INSERT LA_SettingGroupDetail OFF
--*** Done LA_SettingGroupDetail
--*** Start LA_SettingGroupHeader
TRUNCATE TABLE LA_SettingGroupHeaderSET IDENTITY_INSERT LA_SettingGroupHeader ONINSERT INTO LA_SettingGroupHeader( [SettingGroupHeaderId], [GroupName], [SettingGroupType], [Note])SELECT  [SettingGroupHeaderId], [GroupName], [SettingGroupType], [Note]FROM DB054.bodb_Licensee.dbo.LA_SettingGroupHeader WITH(NOLOCK)SET IDENTITY_INSERT LA_SettingGroupHeader OFF
--*** Done LA_SettingGroupHeader
--*** Start LA_User
TRUNCATE TABLE LA_UserSET IDENTITY_INSERT LA_User ONINSERT INTO LA_User( [UserID], [GroupID], [Username], [UserPwd], [DisplayName], [UserSalt], [StatusID], [Creator], [CreatedDate], [ModifiedDate])SELECT  [UserID], [GroupID], [Username], [UserPwd], [DisplayName], [UserSalt], [StatusID], [Creator], [CreatedDate], [ModifiedDate]FROM DB054.bodb_Licensee.dbo.LA_User WITH(NOLOCK)SET IDENTITY_INSERT LA_User OFF
--*** Done LA_User
--*** Start LA_UserFunction
TRUNCATE TABLE LA_UserFunctionINSERT INTO LA_UserFunction( [UserID], [FunctionID], [Modifydate], [Modifier], [StatusID])SELECT  [UserID], [FunctionID], [Modifydate], [Modifier], [StatusID]FROM DB054.bodb_Licensee.dbo.LA_UserFunction WITH(NOLOCK)
--*** Done LA_UserFunction
--*** Start LA_UserParty
TRUNCATE TABLE LA_UserPartyINSERT INTO LA_UserParty( [UserID], [PartyID], [Modifydate], [Modifier], [StatusID])SELECT  [UserID], [PartyID], [Modifydate], [Modifier], [StatusID]FROM DB054.bodb_Licensee.dbo.LA_UserParty WITH(NOLOCK)
--*** Done LA_UserParty
--*** Start LicenseeEventLog
TRUNCATE TABLE LicenseeEventLogINSERT INTO LicenseeEventLog( [ObjectID], [SystemID], [ProductID], [ActionID], [FromDate], [ToDate], [AdditionData1], [LogDate])SELECT  [ObjectID], [SystemID], [ProductID], [ActionID], [FromDate], [ToDate], [AdditionData1], [LogDate]FROM DB054.bodb_Licensee.dbo.LicenseeEventLog WITH(NOLOCK)
--*** Done LicenseeEventLog
--*** Start OA_FunctionLicensees
TRUNCATE TABLE OA_FunctionLicenseesINSERT INTO OA_FunctionLicensees( [FunctionID], [ResellerID], [LicenseeID])SELECT  [FunctionID], [ResellerID], [LicenseeID]FROM DB054.bodb_Licensee.dbo.OA_FunctionLicensees WITH(NOLOCK)
--*** Done OA_FunctionLicensees
--*** Start OA_FunctionResellers
TRUNCATE TABLE OA_FunctionResellersINSERT INTO OA_FunctionResellers( [FunctionID], [ResellerID])SELECT  [FunctionID], [ResellerID]FROM DB054.bodb_Licensee.dbo.OA_FunctionResellers WITH(NOLOCK)
--*** Done OA_FunctionResellers
--*** Start OA_Functions
TRUNCATE TABLE OA_FunctionsINSERT INTO OA_Functions( [FunctionID], [FunctionName], [FunctionDesc], [ParentID], [ParentName], [URL], [CreatedDate], [ModifiedDate], [DisplayOrder], [Creator], [IsActive], [FunctionKey])SELECT  [FunctionID], [FunctionName], [FunctionDesc], [ParentID], [ParentName], [URL], [CreatedDate], [ModifiedDate], [DisplayOrder], [Creator], [IsActive], [FunctionKey]FROM DB054.bodb_Licensee.dbo.OA_Functions WITH(NOLOCK)
--*** Done OA_Functions
--*** Start OA_GroupFunctions
TRUNCATE TABLE OA_GroupFunctionsINSERT INTO OA_GroupFunctions( [GroupID], [FunctionID], [LicenseeID], [ResellerID], [Policy])SELECT  [GroupID], [FunctionID], [LicenseeID], [ResellerID], [Policy]FROM DB054.bodb_Licensee.dbo.OA_GroupFunctions WITH(NOLOCK)
--*** Done OA_GroupFunctions
--*** Start OA_GroupLicensees
TRUNCATE TABLE OA_GroupLicenseesINSERT INTO OA_GroupLicensees( [GroupID], [ResellerID], [LicenseeID])SELECT  [GroupID], [ResellerID], [LicenseeID]FROM DB054.bodb_Licensee.dbo.OA_GroupLicensees WITH(NOLOCK)
--*** Done OA_GroupLicensees
--*** Start OA_GroupResellers
TRUNCATE TABLE OA_GroupResellersINSERT INTO OA_GroupResellers( [GroupID], [ResellerID])SELECT  [GroupID], [ResellerID]FROM DB054.bodb_Licensee.dbo.OA_GroupResellers WITH(NOLOCK)
--*** Done OA_GroupResellers
--*** Start OA_Groups
TRUNCATE TABLE OA_GroupsSET IDENTITY_INSERT OA_Groups ONINSERT INTO OA_Groups( [GroupID], [GroupName], [GroupDesc], [IsActive], [CreatedDate], [ModifiedDate], [Creator])SELECT  [GroupID], [GroupName], [GroupDesc], [IsActive], [CreatedDate], [ModifiedDate], [Creator]FROM DB054.bodb_Licensee.dbo.OA_Groups WITH(NOLOCK)SET IDENTITY_INSERT OA_Groups OFF
--*** Done OA_Groups
--*** Start OA_LogAction
TRUNCATE TABLE OA_LogActionINSERT INTO OA_LogAction( [ActionID], [ActionTypeID], [SPName], [ActionNameEN], [ActionNameCH], [ActionNameCS], [ActionNameJP], [ActionNameIT], [ActionNameTH], [ActionNameKO], [XsltContent], [IsInternal])SELECT  [ActionID], [ActionTypeID], [SPName], [ActionNameEN], [ActionNameCH], [ActionNameCS], [ActionNameJP], [ActionNameIT], [ActionNameTH], [ActionNameKO], [XsltContent], [IsInternal]FROM DB054.bodb_Licensee.dbo.OA_LogAction WITH(NOLOCK)
--*** Done OA_LogAction
--*** Start OA_LogActionType
TRUNCATE TABLE OA_LogActionTypeINSERT INTO OA_LogActionType( [ActionTypeID], [ActionTypeNameEN], [ActionTypeNameCH], [ActionTypeNameCS], [ActionTypeNameJP], [ActionTypeNameIT], [ActionTypeNameTH], [ActionTypeNameKO])SELECT  [ActionTypeID], [ActionTypeNameEN], [ActionTypeNameCH], [ActionTypeNameCS], [ActionTypeNameJP], [ActionTypeNameIT], [ActionTypeNameTH], [ActionTypeNameKO]FROM DB054.bodb_Licensee.dbo.OA_LogActionType WITH(NOLOCK)
--*** Done OA_LogActionType
--*** Start OA_Menus
TRUNCATE TABLE OA_MenusINSERT INTO OA_Menus( [MenuID], [MenuName], [MenuDesc], [ParentID], [ParentName], [URL], [CreatedDate], [ModifiedDate], [DisplayOrder], [Creator], [IsActive], [FunctionID], [Policy])SELECT  [MenuID], [MenuName], [MenuDesc], [ParentID], [ParentName], [URL], [CreatedDate], [ModifiedDate], [DisplayOrder], [Creator], [IsActive], [FunctionID], [Policy]FROM DB054.bodb_Licensee.dbo.OA_Menus WITH(NOLOCK)
--*** Done OA_Menus
--*** Start OA_OnUser
TRUNCATE TABLE OA_OnUserSET IDENTITY_INSERT OA_OnUser ONINSERT INTO OA_OnUser( [custid], [reload_time], [on_userid], [IP], [iskickedout], [NetSessionID])SELECT  [custid], [reload_time], [on_userid], [IP], [iskickedout], [NetSessionID]FROM DB054.bodb_Licensee.dbo.OA_OnUser WITH(NOLOCK)SET IDENTITY_INSERT OA_OnUser OFF
--*** Done OA_OnUser
--*** Start OA_UserFunctions
TRUNCATE TABLE OA_UserFunctionsINSERT INTO OA_UserFunctions( [UserID], [FunctionID], [LicenseeID], [ResellerID], [Policy])SELECT  [UserID], [FunctionID], [LicenseeID], [ResellerID], [Policy]FROM DB054.bodb_Licensee.dbo.OA_UserFunctions WITH(NOLOCK)
--*** Done OA_UserFunctions
--*** Start OA_UserLicensees
TRUNCATE TABLE OA_UserLicenseesINSERT INTO OA_UserLicensees( [UserID], [ResellerID], [LicenseeID])SELECT  [UserID], [ResellerID], [LicenseeID]FROM DB054.bodb_Licensee.dbo.OA_UserLicensees WITH(NOLOCK)
--*** Done OA_UserLicensees
--*** Start OA_UserLog_Login
TRUNCATE TABLE OA_UserLog_LoginSET IDENTITY_INSERT OA_UserLog_Login ONINSERT INTO OA_UserLog_Login( [LogID], [UserID], [IP], [LogDate], [Doing], [DomainName], [BrowserName], [Platform], [CountryCode], [Duration])SELECT  [LogID], [UserID], [IP], [LogDate], [Doing], [DomainName], [BrowserName], [Platform], [CountryCode], [Duration]FROM DB054.bodb_Licensee.dbo.OA_UserLog_Login WITH(NOLOCK)SET IDENTITY_INSERT OA_UserLog_Login OFF
--*** Done OA_UserLog_Login
--*** Start OA_UserLog_RunSP
TRUNCATE TABLE OA_UserLog_RunSPSET IDENTITY_INSERT OA_UserLog_RunSP ONINSERT INTO OA_UserLog_RunSP( [LogID], [UserID], [SPName], [Doing], [LogDate], [CustID], [ActionID], [TrackingValue], [Duration], [TrackingValue2])SELECT  [LogID], [UserID], [SPName], [Doing], [LogDate], [CustID], [ActionID], [TrackingValue], [Duration], [TrackingValue2]FROM DB054.bodb_Licensee.dbo.OA_UserLog_RunSP WITH(NOLOCK)SET IDENTITY_INSERT OA_UserLog_RunSP OFF
--*** Done OA_UserLog_RunSP
--*** Start OA_UserResellers
TRUNCATE TABLE OA_UserResellersINSERT INTO OA_UserResellers( [UserID], [ResellerID])SELECT  [UserID], [ResellerID]FROM DB054.bodb_Licensee.dbo.OA_UserResellers WITH(NOLOCK)
--*** Done OA_UserResellers
--*** Start OA_Users
TRUNCATE TABLE OA_UsersSET IDENTITY_INSERT OA_Users ONINSERT INTO OA_Users( [UserID], [GroupID], [Username], [UserPwd], [DisplayName], [UserSalt], [IsActive], [Creator], [CreatedDate], [ModifiedDate])SELECT  [UserID], [GroupID], [Username], [UserPwd], [DisplayName], [UserSalt], [IsActive], [Creator], [CreatedDate], [ModifiedDate]FROM DB054.bodb_Licensee.dbo.OA_Users WITH(NOLOCK)SET IDENTITY_INSERT OA_Users OFF
--*** Done OA_Users
--*** Start OAS_LogAction
TRUNCATE TABLE OAS_LogActionINSERT INTO OAS_LogAction( [ActionID], [ActionTypeID], [SPName], [ActionNameEN], [ActionNameCH], [ActionNameCS], [ActionNameJP], [ActionNameIT], [ActionNameTH], [ActionNameKO], [XsltContent], [IsInternal])SELECT  [ActionID], [ActionTypeID], [SPName], [ActionNameEN], [ActionNameCH], [ActionNameCS], [ActionNameJP], [ActionNameIT], [ActionNameTH], [ActionNameKO], [XsltContent], [IsInternal]FROM DB054.bodb_Licensee.dbo.OAS_LogAction WITH(NOLOCK)
--*** Done OAS_LogAction
--*** Start OAS_LogActionType
TRUNCATE TABLE OAS_LogActionTypeINSERT INTO OAS_LogActionType( [ActionTypeID], [ActionTypeNameEN], [ActionTypeNameCH], [ActionTypeNameCS], [ActionTypeNameJP], [ActionTypeNameIT], [ActionTypeNameTH], [ActionTypeNameKO])SELECT  [ActionTypeID], [ActionTypeNameEN], [ActionTypeNameCH], [ActionTypeNameCS], [ActionTypeNameJP], [ActionTypeNameIT], [ActionTypeNameTH], [ActionTypeNameKO]FROM DB054.bodb_Licensee.dbo.OAS_LogActionType WITH(NOLOCK)
--*** Done OAS_LogActionType
--*** Start OAS_OnUser
TRUNCATE TABLE OAS_OnUserSET IDENTITY_INSERT OAS_OnUser ONINSERT INTO OAS_OnUser( [custid], [reload_time], [on_userid], [IP], [iskickedout], [NetSessionID])SELECT  [custid], [reload_time], [on_userid], [IP], [iskickedout], [NetSessionID]FROM DB054.bodb_Licensee.dbo.OAS_OnUser WITH(NOLOCK)SET IDENTITY_INSERT OAS_OnUser OFF
--*** Done OAS_OnUser
--*** Start OAS_UserLog_Login
TRUNCATE TABLE OAS_UserLog_LoginSET IDENTITY_INSERT OAS_UserLog_Login ONINSERT INTO OAS_UserLog_Login( [LogID], [UserID], [IP], [LogDate], [Doing], [DomainName], [BrowserName], [Platform], [CountryCode], [Duration])SELECT  [LogID], [UserID], [IP], [LogDate], [Doing], [DomainName], [BrowserName], [Platform], [CountryCode], [Duration]FROM DB054.bodb_Licensee.dbo.OAS_UserLog_Login WITH(NOLOCK)SET IDENTITY_INSERT OAS_UserLog_Login OFF
--*** Done OAS_UserLog_Login
--*** Start OAS_UserLog_RunSP
TRUNCATE TABLE OAS_UserLog_RunSPSET IDENTITY_INSERT OAS_UserLog_RunSP ONINSERT INTO OAS_UserLog_RunSP( [LogID], [UserID], [SPName], [Doing], [LogDate], [CustID], [ActionID], [TrackingValue], [Duration], [TrackingValue2])SELECT  [LogID], [UserID], [SPName], [Doing], [LogDate], [CustID], [ActionID], [TrackingValue], [Duration], [TrackingValue2]FROM DB054.bodb_Licensee.dbo.OAS_UserLog_RunSP WITH(NOLOCK)SET IDENTITY_INSERT OAS_UserLog_RunSP OFF
--*** Done OAS_UserLog_RunSP
--*** Start OAS_Users
TRUNCATE TABLE OAS_UsersSET IDENTITY_INSERT OAS_Users ONINSERT INTO OAS_Users( [UserID], [Username], [UserPwd], [DisplayName], [Role], [UserSalt], [IsActive], [Creator], [CreatedDate], [ModifiedDate], [IsTest])SELECT  [UserID], [Username], [UserPwd], [DisplayName], [Role], [UserSalt], [IsActive], [Creator], [CreatedDate], [ModifiedDate], [IsTest]FROM DB054.bodb_Licensee.dbo.OAS_Users WITH(NOLOCK)SET IDENTITY_INSERT OAS_Users OFF
--*** Done OAS_Users
--*** Start Party
TRUNCATE TABLE PartySET IDENTITY_INSERT Party ONINSERT INTO Party( [ID], [PartyName])SELECT  [ID], [PartyName]FROM DB054.bodb_Licensee.dbo.Party WITH(NOLOCK)SET IDENTITY_INSERT Party OFF
--*** Done Party
--*** Start ResellerProductCharge
TRUNCATE TABLE ResellerProductChargeSET IDENTITY_INSERT ResellerProductCharge ONINSERT INTO ResellerProductCharge( [ID], [PartyID], [ProductID], [ResellerID], [FromYearMonth], [ToYearMonth], [ChargeRate])SELECT  [ID], [PartyID], [ProductID], [ResellerID], [FromYearMonth], [ToYearMonth], [ChargeRate]FROM DB054.bodb_Licensee.dbo.ResellerProductCharge WITH(NOLOCK)SET IDENTITY_INSERT ResellerProductCharge OFF
--*** Done ResellerProductCharge
--*** Start ResellerProductChargeByDateRange
TRUNCATE TABLE ResellerProductChargeByDateRangeSET IDENTITY_INSERT ResellerProductChargeByDateRange ONINSERT INTO ResellerProductChargeByDateRange( [ID], [PartyID], [ProductID], [ResellerID], [FromDate], [ToDate], [ChargeRate])SELECT  [ID], [PartyID], [ProductID], [ResellerID], [FromDate], [ToDate], [ChargeRate]FROM DB054.bodb_Licensee.dbo.ResellerProductChargeByDateRange WITH(NOLOCK)SET IDENTITY_INSERT ResellerProductChargeByDateRange OFF
--*** Done ResellerProductChargeByDateRange
--*** Start ResellerTransactionRate
TRUNCATE TABLE ResellerTransactionRateSET IDENTITY_INSERT ResellerTransactionRate ONINSERT INTO ResellerTransactionRate( [ID], [ResellerID], [MinTrans], [MaxTrans], [Rate], [FromYearMonth], [ToYearMonth])SELECT  [ID], [ResellerID], [MinTrans], [MaxTrans], [Rate], [FromYearMonth], [ToYearMonth]FROM DB054.bodb_Licensee.dbo.ResellerTransactionRate WITH(NOLOCK)SET IDENTITY_INSERT ResellerTransactionRate OFF
--*** Done ResellerTransactionRate
