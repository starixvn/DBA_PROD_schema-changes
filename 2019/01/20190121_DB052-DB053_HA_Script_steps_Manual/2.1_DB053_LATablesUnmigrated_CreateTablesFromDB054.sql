/*
	Task: Script create LA/OA tables that have not migrated to DBCUST yet, get from DB054 (standby for DB052). This would be for failover the tables to DB053 if DB052 were down.
	Database: DB053.bodb_Licensee
*/



USE [bodb_Licensee]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Aff_FunctionInfo](
	[FunctionID] [int] IDENTITY(1,1) NOT NULL,
	[FunctionName] [nvarchar](50) NULL,
	[FunctionNote] [nvarchar](2000) NULL,
	[FunctionDesc] [nvarchar](50) NULL,
	[FunctionRender] [tinyint] NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifyDate] [datetime] NOT NULL,
	[DisplayOrder] [tinyint] NULL,
	[Creator] [int] NULL,
	[ParentID] [int] NULL,
	[Filenames] [varchar](2000) NULL,
 CONSTRAINT [PK_AFF_FunctionInfo] PRIMARY KEY CLUSTERED 
(
	[FunctionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [AFF_INDEX]
) ON [AFF_INDEX]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aff_GroupInfo](
	[GroupID] [int] IDENTITY(1,1) NOT NULL,
	[LicenseeID] [int] NOT NULL,
	[GroupName] [nvarchar](50) NOT NULL,
	[GroupDesc] [nvarchar](50) NOT NULL,
	[CreateDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
	[DisplayOrder] [tinyint] NULL,
	[Creator] [int] NULL,
 CONSTRAINT [PK_Aff_GroupInfo] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [AFF_INDEX],
 CONSTRAINT [UC_Aff_GroupInfo_LicID_GroupName] UNIQUE NONCLUSTERED 
(
	[GroupName] ASC,
	[LicenseeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [AFF_INDEX]
) ON [AFF_INDEX]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aff_GroupPolicy](
	[GroupID] [int] NOT NULL,
	[FunctionID] [int] NOT NULL,
	[Policy] [tinyint] NULL,
	[CreateDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
	[Creator] [int] NULL,
 CONSTRAINT [PK_Aff_GroupPolicy] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC,
	[FunctionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [AFF_INDEX]
) ON [AFF_INDEX]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aff_LicenseeFunction](
	[LicenseeID] [int] NOT NULL,
	[FunctionID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Aff_LicenseeFunction] PRIMARY KEY CLUSTERED 
(
	[LicenseeID] ASC,
	[FunctionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [AFF_INDEX]
) ON [AFF_INDEX]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Aff_LicenseeInfo](
	[LicenseeID] [int] NOT NULL,
	[LicenseeName] [varchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Aff_LicenseeInfo] PRIMARY KEY CLUSTERED 
(
	[LicenseeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [AFF_INDEX]
) ON [AFF_INDEX]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aff_LicenseeUser](
	[LicenseeID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[GroupID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyBy] [int] NULL,
 CONSTRAINT [PK_Aff_LicenseeUser] PRIMARY KEY CLUSTERED 
(
	[LicenseeID] ASC,
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [AFF_INDEX]
) ON [AFF_INDEX]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Aff_On_User](
	[CustID] [int] NULL,
	[Reload_Time] [smalldatetime] NULL,
	[ServerID] [int] NOT NULL,
	[On_UserID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IP] [varchar](15) NOT NULL,
	[IsKickedOut] [bit] NULL,
	[NetSessionID] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Aff_On_User] PRIMARY KEY NONCLUSTERED 
(
	[On_UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [AFF_INDEX]
) ON [AFF_DATA]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Aff_User_CreatorTransfer](
	[LicenseeID] [int] NULL,
	[Aff_OldUsername] [varchar](100) NULL,
	[Aff_NewAdminUsername] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aff_UserPolicy](
	[UserID] [int] NOT NULL,
	[LicenseeID] [int] NOT NULL,
	[FunctionID] [int] NOT NULL,
	[Policy] [tinyint] NULL,
	[CreateDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
	[Creator] [int] NULL,
 CONSTRAINT [PK_Aff_UserPolicy] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[LicenseeID] ASC,
	[FunctionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [AFF_INDEX]
) ON [AFF_INDEX]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LA_AnalysisFile](
	[FileId] [int] IDENTITY(1,1) NOT NULL,
	[PartyIds] [varchar](4000) NOT NULL,
	[ProductCodes] [varchar](200) NOT NULL,
	[Filename] [varchar](200) NOT NULL,
	[FromDate] [datetime] NOT NULL,
	[ToDate] [datetime] NOT NULL,
	[Status] [tinyint] NOT NULL,
	[IsSkinView] [bit] NOT NULL,
 CONSTRAINT [PK_FileId] PRIMARY KEY CLUSTERED 
(
	[FileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
) ON [DATA]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LA_BankInfo](
	[PartyId] [int] NOT NULL,
	[BankId] [tinyint] NOT NULL,
	[AccountNumber] [nvarchar](50) NULL,
	[BankName] [nvarchar](125) NULL,
	[BankAddress] [nvarchar](255) NULL,
	[IBAN] [nvarchar](50) NULL,
	[BeneficiaryName] [nvarchar](125) NULL,
	[SwiftCode] [nvarchar](50) NULL,
	[CorrespondentBank] [nvarchar](100) NULL,
	[CorrespondentAccountNumber] [nvarchar](50) NULL,
	[CorrespondentAddress] [nvarchar](255) NULL,
	[CorrespondentSwiftCode] [nvarchar](50) NULL,
 CONSTRAINT [LA_BankInfo_pk] PRIMARY KEY CLUSTERED 
(
	[PartyId] ASC,
	[BankId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
) ON [OWA_DATA]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LA_BillerInfo](
	[PartyId] [int] NOT NULL,
	[BillerName] [nvarchar](50) NULL,
	[BillerFullName] [nvarchar](50) NULL,
	[StatusId] [tinyint] NOT NULL,
	[CompanyName] [nvarchar](100) NULL,
	[Address1] [nvarchar](255) NULL,
	[Address2] [nvarchar](255) NULL,
	[LogoPath] [nvarchar](255) NULL,
	[Description] [nvarchar](255) NULL,
	[Logo] [varbinary](max) NULL,
	[LogoHeight] [int] NULL,
	[LogoWidth] [int] NULL,
 CONSTRAINT [BillerInfo_PK] PRIMARY KEY CLUSTERED 
(
	[PartyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
) ON [OWA_DATA] TEXTIMAGE_ON [OWA_DATA]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LA_ChargeInfo_MinFee](
	[ChargeID] [int] NOT NULL,
	[MinFee] [money] NULL,
	[MinFeeCurrencyID] [int] NULL,
	[WaiveFrom] [date] NULL,
	[WaiveTo] [date] NULL,
 CONSTRAINT [PK_LA_ChargeInfo_MinFee] PRIMARY KEY CLUSTERED 
(
	[ChargeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [licensee_table]
) ON [licensee_table]

GO
GRANT SELECT ON [dbo].[LA_ChargeInfo_MinFee] TO [bodbAdminNet] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LA_DiscountGroupAssignment](
	[DiscountGroupId] [int] NOT NULL,
	[PartyID] [int] NOT NULL,
	[Remark] [nvarchar](4000) NULL,
	[IsApplyDiscount] [bit] NULL,
 CONSTRAINT [DiscountGroupAssignment_PK] PRIMARY KEY CLUSTERED 
(
	[DiscountGroupId] ASC,
	[PartyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
) ON [OWA_DATA]

GO
GRANT SELECT ON [dbo].[LA_DiscountGroupAssignment] TO [bodbAdminNet] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LA_DiscountGroupCurrency](
	[DiscountGroupId] [smallint] NOT NULL,
	[PartyID] [int] NOT NULL,
	[CurrencyId] [int] NOT NULL,
 CONSTRAINT [PK_LA_DiscountGroupCurrency] PRIMARY KEY CLUSTERED 
(
	[DiscountGroupId] ASC,
	[PartyID] ASC,
	[CurrencyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
) ON [OWA_DATA]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LA_DiscountGroupDetail](
	[DiscountGroupDetailId] [smallint] IDENTITY(1,1) NOT NULL,
	[DiscountGroupId] [smallint] NOT NULL,
	[FromAmount] [money] NULL,
	[ToAmount] [money] NULL,
	[Rate] [money] NOT NULL,
 CONSTRAINT [LA_DiscountGroupDetail_PK] PRIMARY KEY CLUSTERED 
(
	[DiscountGroupDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
) ON [OWA_DATA]

GO
GRANT SELECT ON [dbo].[LA_DiscountGroupDetail] TO [bodbAdminNet] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LA_DiscountGroupHeader](
	[DiscountGroupId] [smallint] IDENTITY(1,1) NOT NULL,
	[DiscountGroupName] [nvarchar](110) NULL,
	[DiscountGroupType] [tinyint] NOT NULL,
	[CurrencyId] [tinyint] NOT NULL,
	[FromDate] [date] NOT NULL,
	[ToDate] [date] NOT NULL,
	[Priority] [tinyint] NOT NULL,
	[Remark] [nvarchar](4000) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [LA_DiscountGroupHeader_PK] PRIMARY KEY CLUSTERED 
(
	[DiscountGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
) ON [OWA_DATA]

GO
GRANT SELECT ON [dbo].[LA_DiscountGroupHeader] TO [bodbAdminNet] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LA_DiscountGroupProduct](
	[DiscountGroupId] [smallint] NOT NULL,
	[ProductId] [tinyint] NOT NULL,
	[CalculationType] [tinyint] NULL,
 CONSTRAINT [DiscountGroupProduct_PK] PRIMARY KEY CLUSTERED 
(
	[DiscountGroupId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
) ON [OWA_DATA]

GO
GRANT SELECT ON [dbo].[LA_DiscountGroupProduct] TO [bodbAdminNet] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LA_Function](
	[FunctionID] [int] IDENTITY(1,1) NOT NULL,
	[FunctionName] [nvarchar](100) NOT NULL,
	[FunctionDesc] [nvarchar](100) NULL,
	[ParentID] [int] NOT NULL,
	[ParentName] [nvarchar](100) NULL,
	[URL] [varchar](100) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[DisplayOrder] [int] NULL,
	[Creator] [int] NULL,
	[StatusID] [tinyint] NOT NULL,
	[FunctionKey] [nvarchar](50) NULL
) ON [OWA_DATA]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LA_FunctionParty](
	[FunctionID] [int] NULL,
	[PartyID] [int] NULL
) ON [OWA_DATA]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LA_Group](
	[GroupID] [int] IDENTITY(1,1) NOT NULL,
	[GroupName] [nvarchar](100) NOT NULL,
	[GroupDesc] [nvarchar](100) NULL,
	[StatusID] [int] NOT NULL,
	[ModifyDate] [datetime] NULL,
	[Modifier] [int] NULL
) ON [OWA_DATA]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LA_GroupFunction](
	[GroupID] [int] NOT NULL,
	[FunctionID] [int] NOT NULL
) ON [OWA_DATA]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LA_HostingFees](
	[HostingFeesId] [int] IDENTITY(1,1) NOT NULL,
	[HostingFeesName] [varchar](200) NOT NULL,
	[HostingFeesTypeId] [tinyint] NOT NULL,
	[BaseCurrencyId] [int] NOT NULL,
	[Description] [nvarchar](200) NULL,
 CONSTRAINT [PK_LA_HostingFees] PRIMARY KEY CLUSTERED 
(
	[HostingFeesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [licensee_table]
) ON [licensee_table]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LA_HostingFeesDetail](
	[HostingFeesDetailId] [int] IDENTITY(1,1) NOT NULL,
	[HostingFeesId] [int] NOT NULL,
	[BaseCurrencyId] [int] NOT NULL,
	[VCMFrom] [int] NULL,
	[VCMTo] [int] NULL,
	[Amount] [money] NOT NULL,
 CONSTRAINT [PK_LA_HostingFeesDetail] PRIMARY KEY CLUSTERED 
(
	[HostingFeesDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [licensee_table]
) ON [licensee_table]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LA_HostingFeesSetting](
	[ChargeId] [int] IDENTITY(1,1) NOT NULL,
	[SettingType] [tinyint] NOT NULL,
	[ParentId] [int] NULL,
	[FromParty] [int] NOT NULL,
	[ToParty] [int] NOT NULL,
	[FromDate] [datetime] NOT NULL,
	[ToDate] [datetime] NOT NULL,
	[ProductName] [varchar](50) NULL,
	[FirstBilling] [datetime] NULL,
	[BasisOfBilling] [nvarchar](200) NULL,
	[BaseCurrencyId] [int] NULL,
	[HostingFeesId] [int] NULL,
	[BasedMinimunFees] [int] NULL,
	[Remark] [varchar](200) NULL,
 CONSTRAINT [PK_LA_HostingFeesSetting] PRIMARY KEY CLUSTERED 
(
	[ChargeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [licensee_table]
) ON [licensee_table]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LA_HostingFeesTypes](
	[HostingFeesTypeId] [tinyint] IDENTITY(1,1) NOT NULL,
	[HostingFeesTypeName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_LA_HostingFeesTypes] PRIMARY KEY CLUSTERED 
(
	[HostingFeesTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [licensee_table]
) ON [licensee_table]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LA_InvoiceDetail](
	[InvoiceDetailId] [bigint] IDENTITY(1,1) NOT NULL,
	[InvoiceHeaderId] [bigint] NOT NULL,
	[Description] [nvarchar](200) NULL,
	[Reference] [nvarchar](100) NULL,
	[ProductId] [int] NULL,
	[AmountType] [tinyint] NULL,
	[InvoiceAmount] [money] NULL,
 CONSTRAINT [LA_InvoiceDetail_PK] PRIMARY KEY CLUSTERED 
(
	[InvoiceDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_INDEX]
) ON [OWA_INDEX]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LA_InvoiceHeader](
	[InvoiceHeaderId] [bigint] IDENTITY(1,1) NOT NULL,
	[BillerId] [int] NOT NULL,
	[PartyId] [int] NOT NULL,
	[RefNo] [bigint] NULL,
	[CurrencyId] [int] NOT NULL,
	[InvoiceSymbol] [nvarchar](20) NULL,
	[InvoiceNumber] [int] NOT NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[InvoiceDate] [datetime] NULL,
	[DueDate] [datetime] NULL,
	[Amount] [money] NULL,
	[InvoiceType] [smallint] NULL,
	[StatusId] [smallint] NULL,
	[Note] [nvarchar](200) NULL,
	[HasSent] [bit] NULL,
	[HasDeleted] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[IsSeparateProduct] [bit] NULL,
	[MaxPCU] [int] NULL,
	[RateAmount] [money] NULL,
	[IsWaived] [bit] NULL,
	[InvoicePath] [nvarchar](255) NULL,
	[InvoiceData] [nvarchar](max) NULL,
	[Environment] [varchar](50) NULL,
	[UpdatedBy] [int] NULL,
	[OfficialInvoiceNo] [nvarchar](50) NULL,
 CONSTRAINT [LA_InvoiceHeader_PK] PRIMARY KEY CLUSTERED 
(
	[InvoiceHeaderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_INDEX]
) ON [OWA_INDEX] TEXTIMAGE_ON [OWA_INDEX]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LA_InvoiceItemType](
	[InvItemTypeId] [smallint] NOT NULL,
	[InvItemTypeName] [nvarchar](100) NULL,
	[SignDB] [smallint] NULL,
	[GroupDB] [varchar](20) NULL,
	[SignSOA] [smallint] NULL,
	[GroupSOA] [varchar](20) NULL,
 CONSTRAINT [PK_LA_InvoiceItemType] PRIMARY KEY CLUSTERED 
(
	[InvItemTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
) ON [OWA_DATA]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LA_InvoiceSetting](
	[FromPartyId] [int] NOT NULL,
	[ToPartyId] [int] NOT NULL,
	[ProductId] [tinyint] NULL,
	[InvTypeId] [smallint] NOT NULL,
	[InvTempId] [smallint] NULL,
	[BankId] [tinyint] NULL,
	[ActiveAddress] [tinyint] NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LA_InvoiceStatement](
	[InvoiceStatementId] [bigint] IDENTITY(1,1) NOT NULL,
	[InvoiceHeaderId] [bigint] NOT NULL,
	[InvItemTypeId] [smallint] NULL,
	[StatusID] [smallint] NULL,
	[Description] [nvarchar](500) NULL,
	[Income] [money] NULL,
	[Expense] [money] NULL,
	[RefNo] [nvarchar](50) NULL,
	[RefPartyId] [int] NULL,
	[ProductId] [int] NULL,
 CONSTRAINT [PK_LA_InvoiceStatement] PRIMARY KEY CLUSTERED 
(
	[InvoiceStatementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
) ON [OWA_DATA]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LA_InvoiceTemplate](
	[InvTemplateId] [smallint] IDENTITY(1,1) NOT NULL,
	[InvTemplateName] [varchar](50) NOT NULL,
	[TemplatePath] [varchar](255) NULL,
 CONSTRAINT [LA_InvoiceTemplate_PK] PRIMARY KEY CLUSTERED 
(
	[InvTemplateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
) ON [OWA_DATA]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LA_InvoiceType](
	[InvTypeId] [smallint] IDENTITY(1,1) NOT NULL,
	[InvTypeName] [varchar](50) NOT NULL,
	[IsVisible] [bit] NULL,
 CONSTRAINT [LA_InvoiceType_PK] PRIMARY KEY CLUSTERED 
(
	[InvTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
) ON [OWA_DATA]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LA_InvoiceTypeMapping](
	[InvTypeId] [smallint] NOT NULL,
	[InvItemTypeId] [smallint] NOT NULL,
 CONSTRAINT [PK_LA_InvoiceTypeMapping] PRIMARY KEY CLUSTERED 
(
	[InvTypeId] ASC,
	[InvItemTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
) ON [OWA_DATA]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LA_LicenseeRebate](
	[RebateID] [int] IDENTITY(1,1) NOT NULL,
	[LicenseeID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[CurrencyID] [int] NOT NULL,
	[FromDate] [date] NULL,
	[ToDate] [date] NULL,
	[FromAmount] [money] NULL,
	[ToAmount] [money] NULL,
	[Rate] [smallmoney] NULL,
	[SystemId] [int] NULL,
 CONSTRAINT [PK_LA_LicenseeRebate] PRIMARY KEY CLUSTERED 
(
	[RebateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [licensee_table]
) ON [licensee_table]

GO
GRANT SELECT ON [dbo].[LA_LicenseeRebate] TO [bodbAdminNet] AS [dbo]
GO
GRANT SELECT ON [dbo].[LA_LicenseeRebate] TO [bodbLicenseeNet] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LA_MinFee](
	[MinFeeId] [int] IDENTITY(1,1) NOT NULL,
	[PartyId] [int] NOT NULL,
	[FeeTypeId] [tinyint] NOT NULL,
	[ProductId] [tinyint] NOT NULL,
	[FeeAmount] [money] NULL,
	[FromDate] [date] NOT NULL,
	[ToDate] [date] NOT NULL,
	[MinFeeTerm] [nvarchar](4000) NULL,
	[Priority] [tinyint] NOT NULL,
	[CurrencyId] [tinyint] NULL,
	[MonthOfDeduction] [tinyint] NULL
) ON [licensee_table]

GO
GRANT SELECT ON [dbo].[LA_MinFee] TO [bodbAdminNet] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LA_OnUser](
	[Custid] [int] NULL,
	[Reload_time] [smalldatetime] NULL,
	[On_userid] [int] IDENTITY(1,1) NOT NULL,
	[IP] [nvarchar](100) NULL,
	[iskickedout] [bit] NULL,
	[NetSessionID] [varchar](30) NULL,
 CONSTRAINT [PK_OnUserID] PRIMARY KEY NONCLUSTERED 
(
	[On_userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
) ON [OWA_DATA]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LA_PartyGroup](
	[PartyGroupId] [smallint] IDENTITY(1,1) NOT NULL,
	[PartyGroupName] [varchar](50) NOT NULL,
 CONSTRAINT [LA_PartyGroup_PK] PRIMARY KEY CLUSTERED 
(
	[PartyGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
) ON [OWA_DATA]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LA_PartyGroupAssignment](
	[PartyGroupId] [smallint] NOT NULL,
	[PartyId] [int] NOT NULL,
 CONSTRAINT [PartyGroupAssignment_PK] PRIMARY KEY CLUSTERED 
(
	[PartyGroupId] ASC,
	[PartyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
) ON [OWA_DATA]

GO
GRANT SELECT ON [dbo].[LA_PartyGroupAssignment] TO [bodbAdminNet] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LA_SettingGroupAssignment](
	[SettingGroupAssignmentId] [int] IDENTITY(1,1) NOT NULL,
	[SettingGroupHeaderId] [int] NULL,
	[PartyId] [int] NULL,
	[FromDate] [smalldatetime] NULL,
	[ToDate] [smalldatetime] NULL,
	[Status] [varchar](20) NULL,
 CONSTRAINT [LA_SettingGroupAssignment_PK] PRIMARY KEY CLUSTERED 
(
	[SettingGroupAssignmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
) ON [OWA_DATA]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LA_SettingGroupDetail](
	[SettingGroupDetailId] [int] IDENTITY(1,1) NOT NULL,
	[SettingGroupHeaderId] [int] NULL,
	[CurrencyId] [int] NULL,
	[TargetAmount] [money] NULL,
	[Period] [smallint] NULL,
	[Rate] [money] NULL,
	[FromDate] [smalldatetime] NULL,
	[ToDate] [smalldatetime] NULL,
	[RestartDate] [smalldatetime] NULL,
	[Status] [varchar](20) NULL,
 CONSTRAINT [LA_SettingGroupDetail_PK] PRIMARY KEY CLUSTERED 
(
	[SettingGroupDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
) ON [OWA_DATA]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LA_SettingGroupHeader](
	[SettingGroupHeaderId] [int] IDENTITY(1,1) NOT NULL,
	[GroupName] [nvarchar](50) NULL,
	[SettingGroupType] [tinyint] NULL,
	[Note] [nvarchar](500) NULL,
 CONSTRAINT [LA_SettingGroupHeader_PK] PRIMARY KEY CLUSTERED 
(
	[SettingGroupHeaderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
) ON [OWA_DATA]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LA_User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[GroupID] [int] NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[UserPwd] [varchar](50) NOT NULL,
	[DisplayName] [nvarchar](100) NOT NULL,
	[UserSalt] [varchar](50) NOT NULL,
	[StatusID] [tinyint] NULL,
	[Creator] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL
) ON [OWA_DATA]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LA_UserFunction](
	[UserID] [int] NOT NULL,
	[FunctionID] [int] NOT NULL,
	[Modifydate] [datetime] NULL,
	[Modifier] [int] NULL,
	[StatusID] [tinyint] NOT NULL
) ON [OWA_DATA]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LA_UserParty](
	[UserID] [int] NOT NULL,
	[PartyID] [int] NOT NULL,
	[Modifydate] [datetime] NULL,
	[Modifier] [int] NULL,
	[StatusID] [tinyint] NOT NULL
) ON [OWA_DATA]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LicenseeEventLog](
	[ObjectID] [int] NOT NULL,
	[SystemID] [int] NULL,
	[ProductID] [int] NULL,
	[ActionID] [int] NOT NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[AdditionData1] [varchar](100) NULL,
	[LogDate] [datetime] NULL
) ON [licensee_table]

GO
SET ANSI_PADDING OFF
GO
GRANT SELECT ON [dbo].[LicenseeEventLog] TO [bodbAdminNet] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OA_FunctionLicensees](
	[FunctionID] [int] NOT NULL,
	[ResellerID] [int] NOT NULL,
	[LicenseeID] [int] NOT NULL,
 CONSTRAINT [PK_OA_FunctionLicensees] PRIMARY KEY CLUSTERED 
(
	[FunctionID] ASC,
	[ResellerID] ASC,
	[LicenseeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
) ON [OWA_DATA]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OA_FunctionResellers](
	[FunctionID] [int] NOT NULL,
	[ResellerID] [int] NOT NULL,
 CONSTRAINT [PK_OA_FunctionResellers] PRIMARY KEY CLUSTERED 
(
	[FunctionID] ASC,
	[ResellerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
) ON [OWA_DATA]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OA_Functions](
	[FunctionID] [int] NOT NULL,
	[FunctionName] [nvarchar](50) NOT NULL,
	[FunctionDesc] [nvarchar](50) NULL,
	[ParentID] [int] NOT NULL,
	[ParentName] [nvarchar](50) NULL,
	[URL] [varchar](100) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[DisplayOrder] [int] NULL,
	[Creator] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[FunctionKey] [nvarchar](50) NULL,
 CONSTRAINT [PK_OA_Functions] PRIMARY KEY CLUSTERED 
(
	[FunctionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
) ON [OWA_DATA]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OA_GroupFunctions](
	[GroupID] [int] NOT NULL,
	[FunctionID] [int] NOT NULL,
	[LicenseeID] [int] NULL,
	[ResellerID] [int] NULL,
	[Policy] [tinyint] NOT NULL,
 CONSTRAINT [PK_OA_GroupFunctions] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC,
	[FunctionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
) ON [OWA_DATA]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OA_GroupLicensees](
	[GroupID] [int] NOT NULL,
	[ResellerID] [int] NOT NULL,
	[LicenseeID] [int] NOT NULL,
 CONSTRAINT [PK_OA_GroupLicensees] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC,
	[ResellerID] ASC,
	[LicenseeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
) ON [OWA_DATA]

GO
GRANT SELECT ON [dbo].[OA_GroupLicensees] TO [bodbAdminNet] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OA_GroupResellers](
	[GroupID] [int] NOT NULL,
	[ResellerID] [int] NOT NULL,
 CONSTRAINT [PK_OA_GroupResellers] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC,
	[ResellerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
) ON [OWA_DATA]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OA_Groups](
	[GroupID] [int] IDENTITY(1,1) NOT NULL,
	[GroupName] [nvarchar](50) NOT NULL,
	[GroupDesc] [nvarchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[Creator] [int] NULL,
 CONSTRAINT [PK_OA_Groups] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
) ON [OWA_DATA]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OA_LogAction](
	[ActionID] [int] NOT NULL,
	[ActionTypeID] [int] NULL,
	[SPName] [varchar](50) NULL,
	[ActionNameEN] [nvarchar](256) NULL,
	[ActionNameCH] [nvarchar](256) NULL,
	[ActionNameCS] [nvarchar](256) NULL,
	[ActionNameJP] [nvarchar](256) NULL,
	[ActionNameIT] [nvarchar](256) NULL,
	[ActionNameTH] [nvarchar](256) NULL,
	[ActionNameKO] [nvarchar](256) NULL,
	[XsltContent] [varchar](max) NULL,
	[IsInternal] [tinyint] NOT NULL,
 CONSTRAINT [PK_OA_LogAction] PRIMARY KEY CLUSTERED 
(
	[ActionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
) ON [OWA_DATA] TEXTIMAGE_ON [OWA_DATA]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OA_LogActionType](
	[ActionTypeID] [int] NOT NULL,
	[ActionTypeNameEN] [nvarchar](50) NULL,
	[ActionTypeNameCH] [nvarchar](50) NULL,
	[ActionTypeNameCS] [nvarchar](50) NULL,
	[ActionTypeNameJP] [nvarchar](50) NULL,
	[ActionTypeNameIT] [nvarchar](50) NULL,
	[ActionTypeNameTH] [nvarchar](50) NULL,
	[ActionTypeNameKO] [nvarchar](50) NULL,
 CONSTRAINT [PK_OA_LogActionType] PRIMARY KEY CLUSTERED 
(
	[ActionTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
) ON [OWA_DATA]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OA_Menus](
	[MenuID] [int] NOT NULL,
	[MenuName] [nvarchar](50) NOT NULL,
	[MenuDesc] [nvarchar](50) NULL,
	[ParentID] [int] NOT NULL,
	[ParentName] [nvarchar](50) NULL,
	[URL] [varchar](100) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[DisplayOrder] [int] NULL,
	[Creator] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[FunctionID] [int] NULL,
	[Policy] [tinyint] NOT NULL,
 CONSTRAINT [PK_OA_Menus] PRIMARY KEY CLUSTERED 
(
	[MenuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
) ON [OWA_DATA]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OA_OnUser](
	[custid] [int] NULL,
	[reload_time] [smalldatetime] NULL,
	[on_userid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IP] [nvarchar](50) NOT NULL,
	[iskickedout] [bit] NULL,
	[NetSessionID] [varchar](30) NOT NULL,
 CONSTRAINT [PK_OA_OnUser] PRIMARY KEY NONCLUSTERED 
(
	[on_userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
) ON [OWA_DATA]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OA_UserFunctions](
	[UserID] [int] NOT NULL,
	[FunctionID] [int] NOT NULL,
	[LicenseeID] [int] NULL,
	[ResellerID] [int] NULL,
	[Policy] [tinyint] NOT NULL,
 CONSTRAINT [PK_OA_UserFunctions] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[FunctionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
) ON [OWA_DATA]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OA_UserLicensees](
	[UserID] [int] NOT NULL,
	[ResellerID] [int] NOT NULL,
	[LicenseeID] [int] NOT NULL,
 CONSTRAINT [PK_OA_UserLicensees] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[ResellerID] ASC,
	[LicenseeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
) ON [OWA_DATA]

GO
GRANT SELECT ON [dbo].[OA_UserLicensees] TO [bodbAdminNet] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OA_UserLog_Login](
	[LogID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[IP] [varchar](15) NOT NULL,
	[LogDate] [datetime] NULL,
	[Doing] [varchar](300) NULL,
	[DomainName] [nvarchar](253) NULL,
	[BrowserName] [nvarchar](255) NULL,
	[Platform] [nvarchar](255) NULL,
	[CountryCode] [varchar](64) NULL,
	[Duration] [int] NULL
) ON [OWA_UserLog_data]

GO
SET ANSI_PADDING OFF
GO
GRANT INSERT ON [dbo].[OA_UserLog_Login] TO [bodbAdminNet] AS [dbo]
GO
GRANT SELECT ON [dbo].[OA_UserLog_Login] TO [bodbAdminNet] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OA_UserLog_RunSP](
	[LogID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[UserID] [int] NULL,
	[SPName] [varchar](50) NULL,
	[Doing] [varchar](4000) NULL,
	[LogDate] [datetime] NULL,
	[CustID] [int] NULL,
	[ActionID] [int] NULL,
	[TrackingValue] [nvarchar](max) NULL,
	[Duration] [int] NULL,
	[TrackingValue2] [nvarchar](max) NULL
) ON [OWA_UserLog_index] TEXTIMAGE_ON [OWA_UserLog_data]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OA_UserResellers](
	[UserID] [int] NOT NULL,
	[ResellerID] [int] NOT NULL,
 CONSTRAINT [PK_OA_UserResellers] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[ResellerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
) ON [OWA_DATA]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OA_Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[GroupID] [int] NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[UserPwd] [varchar](50) NOT NULL,
	[DisplayName] [nvarchar](50) NULL,
	[UserSalt] [varchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[Creator] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_OA_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
) ON [OWA_DATA]

GO
SET ANSI_PADDING OFF
GO
GRANT SELECT ON [dbo].[OA_Users] TO [bodbAdminNet] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OAS_LogAction](
	[ActionID] [int] NOT NULL,
	[ActionTypeID] [int] NULL,
	[SPName] [varchar](50) NULL,
	[ActionNameEN] [nvarchar](256) NULL,
	[ActionNameCH] [nvarchar](256) NULL,
	[ActionNameCS] [nvarchar](256) NULL,
	[ActionNameJP] [nvarchar](256) NULL,
	[ActionNameIT] [nvarchar](256) NULL,
	[ActionNameTH] [nvarchar](256) NULL,
	[ActionNameKO] [nvarchar](256) NULL,
	[XsltContent] [varchar](max) NULL,
	[IsInternal] [tinyint] NOT NULL,
 CONSTRAINT [PK_OAS_LogAction] PRIMARY KEY CLUSTERED 
(
	[ActionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
) ON [OWA_DATA] TEXTIMAGE_ON [OWA_DATA]

GO
SET ANSI_PADDING OFF
GO
GRANT SELECT ON [dbo].[OAS_LogAction] TO [bodbAdminNet] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OAS_LogActionType](
	[ActionTypeID] [int] NOT NULL,
	[ActionTypeNameEN] [nvarchar](50) NULL,
	[ActionTypeNameCH] [nvarchar](50) NULL,
	[ActionTypeNameCS] [nvarchar](50) NULL,
	[ActionTypeNameJP] [nvarchar](50) NULL,
	[ActionTypeNameIT] [nvarchar](50) NULL,
	[ActionTypeNameTH] [nvarchar](50) NULL,
	[ActionTypeNameKO] [nvarchar](50) NULL,
 CONSTRAINT [PK_OAS_LogActionType] PRIMARY KEY CLUSTERED 
(
	[ActionTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
) ON [OWA_DATA]

GO
GRANT SELECT ON [dbo].[OAS_LogActionType] TO [bodbAdminNet] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OAS_OnUser](
	[custid] [int] NULL,
	[reload_time] [smalldatetime] NULL,
	[on_userid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IP] [nvarchar](50) NOT NULL,
	[iskickedout] [bit] NULL,
	[NetSessionID] [varchar](30) NOT NULL,
 CONSTRAINT [PK_OAS_OnUser] PRIMARY KEY NONCLUSTERED 
(
	[on_userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
) ON [OWA_DATA]

GO
SET ANSI_PADDING OFF
GO
GRANT SELECT ON [dbo].[OAS_OnUser] TO [bodbAdminNet] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[OAS_UserLog_Login](
	[LogID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[IP] [varchar](15) NOT NULL,
	[LogDate] [datetime] NULL,
	[Doing] [varchar](300) NULL,
	[DomainName] [nvarchar](253) NULL,
	[BrowserName] [nvarchar](255) NULL,
	[Platform] [nvarchar](255) NULL,
	[CountryCode] [varchar](64) NULL,
	[Duration] [int] NULL
) ON [userlog_table]

GO
SET ANSI_PADDING OFF
GO
GRANT SELECT ON [dbo].[OAS_UserLog_Login] TO [bodbAdminNet] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[OAS_UserLog_RunSP](
	[LogID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[UserID] [int] NULL,
	[SPName] [varchar](50) NULL,
	[Doing] [varchar](4000) NULL,
	[LogDate] [datetime] NULL,
	[CustID] [int] NULL,
	[ActionID] [int] NULL,
	[TrackingValue] [nvarchar](max) NULL,
	[Duration] [int] NULL,
	[TrackingValue2] [nvarchar](max) NULL
) ON [userlog_table] TEXTIMAGE_ON [userlog_table]

GO
SET ANSI_PADDING OFF
GO
GRANT SELECT ON [dbo].[OAS_UserLog_RunSP] TO [bodbAdminNet] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OAS_Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[UserPwd] [varchar](50) NOT NULL,
	[DisplayName] [nvarchar](50) NULL,
	[Role] [tinyint] NOT NULL,
	[UserSalt] [varchar](50) NULL,
	[IsActive] [bit] NULL,
	[Creator] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[IsTest] [bit] NOT NULL,
 CONSTRAINT [PK_SpNames] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
) ON [OWA_DATA]

GO
SET ANSI_PADDING OFF
GO
GRANT SELECT ON [dbo].[OAS_Users] TO [bodbAdminNet] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Party](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PartyName] [varchar](100) NULL,
 CONSTRAINT [PK_Party] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [licensee_table]
) ON [licensee_table]

GO
SET ANSI_PADDING OFF
GO
GRANT SELECT ON [dbo].[Party] TO [bodbAdminNet] AS [dbo]
GO
GRANT SELECT ON [dbo].[Party] TO [bodbLicenseeNet] AS [dbo]
GO
GRANT SELECT ON [dbo].[Party] TO [vnteam] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResellerProductCharge](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PartyID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[ResellerID] [int] NOT NULL,
	[FromYearMonth] [int] NOT NULL,
	[ToYearMonth] [int] NOT NULL,
	[ChargeRate] [money] NOT NULL,
 CONSTRAINT [PK_ResellerProductCharge] PRIMARY KEY CLUSTERED 
(
	[PartyID] ASC,
	[ProductID] ASC,
	[ResellerID] ASC,
	[FromYearMonth] ASC,
	[ToYearMonth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [licensee_table]
) ON [licensee_table]

GO
GRANT SELECT ON [dbo].[ResellerProductCharge] TO [bodbAdminNet] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResellerProductChargeByDateRange](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PartyID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[ResellerID] [int] NOT NULL,
	[FromDate] [smalldatetime] NOT NULL,
	[ToDate] [smalldatetime] NOT NULL,
	[ChargeRate] [money] NOT NULL,
 CONSTRAINT [PK_ResellerProductChargeByDateRange] PRIMARY KEY CLUSTERED 
(
	[PartyID] ASC,
	[ProductID] ASC,
	[ResellerID] ASC,
	[FromDate] ASC,
	[ToDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [licensee_table]
) ON [licensee_table]

GO
GRANT SELECT ON [dbo].[ResellerProductChargeByDateRange] TO [bodbAdminNet] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResellerTransactionRate](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ResellerID] [int] NOT NULL,
	[MinTrans] [int] NULL,
	[MaxTrans] [int] NULL,
	[Rate] [money] NULL,
	[FromYearMonth] [int] NULL,
	[ToYearMonth] [int] NULL
) ON [licensee_table]

GO
CREATE CLUSTERED INDEX [ICX_LicenseeID] ON [dbo].[Aff_User_CreatorTransfer]
(
	[LicenseeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [CIX_LA_Function] ON [dbo].[LA_Function]
(
	[FunctionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
GO
CREATE UNIQUE CLUSTERED INDEX [CIX_LA_FunctionParty] ON [dbo].[LA_FunctionParty]
(
	[FunctionID] ASC,
	[PartyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
GO
CREATE UNIQUE CLUSTERED INDEX [CIX_LA_Group] ON [dbo].[LA_Group]
(
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
GO
CREATE UNIQUE CLUSTERED INDEX [CIX_LA_GroupFunction] ON [dbo].[LA_GroupFunction]
(
	[GroupID] ASC,
	[FunctionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
GO
CREATE UNIQUE CLUSTERED INDEX [CIXUM_LA_InvoiceSetting_FromPartyId] ON [dbo].[LA_InvoiceSetting]
(
	[FromPartyId] ASC,
	[ToPartyId] ASC,
	[InvTypeId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [CIX_LA_User] ON [dbo].[LA_User]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
GO
CREATE UNIQUE CLUSTERED INDEX [CIX_LA_UserFunction] ON [dbo].[LA_UserFunction]
(
	[UserID] ASC,
	[FunctionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
GO
CREATE UNIQUE CLUSTERED INDEX [CIX_LA_UserParty] ON [dbo].[LA_UserParty]
(
	[UserID] ASC,
	[PartyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_DATA]
GO
CREATE CLUSTERED INDEX [CIX_LogDate_User] ON [dbo].[OA_UserLog_Login]
(
	[LogDate] ASC,
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_UserLog_data]
GO
CREATE CLUSTERED INDEX [IX_LogDate_CustID] ON [dbo].[OA_UserLog_RunSP]
(
	[CustID] ASC,
	[LogDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_UserLog_index]
GO
CREATE NONCLUSTERED INDEX [IX_ActionID_Custid] ON [dbo].[OA_UserLog_RunSP]
(
	[ActionID] ASC,
	[CustID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_UserLog_index]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [IX_SPname_Custid] ON [dbo].[OA_UserLog_RunSP]
(
	[SPName] ASC,
	[CustID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [OWA_UserLog_index]
GO
ALTER TABLE [dbo].[Aff_FunctionInfo] ADD  CONSTRAINT [DF__Aff_Function__Modif__3EA9ABCB]  DEFAULT (getdate()) FOR [ModifyDate]
GO
ALTER TABLE [dbo].[Aff_FunctionInfo] ADD  CONSTRAINT [DF__Aff_Functtion__Displ__3F9DD004]  DEFAULT ((7)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[Aff_GroupInfo] ADD  CONSTRAINT [DF_Aff_GroupInfo_GroupName]  DEFAULT ('') FOR [GroupName]
GO
ALTER TABLE [dbo].[Aff_GroupInfo] ADD  CONSTRAINT [DF_Aff_GroupInfo_GroupDesc]  DEFAULT ('') FOR [GroupDesc]
GO
ALTER TABLE [dbo].[Aff_GroupInfo] ADD  CONSTRAINT [DF_Aff_GroupInfo_ModifyDate]  DEFAULT (getdate()) FOR [ModifyDate]
GO
ALTER TABLE [dbo].[Aff_GroupInfo] ADD  CONSTRAINT [DF_Aff_GroupInfo_DisplayOrder]  DEFAULT ((5)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[Aff_GroupPolicy] ADD  CONSTRAINT [DF_Aff_GroupPolicy_Policy]  DEFAULT ((0)) FOR [Policy]
GO
ALTER TABLE [dbo].[Aff_GroupPolicy] ADD  CONSTRAINT [DF_Aff_GroupPolicy_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Aff_GroupPolicy] ADD  CONSTRAINT [DF_Aff_GroupPolicy_ModifyDate]  DEFAULT (getdate()) FOR [ModifyDate]
GO
ALTER TABLE [dbo].[Aff_On_User] ADD  CONSTRAINT [DF_Aff_On_User_Reload_Time]  DEFAULT (getdate()) FOR [Reload_Time]
GO
ALTER TABLE [dbo].[Aff_On_User] ADD  CONSTRAINT [DF_Aff_On_User_ServerID]  DEFAULT ((0)) FOR [ServerID]
GO
ALTER TABLE [dbo].[Aff_On_User] ADD  CONSTRAINT [DF_Aff_On_User_IP]  DEFAULT (N'') FOR [IP]
GO
ALTER TABLE [dbo].[Aff_On_User] ADD  CONSTRAINT [DF_Aff_On_User_IsKickedOut]  DEFAULT ((0)) FOR [IsKickedOut]
GO
ALTER TABLE [dbo].[Aff_On_User] ADD  CONSTRAINT [DF_Aff_On_User_NetSessionID]  DEFAULT ('') FOR [NetSessionID]
GO
ALTER TABLE [dbo].[Aff_UserPolicy] ADD  CONSTRAINT [DF_Aff_UserPolicy_Policy]  DEFAULT ((0)) FOR [Policy]
GO
ALTER TABLE [dbo].[Aff_UserPolicy] ADD  CONSTRAINT [DF_Aff_UserPolicy_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Aff_UserPolicy] ADD  CONSTRAINT [DF_Aff_UserPolicy_ModifyDate]  DEFAULT (getdate()) FOR [ModifyDate]
GO
ALTER TABLE [dbo].[OA_Functions] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[OA_LogAction] ADD  CONSTRAINT [DF_OA_LogAction_IsInternal]  DEFAULT ((0)) FOR [IsInternal]
GO
ALTER TABLE [dbo].[OA_Menus] ADD  CONSTRAINT [DF__OA_Menus__IsActi__59F03CDF]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[OA_Menus] ADD  CONSTRAINT [DF_OA_Menus_Policy]  DEFAULT ((1)) FOR [Policy]
GO
ALTER TABLE [dbo].[OA_OnUser] ADD  CONSTRAINT [DF_OA_OnUser_reload_time]  DEFAULT (getdate()) FOR [reload_time]
GO
ALTER TABLE [dbo].[OA_OnUser] ADD  CONSTRAINT [DF_OA_OnUser_IP]  DEFAULT (N'') FOR [IP]
GO
ALTER TABLE [dbo].[OA_OnUser] ADD  CONSTRAINT [DF_OA_OnUser_iskickedout]  DEFAULT ((0)) FOR [iskickedout]
GO
ALTER TABLE [dbo].[OA_OnUser] ADD  CONSTRAINT [DF_OA_OnUser_NetSessionID]  DEFAULT ('') FOR [NetSessionID]
GO
ALTER TABLE [dbo].[OA_UserLog_RunSP] ADD  CONSTRAINT [DF_userlog_runSP_logdate]  DEFAULT (getdate()) FOR [LogDate]
GO
ALTER TABLE [dbo].[OA_UserLog_RunSP] ADD  CONSTRAINT [DF_UserLog_RunSP_Duration]  DEFAULT ((0)) FOR [Duration]
GO
ALTER TABLE [dbo].[OAS_LogAction] ADD  CONSTRAINT [DF_OAS_LogAction_IsInternal]  DEFAULT ((0)) FOR [IsInternal]
GO
ALTER TABLE [dbo].[OAS_OnUser] ADD  CONSTRAINT [DF_OAS_OnUser_reload_time]  DEFAULT (getdate()) FOR [reload_time]
GO
ALTER TABLE [dbo].[OAS_OnUser] ADD  CONSTRAINT [DF_OAS_OnUser_IP]  DEFAULT (N'') FOR [IP]
GO
ALTER TABLE [dbo].[OAS_OnUser] ADD  CONSTRAINT [DF_OAS_OnUser_iskickedout]  DEFAULT ((0)) FOR [iskickedout]
GO
ALTER TABLE [dbo].[OAS_OnUser] ADD  CONSTRAINT [DF_OAS_OnUser_NetSessionID]  DEFAULT ('') FOR [NetSessionID]
GO
ALTER TABLE [dbo].[OAS_UserLog_RunSP] ADD  CONSTRAINT [DF_OAS_UserLog_RunSP_LogDate]  DEFAULT (getdate()) FOR [LogDate]
GO
ALTER TABLE [dbo].[OAS_UserLog_RunSP] ADD  CONSTRAINT [DF_OAS_UserLog_RunSP_Duration]  DEFAULT ((0)) FOR [Duration]
GO
ALTER TABLE [dbo].[OAS_Users] ADD  DEFAULT ((0)) FOR [IsTest]
GO
ALTER TABLE [dbo].[ResellerProductCharge] ADD  CONSTRAINT [DF_ResellerProductCharge_ChargeRate]  DEFAULT ((0)) FOR [ChargeRate]
GO
ALTER TABLE [dbo].[ResellerProductChargeByDateRange] ADD  CONSTRAINT [DF_ResellerProductChargeByDateRange_ChargeRate]  DEFAULT ((0)) FOR [ChargeRate]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1: Hosting Fees, 2: Waive' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LA_HostingFeesSetting', @level2type=N'COLUMN',@level2name=N'SettingType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Use in Waive setting, store ChargeId of Hosting Fees' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LA_HostingFeesSetting', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Store "Hosting"' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LA_HostingFeesSetting', @level2type=N'COLUMN',@level2name=N'ProductName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'store ProductId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LA_HostingFeesSetting', @level2type=N'COLUMN',@level2name=N'BasedMinimunFees'
GO
