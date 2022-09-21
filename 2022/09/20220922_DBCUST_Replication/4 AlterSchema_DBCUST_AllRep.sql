/*
	Task: Alter Schema: Renaming + change data type
	Run scripts in correct SERVER/GROUPS in comments below
*/


--=======================================================
-- Rename objects on CustDB_CustSetting Publication - Run on DBCUST.custdb, DB06x/DTP10C/DBTKO.bodb02 (Group 4. All CS + DBTKO)
--  Tables
EXEC sp_rename 'CustWinLimit','DEL_CustWinLimit'
EXEC sp_rename 'Dep_CustSetting','DEL_Dep_CustSetting'
EXEC sp_rename 'Dep_CustSetting3rd','DEL_Dep_CustSetting3rd'
EXEC sp_rename 'Dep_CustBetLimitGameType_Special','DEL_Dep_CustBetLimitGameType_Special'
--   Columns
EXEC sp_rename 'CustSetting.minbet','DEL_minbet', 'COLUMN'
EXEC sp_rename 'CustSetting.maxbet','DEL_maxbet', 'COLUMN'
EXEC sp_rename 'custsetting3rd.minbet','DEL_minbet', 'COLUMN'
EXEC sp_rename 'custsetting3rd.maxbet','DEL_maxbet', 'COLUMN'




--=======================================================
-- Change data type of articles on CustDB_CustSetting pub
-- * Run on DBCUST.custdb, DB06x/DTP10C/DBTKO.bodb02 (Group 4. All CS + DBTKO)
----------------------------------------------------------------------
--ProductBetSetting
ALTER TABLE [dbo].[ProductBetSetting] DROP CONSTRAINT [PK_ProductBetSetting]
GO
ALTER TABLE ProductBetSetting ALTER COLUMN Sporttype SMALLINT NOT NULL
GO
ALTER TABLE [dbo].[ProductBetSetting] ADD  CONSTRAINT [PK_ProductBetSetting] PRIMARY KEY CLUSTERED 
(
	[Sporttype] ASC,
	[Bettype] ASC,
	[Currency] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
GO
----------------------------------------------------------------------
--ProductGlobalSetting
ALTER TABLE [dbo].[ProductGlobalSetting] DROP CONSTRAINT [PK_ProductGlobalSetting]
GO
ALTER TABLE ProductGlobalSetting ALTER COLUMN [Sporttype] SMALLINT NOT NULL
GO
ALTER TABLE [dbo].[ProductGlobalSetting] ADD  CONSTRAINT [PK_ProductGlobalSetting] PRIMARY KEY CLUSTERED 
(
	[Sporttype] ASC,
	[Bettype] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
GO
----------------------------------------------------------------------
--VRSettingReference
ALTER TABLE [dbo].[VRSettingReference] DROP CONSTRAINT [PK_VRSettingReference]
GO
ALTER TABLE [dbo].[VRSettingReference] ALTER COLUMN [SportType] SMALLINT NOT NULL
GO
ALTER TABLE [dbo].[VRSettingReference] ALTER COLUMN [BetType] SMALLINT NOT NULL
GO
ALTER TABLE [dbo].[VRSettingReference] ADD  CONSTRAINT [PK_VRSettingReference] PRIMARY KEY CLUSTERED 
(
	[SportType] ASC,
	[LeagueGroupID] ASC,
	[BetType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [virtualrate_table]
GO
----------------------------------------------------------------------
--CustWinLossLimit_Agent
ALTER TABLE [dbo].[CustWinLossLimit_Agent] DROP CONSTRAINT [PK_CustWinLossLimit_Agent]
GO
ALTER TABLE [CustWinLossLimit_Agent] ALTER COLUMN BetType SMALLINT NOT NULL
GO
ALTER TABLE [dbo].[CustWinLossLimit_Agent] ADD  CONSTRAINT [PK_CustWinLossLimit_Agent] PRIMARY KEY CLUSTERED 
(
	[CustId] ASC,
	[SportType] ASC,
	[BetType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [CustWinLossLimit_table]
GO
----------------------------------------------------------------------
--CustWinLossLimit_Member
ALTER TABLE [dbo].[CustWinLossLimit_Member] DROP CONSTRAINT [PK_CustWinLossLimit_Member]
GO
ALTER TABLE [CustWinLossLimit_Member] ALTER COLUMN [BetType] SMALLINT NOT NULL
GO
ALTER TABLE [dbo].[CustWinLossLimit_Member] ADD  CONSTRAINT [PK_CustWinLossLimit_Member] PRIMARY KEY CLUSTERED 
(
	[CustId] ASC,
	[SportType] ASC,
	[BetType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [CustWinLossLimit_table]
GO
--//////////////////////////////////////////////////////////
-----------------------------------------------------------------------------------------------
--VRBettypeGroup: run at dbcust
ALTER TABLE [dbo].[VRBettypeGroup] ALTER COLUMN SportType SMALLINT NULL
GO
-----------------------------------------------------------------------------------------------
--VRLeagueGroup: run at dbcust
ALTER TABLE [dbo].[VRLeagueGroup] ALTER COLUMN SportType SMALLINT NULL
GO
-----------------------------------------------------------------------------------------------
--VRSettingHierarchy: run at dbcust & rep server
DROP INDEX [IX_SportLeague] ON [dbo].[VRSettingHierarchy]
GO
ALTER TABLE [dbo].[VRSettingHierarchy] ALTER COLUMN SportType SMALLINT NULL
GO
ALTER TABLE [dbo].[VRSettingHierarchy] ALTER COLUMN BetType SMALLINT NULL
GO
CREATE NONCLUSTERED INDEX [IX_SportLeague] ON [dbo].[VRSettingHierarchy]
(
	[SportType] ASC,
	[BetType] ASC,
	[VRLeagueGroupID] ASC
)
INCLUDE ( 	[ParentLevelID]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [virtualrate_table]
GO




--=======================================================
-- Change data type of articles on CustDB_CustSetting pub
-- * Run on DBCUST/DBTRANS/DBGRPXXX.CustDB, DB04x,DB05x,DB06x/DTP10C/DBDWx/DBTKO.bodb02 (Group 5. All CI + DBTKO)
----------------------------------------------------------------------
--ProductStatusSiteCurrency
ALTER TABLE [dbo].[ProductStatusSiteCurrency] DROP CONSTRAINT [PK_ProductStatusSiteCurrency]
GO
ALTER TABLE [ProductStatusSiteCurrency] ALTER COLUMN [BetType] SMALLINT NOT NULL
GO
ALTER TABLE [dbo].[ProductStatusSiteCurrency] ADD  CONSTRAINT [PK_ProductStatusSiteCurrency] PRIMARY KEY CLUSTERED 
(
	[SportType] ASC,
	[BetType] ASC,
	[Currency] ASC,
	[SiteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO