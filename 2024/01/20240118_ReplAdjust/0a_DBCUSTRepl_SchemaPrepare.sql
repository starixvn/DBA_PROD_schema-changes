/*
	Task: prepare schema for add replication
	Check and run to create table on DBCust/CustDB and all replicated servers in related pubs
	Summary:
		DBCUST - Add tables to repl for DR sync (CustDB_DR_Sync - DB06x, DBTP10C):
		   CustDangerWinlossInfo (no PK yet!)
		   CustCategoryHistory (identity)
		   CustomerClassPolicy (identity)
		   WinLimit_CustWinlostGame
		DBCUST - Add in-house repl tables to pub DBTP_DR_sync for DR sync (DB06x, DBTP10C):
		   CustomerClassUtilityOffer (identity)
		   CustomerClassUtilityOffer_UAT
		   CustomerClassUtilityOfferDetail (identity)
		   CustomerClassUtilityOfferDetail_UAT
		   Dep_CustBonusSharing
		   Dep_ProductStakeLevelGroup
		   DomainManagement (identity)
		   ProductStakeLevelGroup
		   SportBettypeSettingMatrix
		   CustomerClassNonSports (identity)
		   CustomerClassNonSportsDetail
		   CustomerClassNonSports_UAT (identity)
		   CustomerClassNonSportsDetail_UAT
*/


--================ Non-repl tables ===================================================
--===================================================================================
 CREATE TABLE [dbo].[CustDangerWinlossInfo](
	[CustID] [int] NOT NULL,
	[SportType] [smallint] NOT NULL,
	[IsParlay] [bit] NULL,
	[Winloss] [money] NULL,
	[CreatedDate] [datetime] NULL,
	[BatchNo] [int] NULL
) ON [DATA]
GO

CREATE CLUSTERED INDEX [CIX_CustDangerWinlossInfo] ON [dbo].[CustDangerWinlossInfo]
(
	[CustID] ASC,
	[BatchNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
GO

CREATE NONCLUSTERED INDEX [IX_CreatedDate] ON [dbo].[CustDangerWinlossInfo]
(
	[CreatedDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
GO

CREATE NONCLUSTERED INDEX [IX_CustDangerWinlossInfo_BatchNo] ON [dbo].[CustDangerWinlossInfo]
(
	[BatchNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
GO 

------------------------------

CREATE TABLE [dbo].[CustCategoryHistory](
	[LogID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[custid] [int] NOT NULL,
	[CategoryID] [smallint] NULL,
	[CustomerClass] [smallint] NULL,
	[CreatedDate] [datetime] NULL,
	[OldCustomerClass] [smallint] NULL,
 CONSTRAINT [PK_CustCategoryHistory] PRIMARY KEY CLUSTERED 
(
	[LogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [table_customer]
) ON [table_customer]
GO

CREATE NONCLUSTERED INDEX [IX_CustCategoryHistory_CreatedDate] ON [dbo].[CustCategoryHistory]
(
	[CreatedDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [table_customer]
GO

------------------------------
CREATE TABLE [dbo].[CustomerClassPolicy](
	[PolicyID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[SportType] [tinyint] NOT NULL,
	[CustomerClass] [smallint] NOT NULL,
	[Liveindicator] [bit] NOT NULL,
	[isLicensee] [bit] NOT NULL,
	[SiteID] [varchar](7) NULL,
	[LeagueGroupID] [smallint] NOT NULL,
	[DiffBalanceRatio] [decimal](9, 4) NULL,
	[BetDelay] [decimal](9, 4) NULL,
	[NextBetInterval] [smallint] NULL,
	[MaxPerMatch] [int] NULL,
	[MaxBet] [int] NULL,
	[Enabled] [bit] NOT NULL,
	[LastModifiedUser] [int] NULL,
	[LastModifiedTime] [datetime] NULL,
	[Creator] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Platform] [tinyint] NULL,
	[CurrencyID] [tinyint] NULL,
	[RepeatedBets] [tinyint] NULL,
	[MaxWinPerDay] [int] NULL,
	[MinBet] [int] NULL,
	[SeizeBetTicket] [tinyint] NULL,
	[AgentBetInterval] [smallint] NULL,
	[DisableParlay] [bit] NOT NULL,
	[SiteBetInterval] [smallint] NULL,
	[AcceptBetDelay] [smallint] NULL,
	[SeizeBetBalOnly] [bit] NOT NULL,
	[ParlayBoost] [bit] NOT NULL,
 CONSTRAINT [PK_CustomerClassPolicy] PRIMARY KEY NONCLUSTERED 
(
	[PolicyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [table_customer]
) ON [table_customer]
GO


CREATE CLUSTERED INDEX [CIXM_SportType_CustomerClass_Liveindicator] ON [dbo].[CustomerClassPolicy]
(
	[SportType] ASC,
	[CustomerClass] ASC,
	[Liveindicator] ASC,
	[isLicensee] ASC,
	[LeagueGroupID] ASC,
	[SiteID] ASC,
	[Platform] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [table_customer]
GO

ALTER TABLE [dbo].[CustomerClassPolicy] ADD  CONSTRAINT [DF_CustomerClassPolicy_LeagueGroupID]  DEFAULT ((0)) FOR [LeagueGroupID]
GO

ALTER TABLE [dbo].[CustomerClassPolicy] ADD  CONSTRAINT [DF_CustomerClassPolicy_Enabled]  DEFAULT ((0)) FOR [Enabled]
GO

ALTER TABLE [dbo].[CustomerClassPolicy] ADD  CONSTRAINT [DF_CustomerClassPolicy_DisableParlay]  DEFAULT ((0)) FOR [DisableParlay]
GO

ALTER TABLE [dbo].[CustomerClassPolicy] ADD  CONSTRAINT [DF_CustomerClassPolicy_SeizeBetBalOnly]  DEFAULT ((0)) FOR [SeizeBetBalOnly]
GO

ALTER TABLE [dbo].[CustomerClassPolicy] ADD  CONSTRAINT [DF_CustomerClassPolicy_ParlayBoost]  DEFAULT ((0)) FOR [ParlayBoost]
GO

-----------------------------------------

CREATE TABLE [dbo].[WinLimit_CustWinlostGame](
	[CustId] [int] NOT NULL,
	[WinlostDate] [smalldatetime] NOT NULL,
	[BetType] [smallint] NOT NULL,
	[Winlost] [money] NULL,
 CONSTRAINT [PK_WinLimit_CustWinlostGame] PRIMARY KEY CLUSTERED 
(
	[CustId] ASC,
	[BetType] ASC,
	[WinlostDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [WinlimitSetting_Tables]
) ON [WinlimitSetting_Tables]
GO




--================ In-house repl tables ===================================================
--===================================================================================
CREATE TABLE [dbo].[CustomerClassUtilityOffer](
	[PolicyID] [smallint] IDENTITY(1,1) NOT NULL,
	[PolicyTitle] [varchar](500) NOT NULL,
	[UtilityOffering] [smallint] NULL,
	[IsTest] [tinyint] NOT NULL,
	[LastModifiedUser] [int] NULL,
	[LastModifiedTime] [datetime] NULL,
	[RepUpdateTime] [datetime2](7) NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_CustomerClassUtilityOffer] PRIMARY KEY CLUSTERED 
(
	[PolicyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO

GRANT ALTER ON [dbo].[CustomerClassUtilityOffer] TO [repl_ap] AS [dbo]
GO

/****** Object:  Index [IX_CustomerClassUtilityOffer_RepUpdateTime]    Script Date: 1/16/2024 3:11:23 AM ******/
CREATE NONCLUSTERED INDEX [IX_CustomerClassUtilityOffer_RepUpdateTime] ON [dbo].[CustomerClassUtilityOffer]
(
	[RepUpdateTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
GO

ALTER TABLE [dbo].[CustomerClassUtilityOffer] ADD  CONSTRAINT [DF_CustomerClassUtilityOffer_RepUpdateTime]  DEFAULT (sysdatetime()) FOR [RepUpdateTime]
GO

ALTER TABLE [dbo].[CustomerClassUtilityOffer] ADD  CONSTRAINT [DF_CustomerClassUtilityOffer_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO

--------------------

CREATE TABLE [dbo].[CustomerClassUtilityOffer_UAT](
	[PolicyID] [smallint] IDENTITY(1,1) NOT NULL,
	[PolicyTitle] [varchar](500) NOT NULL,
	[UtilityOffering] [smallint] NULL,
	[IsTest] [tinyint] NOT NULL,
	[LastModifiedUser] [int] NULL,
	[LastModifiedTime] [datetime] NULL,
	[RepUpdateTime] [datetime2](7) NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_CustomerClassUtilityOffer_UAT] PRIMARY KEY CLUSTERED 
(
	[PolicyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO

GRANT ALTER ON [dbo].[CustomerClassUtilityOffer_UAT] TO [repl_ap] AS [dbo]
GO

/****** Object:  Index [IX_CustomerClassUtilityOffer_UAT_RepUpdateTime]    Script Date: 1/16/2024 3:11:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_CustomerClassUtilityOffer_UAT_RepUpdateTime] ON [dbo].[CustomerClassUtilityOffer_UAT]
(
	[RepUpdateTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
GO

ALTER TABLE [dbo].[CustomerClassUtilityOffer_UAT] ADD  CONSTRAINT [DF_CustomerClassUtilityOffer_UAT_RepUpdateTime]  DEFAULT (sysdatetime()) FOR [RepUpdateTime]
GO

ALTER TABLE [dbo].[CustomerClassUtilityOffer_UAT] ADD  CONSTRAINT [DF_CustomerClassUtilityOffer_UAT_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO

----------------


CREATE TABLE [dbo].[CustomerClassUtilityOfferDetail](
	[PolicyID] [smallint] NOT NULL,
	[SiteID] [int] NOT NULL,
	[Currency] [int] NOT NULL,
	[CustomerClass] [smallint] NOT NULL,
	[RepUpdateTime] [datetime2](7) NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_CustomerClassUtilityOfferDetail] PRIMARY KEY CLUSTERED 
(
	[Currency] ASC,
	[CustomerClass] ASC,
	[SiteID] ASC,
	[PolicyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO

/****** Object:  Index [IX_CustomerClassUtilityOfferDetail_PolicyID]    Script Date: 1/16/2024 3:12:00 AM ******/
CREATE NONCLUSTERED INDEX [IX_CustomerClassUtilityOfferDetail_PolicyID] ON [dbo].[CustomerClassUtilityOfferDetail]
(
	[PolicyID] ASC,
	[isDeleted] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
GO

/****** Object:  Index [IX_CustomerClassUtilityOfferDetail_RepUpdateTime]    Script Date: 1/16/2024 3:12:00 AM ******/
CREATE NONCLUSTERED INDEX [IX_CustomerClassUtilityOfferDetail_RepUpdateTime] ON [dbo].[CustomerClassUtilityOfferDetail]
(
	[RepUpdateTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
GO

ALTER TABLE [dbo].[CustomerClassUtilityOfferDetail] ADD  CONSTRAINT [DF_CustomerClassUtilityOfferDetail_RepUpdateTime]  DEFAULT (sysdatetime()) FOR [RepUpdateTime]
GO

ALTER TABLE [dbo].[CustomerClassUtilityOfferDetail] ADD  CONSTRAINT [DF_CustomerClassUtilityOfferDetail_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO

----------------------

CREATE TABLE [dbo].[CustomerClassUtilityOfferDetail_UAT](
	[PolicyID] [smallint] NOT NULL,
	[SiteID] [int] NOT NULL,
	[Currency] [int] NOT NULL,
	[CustomerClass] [smallint] NOT NULL,
	[RepUpdateTime] [datetime2](7) NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_CustomerClassUtilityOfferDetail_UAT] PRIMARY KEY CLUSTERED 
(
	[Currency] ASC,
	[CustomerClass] ASC,
	[SiteID] ASC,
	[PolicyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO

/****** Object:  Index [IX_CustomerClassUtilityOfferDetail_UAT_PolicyID]    Script Date: 1/16/2024 3:12:23 AM ******/
CREATE NONCLUSTERED INDEX [IX_CustomerClassUtilityOfferDetail_UAT_PolicyID] ON [dbo].[CustomerClassUtilityOfferDetail_UAT]
(
	[PolicyID] ASC,
	[isDeleted] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
GO

/****** Object:  Index [IX_CustomerClassUtilityOfferDetail_UAT_RepUpdateTime]    Script Date: 1/16/2024 3:12:23 AM ******/
CREATE NONCLUSTERED INDEX [IX_CustomerClassUtilityOfferDetail_UAT_RepUpdateTime] ON [dbo].[CustomerClassUtilityOfferDetail_UAT]
(
	[RepUpdateTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
GO

ALTER TABLE [dbo].[CustomerClassUtilityOfferDetail_UAT] ADD  CONSTRAINT [DF_CustomerClassUtilityOfferDetail_UAT_RepUpdateTime]  DEFAULT (sysdatetime()) FOR [RepUpdateTime]
GO

ALTER TABLE [dbo].[CustomerClassUtilityOfferDetail_UAT] ADD  CONSTRAINT [DF_CustomerClassUtilityOfferDetail_UAT_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO


-----------------------------------------
CREATE TABLE [dbo].[Dep_CustBonusSharing](
	[CustID] [int] NOT NULL,
	[BonusSharingRate] [money] NOT NULL,
	[FromDate] [date] NOT NULL,
	[ToDate] [date] NOT NULL,
	[RepUpdateTime] [datetime2](7) NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Dep_CustBonusSharing] PRIMARY KEY CLUSTERED 
(
	[CustID] ASC,
	[FromDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO

/****** Object:  Index [IX_Dep_CustBonusSharing_RepUpdateTime]    Script Date: 1/16/2024 3:13:05 AM ******/
CREATE NONCLUSTERED INDEX [IX_Dep_CustBonusSharing_RepUpdateTime] ON [dbo].[Dep_CustBonusSharing]
(
	[RepUpdateTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
GO

ALTER TABLE [dbo].[Dep_CustBonusSharing] ADD  CONSTRAINT [DF_Dep_CustBonusSharing_ToDate]  DEFAULT ('9999/12/31') FOR [ToDate]
GO

ALTER TABLE [dbo].[Dep_CustBonusSharing] ADD  CONSTRAINT [DF_Dep_CustBonusSharing_RepUpdateTime]  DEFAULT (sysdatetime()) FOR [RepUpdateTime]
GO

ALTER TABLE [dbo].[Dep_CustBonusSharing] ADD  CONSTRAINT [DF_Dep_CustBonusSharing_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO

-----------------
CREATE TABLE [dbo].[Dep_ProductStakeLevelGroup](
	[Sporttype] [smallint] NOT NULL,
	[GameGroupID] [tinyint] NOT NULL,
	[MinBet] [money] NOT NULL,
	[MaxBet] [money] NOT NULL,
	[LicenseeGroupID] [tinyint] NOT NULL,
	[SiteID] [int] NOT NULL,
	[Remark] [varchar](1000) NULL,
	[RepUpdateTime] [datetime2](7) NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Dep_ProductStakeLevelGroup] PRIMARY KEY CLUSTERED 
(
	[Sporttype] ASC,
	[GameGroupID] ASC,
	[LicenseeGroupID] ASC,
	[SiteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [BetRestriction]
) ON [BetRestriction]
GO

/****** Object:  Index [IX_Dep_ProductStakeLevelGroup_RepUpdateTime]    Script Date: 1/16/2024 3:14:12 AM ******/
CREATE NONCLUSTERED INDEX [IX_Dep_ProductStakeLevelGroup_RepUpdateTime] ON [dbo].[Dep_ProductStakeLevelGroup]
(
	[RepUpdateTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [BetRestriction]
GO

ALTER TABLE [dbo].[Dep_ProductStakeLevelGroup] ADD  CONSTRAINT [DF_Dep_ProductStakeLevelGroup_SiteID]  DEFAULT ((0)) FOR [SiteID]
GO

ALTER TABLE [dbo].[Dep_ProductStakeLevelGroup] ADD  CONSTRAINT [DF_Dep_ProductStakeLevelGroup_RepUpdateTime]  DEFAULT (sysdatetime()) FOR [RepUpdateTime]
GO

ALTER TABLE [dbo].[Dep_ProductStakeLevelGroup] ADD  CONSTRAINT [DF_Dep_ProductStakeLevelGroup_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
------------------------------------------------------------------------------------------------


CREATE TABLE [dbo].[DomainManagement](
	[DomainID] [smallint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Domain] [varchar](50) NOT NULL,
	[System] [varchar](20) NOT NULL,
	[Site] [varchar](500) NOT NULL,
	[BrandName] [varchar](10) NULL,
	[Status] [tinyint] NOT NULL,
	[ExpiredDate] [datetime] NULL,
	[LastUpdateTime] [datetime] NOT NULL,
	[RestrictedCountries] [varchar](4000) NULL,
	[Remark] [nvarchar](2000) NULL,
	[isDeleted] [bit] NOT NULL,
	[RepUpdateTime] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_DomainManagement] PRIMARY KEY CLUSTERED 
(
	[DomainID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO

/****** Object:  Index [IX_DomainManagement_RepUpdateTime]    Script Date: 1/16/2024 3:14:47 AM ******/
CREATE NONCLUSTERED INDEX [IX_DomainManagement_RepUpdateTime] ON [dbo].[DomainManagement]
(
	[RepUpdateTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
GO

ALTER TABLE [dbo].[DomainManagement] ADD  CONSTRAINT [DF_DomainManagement_LastUpdateTime]  DEFAULT (getdate()) FOR [LastUpdateTime]
GO

ALTER TABLE [dbo].[DomainManagement] ADD  CONSTRAINT [DF_DomainManagement_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO

ALTER TABLE [dbo].[DomainManagement] ADD  CONSTRAINT [DF_DomainManagement_RepUpdateTime]  DEFAULT (sysdatetime()) FOR [RepUpdateTime]
GO

-------------------------

CREATE TABLE [dbo].[ProductStakeLevelGroup](
	[Sporttype] [smallint] NOT NULL,
	[GameGroupID] [tinyint] NOT NULL,
	[MinBet] [money] NOT NULL,
	[MaxBet] [money] NOT NULL,
	[CreditGroupID] [tinyint] NOT NULL,
	[Remark] [varchar](1000) NULL,
	[RepUpdateTime] [datetime2](7) NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_ProductStakeLevelGroup] PRIMARY KEY CLUSTERED 
(
	[Sporttype] ASC,
	[GameGroupID] ASC,
	[CreditGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [BetRestriction]
) ON [BetRestriction]
GO

/****** Object:  Index [IX_ProductStakeLevelGroup_RepUpdateTime]    Script Date: 1/16/2024 3:15:30 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProductStakeLevelGroup_RepUpdateTime] ON [dbo].[ProductStakeLevelGroup]
(
	[RepUpdateTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [BetRestriction]
GO

ALTER TABLE [dbo].[ProductStakeLevelGroup] ADD  CONSTRAINT [DF_ProductStakeLevelGroup_RepUpdateTime]  DEFAULT (sysdatetime()) FOR [RepUpdateTime]
GO

ALTER TABLE [dbo].[ProductStakeLevelGroup] ADD  CONSTRAINT [DF_ProductStakeLevelGroup_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
-------------------------------------------------------


CREATE TABLE [dbo].[SportBettypeSettingMatrix](
	[SportType] [smallint] NOT NULL,
	[BetType] [int] NOT NULL,
	[isLicensee] [bit] NOT NULL,
	[isLive] [bit] NOT NULL,
	[Site] [varchar](50) NOT NULL,
	[isActive] [bit] NOT NULL,
	[SportTypeRefPT] [smallint] NULL,
	[BetTypeRefPT] [int] NULL,
	[isLivePT] [bit] NOT NULL,
	[TablePT] [varchar](50) NULL,
	[SportTypeRefComm] [smallint] NULL,
	[BetTypeRefComm] [int] NULL,
	[TableComm] [varchar](50) NULL,
	[SportTypeRefBetSetting] [smallint] NULL,
	[BetTypeRefBetSetting] [int] NULL,
	[TableBetSetting] [varchar](50) NULL,
	[IsLiveComm] [bit] NOT NULL,
	[IsLiveBetSetting] [bit] NOT NULL,
	[TableBettrans] [varchar](100) NULL,
	[RealProductId] [tinyint] NULL,
	[SporttypeRefWinlossLimit] [smallint] NULL,
	[BettypeRefWinlossLimit] [smallint] NULL,
	[ProductID] [tinyint] NULL,
	[isDeleted] [bit] NULL,
	[RepUpdateTime] [datetime2](7) NULL,
 CONSTRAINT [PK_SportBettypeSettingMatrix] PRIMARY KEY CLUSTERED 
(
	[BetType] ASC,
	[SportType] ASC,
	[isLicensee] ASC,
	[isLive] ASC,
	[Site] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO

GRANT SELECT ON [dbo].[SportBettypeSettingMatrix] TO [bodbExtAccNet] AS [dbo]
GO

/****** Object:  Index [IX_SportBettypeSettingMatrix_RepUpdateTime]    Script Date: 1/16/2024 3:16:09 AM ******/
CREATE NONCLUSTERED INDEX [IX_SportBettypeSettingMatrix_RepUpdateTime] ON [dbo].[SportBettypeSettingMatrix]
(
	[RepUpdateTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
GO

ALTER TABLE [dbo].[SportBettypeSettingMatrix] ADD  CONSTRAINT [DF_SportBettypeSettingMatrix_isActive]  DEFAULT ((0)) FOR [isActive]
GO

ALTER TABLE [dbo].[SportBettypeSettingMatrix] ADD  CONSTRAINT [DF_SportBettypeSettingMatrix_isLivePT]  DEFAULT ((0)) FOR [isLivePT]
GO

ALTER TABLE [dbo].[SportBettypeSettingMatrix] ADD  CONSTRAINT [SportBettypeSettingMatrix_IsLiveComm]  DEFAULT ((0)) FOR [IsLiveComm]
GO

ALTER TABLE [dbo].[SportBettypeSettingMatrix] ADD  CONSTRAINT [SportBettypeSettingMatrix_IsLiveBetSetting]  DEFAULT ((0)) FOR [IsLiveBetSetting]
GO

ALTER TABLE [dbo].[SportBettypeSettingMatrix] ADD  CONSTRAINT [DF_SportBettypeSettingMatrix_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO

ALTER TABLE [dbo].[SportBettypeSettingMatrix] ADD  CONSTRAINT [DF_SportBettypeSettingMatrix_RepUpdateTime]  DEFAULT (sysdatetime()) FOR [RepUpdateTime]
GO



--==================================================================
--------CC new tables----------------------
--------------------------------------------------------
CREATE TABLE [dbo].[CustomerClassNonSports](
	[PolicyID] [int] IDENTITY(1,1) NOT NULL,
	[PolicyTitle] [varchar](500)  NOT NULL,
	[MaxBet] [int] NULL,
	[Products] [binary](32) NULL,
	[Enable] [bit]  NOT NULL,
	[IsTest] [TINYINT]  NOT NULL,
	[LastModifiedUser] [int] NULL,
	[LastModifiedTime] [datetime] NULL,
	[RepUpdateTime] [datetime2](7) NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_CustomerClassNonSports] PRIMARY KEY CLUSTERED
(
	[PolicyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [DATA]
) ON [DATA]
GO

ALTER TABLE [dbo].[CustomerClassNonSports] ADD  CONSTRAINT [DF_CustomerClassNonSports_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO

ALTER TABLE [dbo].[CustomerClassNonSports] ADD  CONSTRAINT [DF_CustomerClassNonSports_RepUpdateTime]  DEFAULT (sysdatetime()) FOR [RepUpdateTime]
GO

CREATE NONCLUSTERED INDEX [IX_CustomerClassNonSports_RepUpdateTime] ON [dbo].[CustomerClassNonSports] ( [RepUpdateTime] ASC )
GO

CREATE NONCLUSTERED INDEX [IX_CustomerClassNonSports_Products] ON [dbo].[CustomerClassNonSports] 
(
	[Products] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [DATA]
GO
-----------------------------
CREATE TABLE [dbo].[CustomerClassNonSportsDetail](
	[PolicyID] [int] NOT NULL,
	[SiteID] [int] NOT NULL,
	[CustomerClass] [smallint] NOT NULL,
	[RepUpdateTime] [datetime2](7) NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_CustomerClassNonSportsDetail] PRIMARY KEY CLUSTERED 
(
	[SiteID] ASC,
	[CustomerClass] ASC,
	[PolicyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [DATA]
) ON [DATA]
GO

ALTER TABLE [dbo].[CustomerClassNonSportsDetail] ADD  CONSTRAINT [DF_CustomerClassNonSportsDetail_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO

ALTER TABLE [dbo].[CustomerClassNonSportsDetail] ADD  CONSTRAINT [DF_CustomerClassNonSportsDetail_RepUpdateTime]  DEFAULT (sysdatetime()) FOR [RepUpdateTime]
GO

CREATE NONCLUSTERED INDEX [IX_CustomerClassNonSportsDetail_RepUpdateTime] ON [dbo].[CustomerClassNonSportsDetail] ( [RepUpdateTime] ASC )
GO

CREATE NONCLUSTERED INDEX [IX_CustomerClassNonSportsDetail_PolicyID] ON [dbo].[CustomerClassNonSportsDetail] ( [PolicyID] ASC, [isDeleted] ASC )
GO

--================================= UAT

CREATE TABLE [dbo].[CustomerClassNonSports_UAT](
	[PolicyID] [int] IDENTITY(1,1) NOT NULL,
	[PolicyTitle] [varchar](500)  NOT NULL,
	[MaxBet] [int] NULL,
	[Products] [binary](32) NULL,
	[Enable] [bit]  NOT NULL,
	[IsTest] [TINYINT]  NOT NULL,
	[LastModifiedUser] [int] NULL,
	[LastModifiedTime] [datetime] NULL,
	[RepUpdateTime] [datetime2](7) NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_CustomerClassNonSports_UAT] PRIMARY KEY CLUSTERED
(
	[PolicyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [DATA]
) ON [DATA]
GO

ALTER TABLE [dbo].[CustomerClassNonSports_UAT] ADD  CONSTRAINT [DF_CustomerClassNonSports_UAT_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO

ALTER TABLE [dbo].[CustomerClassNonSports_UAT] ADD  CONSTRAINT [DF_CustomerClassNonSports_UAT_RepUpdateTime]  DEFAULT (sysdatetime()) FOR [RepUpdateTime]
GO

CREATE NONCLUSTERED INDEX [IX_CustomerClassNonSports_UAT_RepUpdateTime] ON [dbo].[CustomerClassNonSports_UAT] ( [RepUpdateTime] ASC )
GO

CREATE NONCLUSTERED INDEX [IX_CustomerClassNonSports_UAT_Products] ON [dbo].[CustomerClassNonSports_UAT] 
(
	[Products] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [DATA]
GO

CREATE TABLE [dbo].[CustomerClassNonSportsDetail_UAT](
	[PolicyID] [int] NOT NULL,
	[SiteID] [int] NOT NULL,
	[CustomerClass] [smallint] NOT NULL,
	[RepUpdateTime] [datetime2](7) NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_CustomerClassNonSportsDetail_UAT] PRIMARY KEY CLUSTERED 
(
	[SiteID] ASC,
	[CustomerClass] ASC,
	[PolicyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [DATA]
) ON [DATA]
GO

ALTER TABLE [dbo].[CustomerClassNonSportsDetail_UAT] ADD  CONSTRAINT [DF_CustomerClassNonSportsDetail_UAT_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO

ALTER TABLE [dbo].[CustomerClassNonSportsDetail_UAT] ADD  CONSTRAINT [DF_CustomerClassNonSportsDetail_UAT_RepUpdateTime]  DEFAULT (sysdatetime()) FOR [RepUpdateTime]
GO

CREATE NONCLUSTERED INDEX [IX_CustomerClassNonSportsDetail_UAT_RepUpdateTime] ON [dbo].[CustomerClassNonSportsDetail_UAT] ( [RepUpdateTime] ASC )
GO

CREATE NONCLUSTERED INDEX [IX_CustomerClassNonSportsDetail_UAT_PolicyID] ON [dbo].[CustomerClassNonSportsDetail_UAT] ( [PolicyID] ASC, [isDeleted] ASC )
GO
