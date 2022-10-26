 /*
	Task: Prepare DB schema add object to replication (DBCUST)
	
*/

--===========================================================
/*
Add table [SportBettypeSettingMatrix] to pub [CustDB_DR_sync] pub
* Related servers: DBCUST, DB06x, DBTP10C
*/
-- ==> Servers/DB: 
-- * KBT DBCUST.CustDB, DB06x/DBTP10C.bodb02
-- * AWS: DBTKO.bodb02, DBCUST.CustDB, DB061.bodb02



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

ALTER TABLE [dbo].[SportBettypeSettingMatrix] ADD  CONSTRAINT [DF_SportBettypeSettingMatrix_isActive]  DEFAULT ((0)) FOR [isActive]
GO

ALTER TABLE [dbo].[SportBettypeSettingMatrix] ADD  CONSTRAINT [DF_SportBettypeSettingMatrix_isLivePT]  DEFAULT ((0)) FOR [isLivePT]
GO

ALTER TABLE [dbo].[SportBettypeSettingMatrix] ADD  CONSTRAINT [SportBettypeSettingMatrix_IsLiveComm]  DEFAULT ((0)) FOR [IsLiveComm]
GO

ALTER TABLE [dbo].[SportBettypeSettingMatrix] ADD  CONSTRAINT [SportBettypeSettingMatrix_IsLiveBetSetting]  DEFAULT ((0)) FOR [IsLiveBetSetting]
GO