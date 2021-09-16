/*
	Task: Prepare DB schema add tables to replication
	Run @ DB02, DBTP & DR sites related
*/
USE [bodb02]
GO

/****** Object:  Table [dbo].[AutoPayoutResultOS]    Script Date: 9/15/2021 11:02:37 PM ******/

CREATE TABLE [dbo].[AutoPayoutResultOS](
	[AutoPayoutResultId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[MatchId] [int] NOT NULL,
	[ResourceId] [varchar](20) NOT NULL,
	[HomeValue] [varchar](50) NULL,
	[AwayValue] [varchar](50) NULL,
	[StatusId] [tinyint] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_AutoPayoutResultOS] PRIMARY KEY NONCLUSTERED 
(
	[AutoPayoutResultId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
) ON [DATA]
GO


/****** Object:  Index [CIX_AutoPayoutResultOS_MatchIdResourceId]    Script Date: 9/15/2021 11:02:37 PM ******/
CREATE CLUSTERED INDEX [CIX_AutoPayoutResultOS_MatchIdResourceId] ON [dbo].[AutoPayoutResultOS]
(
	[MatchId] ASC,
	[ResourceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
GO

--------------------------------------------------------------------

USE [bodb02]
GO

CREATE TABLE [dbo].[SettlementResultTableSetting](
	[Sporttype] [smallint] NOT NULL,
	[ResultTable] [tinyint] NULL,
	[ExternalResultTable] [tinyint] NULL,
	[IsSettleByProfile] [bit] NULL,
	[IsAppliedSOP] [bit] NULL,
	[IsMergedParlay] [bit] NULL,
 CONSTRAINT [PK_SettlementResultTableSetting] PRIMARY KEY CLUSTERED 
(
	[Sporttype] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
) ON [DATA]
GO

