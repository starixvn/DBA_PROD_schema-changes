/*
	Task: Change data type
	Run @DBCUST only (NO replication)
*/

USE CustDB
GO

-----------------------------------------------------------------------------------------------
--VRSetting_AutoUpdate_ByExcel: run at dbcust only
ALTER TABLE VRSetting_AutoUpdate_ByExcel ALTER COLUMN [SportType] SMALLINT NOT NULL
GO
-----------------------------------------------------------------------------------------------
--VRSettingAutoUpdate: run at dbcust 
ALTER TABLE [dbo].[VRSettingAutoUpdate] DROP CONSTRAINT [PK_VRSettingAutoUpdate]
GO
ALTER TABLE VRSettingAutoUpdate ALTER COLUMN [SportType] SMALLINT NOT NULL
GO
ALTER TABLE VRSettingAutoUpdate ALTER COLUMN [BetType] SMALLINT NOT NULL
GO
ALTER TABLE [dbo].[VRSettingAutoUpdate] ADD  CONSTRAINT [PK_VRSettingAutoUpdate] PRIMARY KEY CLUSTERED 
(
	[CustId] ASC,
	[SportType] ASC,
	[IsLive] ASC,
	[VRLeagueGroupId] ASC,
	[VRBettypeGroupId] ASC,
	[BetType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [virtualrate_table]
GO

-----------------------------------------------------------------------------------------------
--Winlimit_ProductGlobalSetting: run at dbcust only
ALTER TABLE [dbo].[Winlimit_ProductGlobalSetting] DROP CONSTRAINT [PK_Winlimit_ProductGlobalSetting]
GO
ALTER TABLE Winlimit_ProductGlobalSetting ALTER COLUMN [BetTypeID] SMALLINT NOT NULL
GO
ALTER TABLE [dbo].[Winlimit_ProductGlobalSetting] ADD  CONSTRAINT [PK_Winlimit_ProductGlobalSetting] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[BetTypeID] ASC,
	[GroupID] ASC,
	[Currency] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [WinlimitSetting_Tables]
GO