/*
	Task: Prepare DB schema add tables to replication
	Run @ DBTRANS
*/

USE [CustDB]
GO

CREATE TABLE [dbo].[CustProductStatus](
	[CustID] [int] NOT NULL,
	[bitmapHasSynced] [binary](32) NOT NULL,
	[bitmapIsHidden] [binary](32) NOT NULL,
	[bitmapIsDisabled] [binary](32) NOT NULL,
	[SuspendInfo] [tinyint] NULL,
	[Locked] [tinyint] NULL,
	[CloseInfo] [tinyint] NULL,
 CONSTRAINT [CIX_custid] PRIMARY KEY CLUSTERED 
(
	[CustID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [table_customer]
) ON [table_customer]
GO

GRANT SELECT ON [dbo].[CustProductStatus] TO [bodbDownlineNet] AS [dbo]
GO

GRANT SELECT ON [dbo].[CustProductStatus] TO [bodbDownlineNetView] AS [dbo]
GO

ALTER TABLE [dbo].[CustProductStatus] ADD  CONSTRAINT [DF_CustPRoductStatus_bitmapHasSynced]  DEFAULT (0x00) FOR [bitmapHasSynced]
GO

ALTER TABLE [dbo].[CustProductStatus] ADD  CONSTRAINT [DF_CustPRoductStatus_bitmapIsHidden]  DEFAULT (0x00) FOR [bitmapIsHidden]
GO

ALTER TABLE [dbo].[CustProductStatus] ADD  CONSTRAINT [DF_CustPRoductStatus_bitmapIsDisabled]  DEFAULT (0x00) FOR [bitmapIsDisabled]
GO

ALTER TABLE [dbo].[CustProductStatus] ADD  CONSTRAINT [DF_CustProductStatus_SuspendInfo]  DEFAULT ((0)) FOR [SuspendInfo]
GO

ALTER TABLE [dbo].[CustProductStatus] ADD  CONSTRAINT [DF_CustProductStatus_Locked]  DEFAULT ((0)) FOR [Locked]
GO

ALTER TABLE [dbo].[CustProductStatus] ADD  CONSTRAINT [DF_CustProductStatus_CloseInfo]  DEFAULT ((0)) FOR [CloseInfo]
GO



--==============================================================================
CREATE TABLE [dbo].[ProductSettingDetail](
	[SettingType] [smallint] NOT NULL,
	[SportType] [smallint] NOT NULL,
	[BetType] [smallint] NOT NULL,
	[IsLive] [bit] NOT NULL,
	[ProductID] [tinyint] NOT NULL,
	[MaxPT] [smallmoney] NULL,
	[MaxDiscount] [decimal](9, 8) NULL,
	[IsSync] [bit] NULL,
	[IsHidden] [bit] NULL,
	[IsDisabled] [bit] NULL,
	[SettingLevel] [tinyint] NULL,
	[DisplayOrder] [tinyint] NOT NULL,
	[SettingStatus] [tinyint] NULL,
	[IntervalValue] [decimal](19, 8) NULL,
	[RealProductId] [tinyint] NOT NULL,
	[MaxChoice] [tinyint] NULL,
 CONSTRAINT [PK_ProductSettingDetail] PRIMARY KEY CLUSTERED 
(
	[SettingType] ASC,
	[SportType] ASC,
	[BetType] ASC,
	[IsLive] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
) ON [DATA]
GO

ALTER TABLE [dbo].[ProductSettingDetail] ADD  CONSTRAINT [DF_ProductSettingDetail_MaxPT]  DEFAULT ((90)) FOR [MaxPT]
GO

ALTER TABLE [dbo].[ProductSettingDetail] ADD  CONSTRAINT [DF_ProductSettingDetail_MaxDiscount]  DEFAULT ((0.01)) FOR [MaxDiscount]
GO

ALTER TABLE [dbo].[ProductSettingDetail] ADD  CONSTRAINT [DF_ProductSettingDetail_IsSync]  DEFAULT ((0)) FOR [IsSync]
GO

ALTER TABLE [dbo].[ProductSettingDetail] ADD  CONSTRAINT [DF_ProductSettingDetail_IsHidden]  DEFAULT ((1)) FOR [IsHidden]
GO

ALTER TABLE [dbo].[ProductSettingDetail] ADD  CONSTRAINT [DF_ProductSettingDetail_IsDisabled]  DEFAULT ((0)) FOR [IsDisabled]
GO

ALTER TABLE [dbo].[ProductSettingDetail] ADD  CONSTRAINT [DF_ProductSettingDetail_DisplayOrder]  DEFAULT ((0)) FOR [DisplayOrder]
GO

ALTER TABLE [dbo].[ProductSettingDetail] ADD  CONSTRAINT [DF_ProductSettingDetail_SettingStatus]  DEFAULT ((0)) FOR [SettingStatus]
GO


--==============================================================================

CREATE TABLE [dbo].[ProductStatusProfile](
	[Sporttype] [smallint] NOT NULL,
	[Bettype] [smallint] NOT NULL,
	[bitmapOrder] [tinyint] NOT NULL,
 CONSTRAINT [PK_ProductStatusProfile] PRIMARY KEY CLUSTERED 
(
	[Sporttype] ASC,
	[Bettype] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
) ON [DATA]
GO


--==============================================================================

CREATE TABLE [dbo].[ProductStatusSiteCurrency](
	[SportType] [smallint] NOT NULL,
	[BetType] [int] NOT NULL,
	[Currency] [int] NOT NULL,
	[SiteID] [int] NOT NULL,
	[IsHidden] [bit] NOT NULL,
	[IsDisabled] [bit] NOT NULL,
	[HasSynced] [bit] NOT NULL,
 CONSTRAINT [PK_ProductStatusSiteCurrency] PRIMARY KEY CLUSTERED 
(
	[SportType] ASC,
	[BetType] ASC,
	[Currency] ASC,
	[SiteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
) ON [DATA]
GO

ALTER TABLE [dbo].[ProductStatusSiteCurrency] ADD  CONSTRAINT [DF_ProductStatusSiteCurrency_HasSynced]  DEFAULT ((1)) FOR [HasSynced]
GO


--=================================================================================

CREATE TABLE [dbo].[Acc_CustDirect](
	[custid] [int] NOT NULL,
	[roleid] [tinyint] NOT NULL,
 CONSTRAINT [PK_Acc_CustDirect] PRIMARY KEY CLUSTERED 
(
	[custid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
) ON [DATA]
GO

GRANT SELECT ON [dbo].[Acc_CustDirect] TO [bodbAdminNet] AS [dbo]
GO

CREATE NONCLUSTERED INDEX [IX_Acc_CustDirect_RoleID] ON [dbo].[Acc_CustDirect]
(
	[roleid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [table_customer]
GO


--================================================================================================

CREATE TABLE [dbo].[Site](
	[siteid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[site] [nvarchar](50) NULL,
	[type] [nvarchar](50) NULL,
	[spreada] [float] NULL,
	[spreadb] [float] NULL,
	[spreadc] [float] NULL,
	[spreadd] [float] NULL,
	[spreade] [float] NULL,
	[spreadf] [float] NULL,
	[ServerID] [int] NOT NULL,
	[isLicensee] [bit] NOT NULL,
	[isActive] [bit] NOT NULL,
	[isDeposit] [bit] NOT NULL,
	[SpecialGroup] [tinyint] NULL,
	[BlockNewCust] [bit] NULL,
	[UnblockTime] [varchar](50) NULL,
 CONSTRAINT [PK_Site] PRIMARY KEY NONCLUSTERED 
(
	[siteid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Event_index]
) ON [Event_table]
GO

CREATE UNIQUE CLUSTERED INDEX [IX_Site] ON [dbo].[Site]
(
	[site] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [Event_table]
GO

ALTER TABLE [dbo].[Site] ADD  CONSTRAINT [DF_Site_ServerID]  DEFAULT ((0)) FOR [ServerID]
GO

ALTER TABLE [dbo].[Site] ADD  CONSTRAINT [DF_Site_isLicensee]  DEFAULT ((0)) FOR [isLicensee]
GO

ALTER TABLE [dbo].[Site] ADD  CONSTRAINT [DF_Site_isActive]  DEFAULT ((1)) FOR [isActive]
GO

ALTER TABLE [dbo].[Site] ADD  CONSTRAINT [DF_Site_isDeposit]  DEFAULT ((0)) FOR [isDeposit]
GO

ALTER TABLE [dbo].[Site] ADD  CONSTRAINT [DF_Site_SpecialGroup]  DEFAULT ((0)) FOR [SpecialGroup]
GO

ALTER TABLE [dbo].[Site] ADD  CONSTRAINT [DF_Site_BlockNewCust]  DEFAULT ((0)) FOR [BlockNewCust]
GO