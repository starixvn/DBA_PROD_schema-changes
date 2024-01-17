/*
	Task: Alter table schema for adding table SettlementSpecialBettypeProfile into repl DB02 pub DB02_Trans_Odds_Info, DB02_Sync_DR
	Run step by step below IN UM on DB02 and all sub servers/ DR (DBTRANS, SiteDBx)
*/

-- Step 1.1: Rename table SettlementSpecialBettypeProfile to SettlementSpecialBettypeProfile_old

USE bodb02
GO

DROP INDEX IX_SettlementSpecialBettypeProfile_Bettype_BetID ON SettlementSpecialBettypeProfile
GO
DROP INDEX IX_SettlementSpecialBettypeProfile_resourceid ON SettlementSpecialBettypeProfile
GO
DROP INDEX IX_SettlementSpecialBettypeProfile_SportType ON SettlementSpecialBettypeProfile
GO
EXEC sp_rename 'SettlementSpecialBettypeProfile', 'SettlementSpecialBettypeProfile_old'
GO
--------------------
-- Step 1.1: Add new table SettlementSpecialBettypeProfile with new column rId identity primary key
USE bodb02
GO

CREATE TABLE [dbo].[SettlementSpecialBettypeProfile](
	[rId] [int] IDENTITY (1,1) NOT FOR REPLICATION NOT NULL,
	[pfID] [smallint] NOT NULL,
	[BetType] [smallint] NOT NULL,
	[SportType] [tinyint] NOT NULL,
	[BetID] [bigint] NOT NULL,
	[ResourceID] [varchar](20) NOT NULL,
	[SettleType] [char](3) NOT NULL,
	[GroupType] [char](2) NOT NULL,
	[OrdNo] [smallint] NULL,
	[RoundID] [varchar](10) NULL,
	[OddsType] [smallint] NULL,
	[RefResourceId] [varchar](20) NULL,
	[SDTpfId] [smallint] NULL,
	[Is3x30] [bit] NULL,
	[SDTResourceId] [varchar](20) NULL,
	[IsSDT] [bit] NULL,
	[DeterminedType] [tinyint] NULL,
	[SpecialType] [tinyint] NULL,
	[SDTRefund] [tinyint] NULL,
	[SDTInstant] [tinyint] NULL
 CONSTRAINT [PK_SettlementSpecialBettypeProfile] PRIMARY KEY NONCLUSTERED ( [rId] ASC ) ON [DATA]
) ON [DATA]
GO

CREATE NONCLUSTERED INDEX [IX_SettlementSpecialBettypeProfile_Bettype_BetID] ON [dbo].[SettlementSpecialBettypeProfile]
(
	[BetType] ASC,
	[BetID] ASC
) ON [DATA]
GO


CREATE CLUSTERED INDEX [IX_SettlementSpecialBettypeProfile_resourceid] ON [dbo].[SettlementSpecialBettypeProfile]
(
	[ResourceID] ASC
) ON [DATA]
GO

CREATE NONCLUSTERED INDEX [IX_SettlementSpecialBettypeProfile_SportType] ON [dbo].[SettlementSpecialBettypeProfile]
(
	[SportType] ASC
)
INCLUDE([BetType],[BetID]) ON [DATA]
GO



