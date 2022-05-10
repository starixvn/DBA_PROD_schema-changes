 /*
	Task: Prepare DB schema add objects to replication
	
*/

--===========================================================
--Run on DBTRANS & all its subs in DBTRANS DBTrans_API_Data pub + related DR servers

USE [bodb02]
GO
CREATE TABLE [dbo].[Sport_Bettype_Reference](
	[Bettype] [int] NOT NULL,
	[Sporttype] [smallint] NOT NULL,
	[isLicensee] [bit] NOT NULL,
	[BettypeRef] [int] NULL,
	[SporttypeRef] [smallint] NULL,
	[isActive] [bit] NULL,
	[Site] [nvarchar](50) NOT NULL,
	[RefTableName] [varchar](50) NULL,
 CONSTRAINT [PK_Sport_Bettype_Reference] PRIMARY KEY CLUSTERED 
(
	[Bettype] ASC,
	[Sporttype] ASC,
	[isLicensee] ASC,
	[Site] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
ALTER TABLE [dbo].[Sport_Bettype_Reference] ADD  CONSTRAINT [DF_Sport_Bettype_Reference_Site]  DEFAULT (N'ALL') FOR [Site]
GO
-------------------------------------------------------------------

USE [bodb02]
GO
CREATE TABLE [dbo].[Sport_Bettype_Reference_Setting](
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
	[StructureVerPT] [varchar](10) NULL,
	[SportTypeRefComm] [smallint] NULL,
	[BetTypeRefComm] [int] NULL,
	[TableComm] [varchar](50) NULL,
	[StructureVerComm] [varchar](10) NULL,
	[SportTypeRefBetSetting] [smallint] NULL,
	[BetTypeRefBetSetting] [int] NULL,
	[TableBetSetting] [varchar](50) NULL,
	[StructureVerBetSetting] [varchar](10) NULL,
	[IsLiveComm] [bit] NOT NULL,
	[IsLiveBetSetting] [bit] NOT NULL,
 CONSTRAINT [PK_Sport_Bettype_Reference_Setting] PRIMARY KEY CLUSTERED 
(
	[BetType] ASC,
	[SportType] ASC,
	[isLicensee] ASC,
	[isLive] ASC,
	[Site] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO

ALTER TABLE [dbo].[Sport_Bettype_Reference_Setting] ADD  CONSTRAINT [DF_Sport_Bettype_Reference_Setting_isActive]  DEFAULT ((0)) FOR [isActive]
GO

ALTER TABLE [dbo].[Sport_Bettype_Reference_Setting] ADD  CONSTRAINT [DF_Sport_Bettype_Reference_Setting_isLivePT]  DEFAULT ((0)) FOR [isLivePT]
GO

ALTER TABLE [dbo].[Sport_Bettype_Reference_Setting] ADD  CONSTRAINT [Sport_Bettype_Reference_Setting_IsLiveComm]  DEFAULT ((0)) FOR [IsLiveComm]
GO

ALTER TABLE [dbo].[Sport_Bettype_Reference_Setting] ADD  CONSTRAINT [Sport_Bettype_Reference_Setting_IsLiveBetSetting]  DEFAULT ((0)) FOR [IsLiveBetSetting]
GO