/*
	Tasks: Create more archived setting tables for archiving more data
	Run at DBARCCUST.bodb_Customer
*/


CREATE TABLE [custOverride_old](
	[custid] [int] NOT NULL,
	[bettype] [smallint] NOT NULL,
	[sporttype] [smallint] NOT NULL,
	[minpositiontaking] [smallmoney] NOT NULL,
	[maxpositiontaking] [smallmoney] NOT NULL,
	[minlivepositiontaking] [smallmoney] NOT NULL,
	[maxlivepositiontaking] [smallmoney] NOT NULL,
 CONSTRAINT [PK_custoverride_old] PRIMARY KEY CLUSTERED 
(
	[custid] ASC,
	[bettype] ASC,
	[sporttype] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
) ON [DATA]

GO


CREATE TABLE [custOverride3rd_old](
	[custid] [int] NOT NULL,
	[bettype] [smallint] NOT NULL,
	[sporttype] [smallint] NOT NULL,
	[minpositiontaking] [smallmoney] NOT NULL,
	[maxpositiontaking] [smallmoney] NOT NULL,
	[minlivepositiontaking] [smallmoney] NOT NULL,
	[maxlivepositiontaking] [smallmoney] NOT NULL,
 CONSTRAINT [PK_custoverride3rd_old] PRIMARY KEY CLUSTERED 
(
	[custid] ASC,
	[bettype] ASC,
	[sporttype] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [DATA]
) ON [DATA]

GO


CREATE TABLE [CustOverrideGame_old](
	[CustID] [int] NOT NULL,
	[Bettype] [smallint] NOT NULL,
	[Sporttype] [smallint] NOT NULL,
	[minpositiontaking] [smallmoney] NOT NULL,
 CONSTRAINT [PK_CustOverrideGame_old] PRIMARY KEY CLUSTERED 
(
	[CustID] ASC,
	[Bettype] ASC,
	[Sporttype] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
) ON [DATA]

GO


CREATE TABLE [CustLoginInfo_Member_old](
	[CustID] [int] NOT NULL,
	[SecurityCode] [varchar](40) NULL,
	[IP] [varchar](15) NULL,
	[LastChangedID] [int] NULL,
	[LastChangedDate] [datetime] NULL,
	[OddsType] [tinyint] NULL,
	[LayoutMode] [tinyint] NOT NULL,
	[BetStake] [money] NULL,
	[DefaultLanguage] [varchar](4) NOT NULL,
	[OddsSort] [tinyint] NOT NULL,
	[BetterOdds] [bit] NOT NULL,
	[ShowLiveCasino] [bit] NOT NULL,
	[SportSort] [varchar](512) NULL,
	[CusStake1] [money] NULL,
	[CusStake2] [money] NULL,
	[ShowScoreMap] [bit] NULL,
	[ShowBanner] [int] NULL,
	[AutoRefresh] [bit] NULL,
	[MarketType] [tinyint] NULL,
	[AutoRefreshMatch] [bit] NULL,
	[MobileOthersType] [varchar](512) NULL,
	[gesture] [varchar](40) NULL,
	[failedcount] [tinyint] NULL,
	[lastlogged] [smalldatetime] NULL,
	[OddsColorStyle] [tinyint] NULL,
	[ClosedReason] [tinyint] NULL,
	[notify] [bit] NOT NULL,
	[recommendation] [bit] NOT NULL,
 CONSTRAINT [PK_CustLoginInfo_Member_old] PRIMARY KEY CLUSTERED 
(
	[CustID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
) ON [DATA]

GO
