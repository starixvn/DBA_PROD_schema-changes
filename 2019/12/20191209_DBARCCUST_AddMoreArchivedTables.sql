/*
	Tasks: Create more archived setting tables for archiving data for agent level
	Run at DBARCCUST.bodb_Customer
*/

CREATE TABLE [CustPTSetting3rd_Agent_Old](
	[CustID] [int] NOT NULL,
	[SportType] [smallint] NOT NULL,
	[BetType] [smallint] NOT NULL,
	[IsLive] [bit] NOT NULL,
	[SuperPT] [tinyint] NOT NULL,
	[MasterPT] [tinyint] NOT NULL,
	[AgentPT] [tinyint] NOT NULL,
	[IsAutoMasterPT] [bit] NOT NULL,
	[AutoMasterPT] [tinyint] NOT NULL,
	[IsAutoSuperPT] [bit] NOT NULL,
	[AutoSuperPT] [tinyint] NOT NULL,
	[MinPT] [tinyint] NOT NULL,
	[MaxPT] [tinyint] NOT NULL,
 CONSTRAINT [PK_CustPTSetting3rd_Agent_Old] PRIMARY KEY CLUSTERED 
(
	[CustID] ASC,
	[SportType] ASC,
	[BetType] ASC,
	[IsLive] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON Custsetting3rd_table
) ON Custsetting3rd_table


GO


CREATE TABLE [custSub_Old](
	[subaccid] [int] NOT NULL,
	[custid] [int] NOT NULL,
	[username] [varchar](30) NULL,
	[userpwd] [varchar](40) NULL,
	[PageAccess] [varchar](50) NULL,
	[createdate] [datetime] NULL,
	[firstname] [nvarchar](50) NULL,
	[lastname] [nvarchar](50) NULL,
	[closed] [bit] NULL,
	[LoginCount] [tinyint] NOT NULL,
	[UserName2] [varchar](50) NULL,
	[NicknameLoginOnly] [bit] NULL,
	[IsAllDownline] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_custSub_Old] PRIMARY KEY CLUSTERED 
(
	[subaccid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
) ON [DATA]

GO


CREATE TABLE [CustWinLossLimit_Agent_Old](
	[CustId] [int] NOT NULL,
	[SportType] [smallint] NOT NULL,
	[BetType] [int] NOT NULL,
	[MaxWinLimit] [smallmoney] NULL,
	[MaxLossLimit] [money] NULL,
	[IsAutoReset] [bit] NULL,
 CONSTRAINT [PK_CustWinLossLimit_Agent_Old] PRIMARY KEY CLUSTERED 
(
	[CustId] ASC,
	[SportType] ASC,
	[BetType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
) ON [DATA]

GO


CREATE TABLE [CustAgent_Old](
	[custid] [int] NOT NULL,
	[MaxCredit] [money] NOT NULL,
	[IsInternal] [bit] NOT NULL,
	[TransferOption] [tinyint] NULL,
	[LimitPerIP] [tinyint] NOT NULL,
	[SelectedBetting] [bit] NOT NULL,
	[NicknameLoginOnly] [bit] NOT NULL,
	[site] [varchar](10) NULL,
	[creationRemark] [nvarchar](300) NULL,
	[IsMonitorPT] [bit] NULL,
 CONSTRAINT [PK_CustAgent_Old] PRIMARY KEY CLUSTERED 
(
	[custid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
) ON [DATA]

GO


CREATE TABLE [AgentCommRate_Old](
	[CustID] [int] NOT NULL,
	[SportType] [smallint] NOT NULL,
	[BetType] [smallint] NOT NULL,
	[CommRate] [decimal](9, 8) NULL,
 CONSTRAINT [PK_AgentCommRate_Old] PRIMARY KEY CLUSTERED 
(
	[CustID] ASC,
	[SportType] ASC,
	[BetType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [CustSetting3rd_table]
) ON [CustSetting3rd_table]

GO


CREATE TABLE [CustBetSetting3rd_Agent_Old](
	[CustID] [int] NOT NULL,
	[SportType] [smallint] NOT NULL,
	[BetType] [smallint] NOT NULL,
	[MinBet] [money] NULL,
	[MaxBet] [money] NULL,
	[MaxPerMatch] [money] NULL,
 CONSTRAINT [PK_CustBetSetting3rd_Agent_Old] PRIMARY KEY CLUSTERED 
(
	[CustID] ASC,
	[SportType] ASC,
	[BetType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [CustSetting3rd_table]
) ON [CustSetting3rd_table]

GO

CREATE TABLE [CustDiscount3rd_Agent_Old](
	[CustID] [int] NOT NULL,
	[SportType] [smallint] NOT NULL,
	[BetType] [smallint] NOT NULL,
	[Discount] [decimal](9, 8) NOT NULL,
 CONSTRAINT [PK_CustDiscount3rd_Agent_Old] PRIMARY KEY CLUSTERED 
(
	[CustID] ASC,
	[SportType] ASC,
	[BetType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [CustSetting3rd_table]
) ON [CustSetting3rd_table]

GO


CREATE TABLE [CustStakeLevel_Agent_Old](
	[CustID] [int] NOT NULL,
	[SportType] [smallint] NOT NULL,
	[BetType] [int] NOT NULL,
	[StakeLevelList] [varchar](200) NULL,
 CONSTRAINT [PK_CustStakeLevel_Agent_Old] PRIMARY KEY CLUSTERED 
(
	[CustID] ASC,
	[SportType] ASC,
	[BetType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
) ON [DATA]

GO


CREATE TABLE [CustWinLimit_Old](
	[CustId] [int] NOT NULL,
	[SportType] [smallint] NOT NULL,
	[BetType] [smallint] NOT NULL,
	[MaxWinLimit] [smallmoney] NULL,
	[IsAutoReset] [bit] NULL,
	[MaxLossLimit] [money] NULL,
 CONSTRAINT [PK_CustWinLimit_Olde] PRIMARY KEY CLUSTERED 
(
	[CustId] ASC,
	[SportType] ASC,
	[BetType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
) ON [DATA]

GO














