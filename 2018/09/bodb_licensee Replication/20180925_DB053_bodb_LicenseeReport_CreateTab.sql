/*

	Task: Create tables @bodb_LicenseeReport - part of HA bodb_licensee
	Server: DB053
*/


USE [bodb_LicenseeReport]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [bettrans](
	[transid] [bigint] NOT NULL,
	[custid] [int] NOT NULL,
	[stake] [money] NOT NULL,
	[statusid] [tinyint] NULL,
	[status] [nvarchar](15) NULL,
	[winlost] [money] NULL,
	[awinlost] [money] NULL,
	[mwinlost] [money] NULL,
	[playercomm] [money] NULL,
	[comm] [money] NULL,
	[acomm] [money] NULL,
	[apositiontaking] [smallmoney] NULL,
	[mpositiontaking] [smallmoney] NULL,
	[tpositiontaking] [smallmoney] NULL,
	[liveindicator] [bit] NULL,
	[betteam] [nvarchar](10) NULL,
	[winlostdate] [smalldatetime] NULL,
	[betfrom] [nvarchar](1) NULL,
	[actualrate] [float] NULL,
	[matchid] [int] NULL,
	[recommend] [int] NOT NULL,
	[mrecommend] [int] NOT NULL,
	[actual_stake] [money] NULL,
	[currency] [tinyint] NULL,
	[scomm] [money] NULL,
	[spositiontaking] [smallmoney] NULL,
	[swinlost] [money] NULL,
	[srecommend] [int] NOT NULL,
	[refno] [bigint] NULL,
	[transdate] [datetime] NULL,
	[bettype] [smallint] NULL,
	[virtualrate] [float] NULL,
	[isBA] [bit] NULL,
	[discount] [decimal](9, 8) NULL,
	[customercategory] [smallint] NULL,
	[site] [varchar](10) NULL,
	[CashInAmount] [money] NULL,
	[WinPrizeAmount] [money] NULL,
	[CashOutAmount] [money] NULL,
	[oddsspread] [money] NULL,
	[ExtraInfo] [varchar](1000) NULL,
	[betdaqid] [bigint] NULL,
	[TicketType] [tinyint] NULL,
 CONSTRAINT [PK_bettrans] PRIMARY KEY CLUSTERED 
(
	[transid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [LicenseeReport_Staging_Data]
) ON [LicenseeReport_Staging_Data]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [DataCheckingLog](
	[RecordID] [bigint] IDENTITY(1,1) NOT NULL,
	[WinlostDate] [smalldatetime] NULL,
	[SPName] [varchar](256) NULL,
	[TableName] [varchar](100) NULL,
	[IsSource] [bit] NULL,
	[BetTypeId] [int] NULL,
	[CurrencyId] [int] NULL,
	[Turnover] [money] NULL,
	[Winloss] [money] NULL,
	[BetCount] [int] NULL,
	[ExtraInfo] [varchar](max) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_DataCheckingLog] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [LicenseeReport_Staging_Data]
) ON [LicenseeReport_Staging_Data] TEXTIMAGE_ON [LicenseeReport_Staging_Data]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [match](
	[matchid] [int] NOT NULL,
	[leagueid] [int] NOT NULL,
	[homeid] [int] NULL,
	[awayid] [int] NULL,
	[eventdate] [datetime] NULL,
	[finalhomescore] [int] NULL,
	[finalawayscore] [int] NULL,
	[exrisk] [float] NULL,
	[sporttype] [tinyint] NULL,
	[matchcode] [nvarchar](50) NULL,
	[hthomescore] [int] NULL,
	[htawayscore] [int] NULL,
	[kickofftime] [datetime] NULL,
 CONSTRAINT [PK_match] PRIMARY KEY CLUSTERED 
(
	[matchid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [LicenseeReport_Staging_Data]
) ON [LicenseeReport_Staging_Data]

GO
GRANT DELETE ON [match] TO [vnteam] AS [dbo]
GO
GRANT INSERT ON [match] TO [vnteam] AS [dbo]
GO
GRANT SELECT ON [match] TO [vnteam] AS [dbo]
GO
GRANT UPDATE ON [match] TO [vnteam] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [outright](
	[matchid] [int] NOT NULL,
	[leagueid] [int] NOT NULL,
	[homeid] [int] NULL,
	[awayid] [int] NULL,
	[eventdate] [smalldatetime] NULL,
	[kickofftime] [datetime] NULL,
	[oddsstatus] [varchar](10) NULL,
	[odds] [smallmoney] NULL,
	[status] [varchar](10) NULL,
	[risk] [money] NULL,
	[groupmatch] [varchar](50) NULL,
	[sporttype] [smallint] NULL,
 CONSTRAINT [PK_outright] PRIMARY KEY CLUSTERED 
(
	[matchid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [LicenseeReport_Staging_Data]
) ON [LicenseeReport_Staging_Data]

GO
SET ANSI_PADDING OFF
GO
GRANT DELETE ON [outright] TO [vnteam] AS [dbo]
GO
GRANT INSERT ON [outright] TO [vnteam] AS [dbo]
GO
GRANT SELECT ON [outright] TO [vnteam] AS [dbo]
GO
GRANT UPDATE ON [outright] TO [vnteam] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [rpt_Betting](
	[RecordID] [bigint] IDENTITY(1,1) NOT NULL,
	[rptDate] [datetime] NOT NULL,
	[SiteID] [int] NOT NULL,
	[Bettype] [smallint] NOT NULL,
	[LeagueID] [int] NOT NULL,
	[CurrencyID] [int] NOT NULL,
	[Status] [smallint] NOT NULL,
	[IsLive] [bit] NOT NULL,
	[BetCount] [int] NULL,
	[MemberCount] [int] NULL,
	[Turnover] [money] NULL,
	[WinLoss] [money] NULL,
	[WinLossA] [money] NULL,
	[WinLossM] [money] NULL,
	[WinLossS] [money] NULL,
	[CommissionP] [money] NULL,
	[CommissionA] [money] NULL,
	[CommissionM] [money] NULL,
	[CommissionS] [money] NULL,
	[WinLossVirtual] [money] NULL,
	[CommissionSVirtual] [money] NULL,
	[CustomerCategory] [smallint] NULL,
	[BuyBackAmount] [money] NULL,
	[WinPrizeAmount] [money] NULL,
	[CashOutAmount] [money] NULL,
	[oddsspread] [money] NULL,
	[TicketType] [tinyint] NULL,
	[ExtraAmount] [money] NULL
) ON [ps_rptBetting_monthly]([rptDate])
WITH
(
DATA_COMPRESSION = PAGE
)

GO
GRANT SELECT ON [rpt_Betting] TO [bodbAdminNet] AS [dbo]
GO
GRANT SELECT ON [rpt_Betting] TO [bodbLicenseeNet] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [rpt_Betting_BA](
	[RecordID] [bigint] IDENTITY(1,1) NOT NULL,
	[rptDate] [datetime] NOT NULL,
	[SiteID] [int] NOT NULL,
	[Bettype] [smallint] NOT NULL,
	[LeagueID] [int] NOT NULL,
	[CurrencyID] [int] NOT NULL,
	[Status] [smallint] NOT NULL,
	[IsLive] [bit] NOT NULL,
	[BetCount] [int] NULL,
	[MemberCount] [int] NULL,
	[Turnover] [money] NULL,
	[WinLoss] [money] NULL,
	[WinLossA] [money] NULL,
	[WinLossM] [money] NULL,
	[WinLossS] [money] NULL,
	[CommissionP] [money] NULL,
	[CommissionA] [money] NULL,
	[CommissionM] [money] NULL,
	[CommissionS] [money] NULL,
	[WinLossVirtual] [money] NULL,
	[CommissionSVirtual] [money] NULL,
	[BuyBackAmount] [money] NULL,
	[CustomerCategory] [smallint] NULL,
	[TicketType] [tinyint] NULL,
	[ExtraAmount] [money] NULL
) ON [rptBetting_ba_Data]

GO
GRANT SELECT ON [rpt_Betting_BA] TO [bodbAdminNet] AS [dbo]
GO
GRANT SELECT ON [rpt_Betting_BA] TO [bodbLicenseeNet] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [rpt_BettingByProduct](
	[RecordID] [bigint] IDENTITY(1,1) NOT NULL,
	[rptDate] [datetime] NOT NULL,
	[SiteID] [int] NOT NULL,
	[ProductID] [tinyint] NOT NULL,
	[Bettype] [int] NOT NULL,
	[CurrencyId] [int] NOT NULL,
	[StatusId] [smallint] NOT NULL,
	[CustomerCategory] [int] NOT NULL,
	[GrossWL] [money] NULL,
	[MemberWL] [money] NULL,
	[Turnover] [money] NULL,
	[BetCount] [int] NULL,
	[CommissionA] [money] NULL,
	[CommissionP] [money] NULL,
	[BuyBackAmount] [money] NULL,
	[WinPrizeAmount] [money] NULL,
	[CashOutAmount] [money] NULL,
	[ValidBetAmount] [money] NULL,
	[TicketType] [tinyint] NULL,
	[ExtraAmount] [money] NULL
) ON [PRIMARY]

GO
GRANT SELECT ON [rpt_BettingByProduct] TO [bodbAdminNet] AS [dbo]
GO
GRANT SELECT ON [rpt_BettingByProduct] TO [bodbLicenseeNet] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [rpt_BettingBySport](
	[rptDate] [datetime] NOT NULL,
	[SiteID] [int] NOT NULL,
	[ProductID] [tinyint] NOT NULL,
	[SportType] [int] NOT NULL,
	[CurrencyId] [int] NOT NULL,
	[StatusId] [smallint] NOT NULL,
	[LicenseeWL] [money] NULL,
	[CustomerWL] [money] NULL,
	[Turnover] [money] NULL,
	[BetCount] [int] NULL,
	[WLShare] [money] NULL,
	[CommissionS] [money] NULL,
	[CommShare] [money] NULL,
	[CustomerCategory] [int] NOT NULL,
	[AdjustedLicenseeWL] [money] NULL,
	[AdjustedCustomerWL] [money] NULL,
	[AdjustedCommissionS] [money] NULL,
	[AdjustedCommShare] [money] NULL,
	[IsParlay] [bit] NULL
) ON [rptDepWinlost_ThirdPartyData]

GO
GRANT SELECT ON [rpt_BettingBySport] TO [bodbAdminNet] AS [dbo]
GO
GRANT SELECT ON [rpt_BettingBySport] TO [bodbLicenseeNet] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [rpt_BettingColossusBets](
	[RecordID] [bigint] IDENTITY(1,1) NOT NULL,
	[rptDate] [datetime] NOT NULL,
	[CustID] [int] NOT NULL,
	[Bettype] [smallint] NOT NULL,
	[CurrencyID] [int] NOT NULL,
	[StatusID] [smallint] NOT NULL,
	[TotalTrans] [int] NULL,
	[Turnover] [money] NULL,
	[WinningPrize] [money] NULL,
	[CashOutAmt] [money] NULL,
	[CashInAmt] [money] NULL,
	[CommAmt] [money] NULL,
	[GrandAmt] [money] NULL,
	[CashInShare] [money] NULL,
	[TicketType] [tinyint] NULL,
 CONSTRAINT [PK_betCB] PRIMARY KEY NONCLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [rpt_BettingColossusBetsData]
) ON [rpt_BettingColossusBetsData]

GO
GRANT SELECT ON [rpt_BettingColossusBets] TO [bodbLicenseeNet] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [rpt_BettingParlay](
	[RecordID] [bigint] IDENTITY(1,1) NOT NULL,
	[rptDate] [datetime] NOT NULL,
	[SiteID] [int] NOT NULL,
	[Bettype] [smallint] NOT NULL,
	[CurrencyID] [int] NOT NULL,
	[Status] [smallint] NOT NULL,
	[IsLive] [tinyint] NOT NULL,
	[BetCount] [int] NULL,
	[MemberCount] [int] NULL,
	[Turnover] [money] NULL,
	[WinLoss] [money] NULL,
	[WinLossA] [money] NULL,
	[CommissionP] [money] NULL,
	[CommissionA] [money] NULL,
	[WinLossVirtual] [money] NULL,
	[isBA] [bit] NULL,
 CONSTRAINT [PK_betparlay] PRIMARY KEY NONCLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [rpt_BettingParlayData]
) ON [rpt_BettingParlayData]

GO
GRANT SELECT ON [rpt_BettingParlay] TO [bodbLicenseeNet] AS [dbo]
GO
GRANT DELETE ON [rpt_BettingParlay] TO [vnteam] AS [dbo]
GO
GRANT INSERT ON [rpt_BettingParlay] TO [vnteam] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [rpt_ThirdPartyWL_ExtraGMT](
	[RptDate] [date] NOT NULL,
	[RptDate3rd] [date] NOT NULL,
	[SiteId] [int] NOT NULL,
	[BetTypeId] [int] NOT NULL,
	[CurrencyId] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
	[BetCount] [int] NOT NULL,
	[Turnover] [money] NOT NULL,
	[Winloss] [money] NOT NULL,
	[AComm] [money] NOT NULL,
	[PComm] [money] NOT NULL,
	[ProgressiveContribution] [money] NOT NULL,
	[ProgressivePayout] [money] NOT NULL,
	[ValidBetAmount] [money] NULL
) ON [rpt_ThirdPartyWL_ExtraGMT]

GO
GRANT SELECT ON [rpt_ThirdPartyWL_ExtraGMT] TO [bodbAdminNet] AS [dbo]
GO
GRANT SELECT ON [rpt_ThirdPartyWL_ExtraGMT] TO [bodbLicenseeNet] AS [dbo]
GO
GRANT VIEW DEFINITION ON [rpt_ThirdPartyWL_ExtraGMT] TO [vnteam] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [rptCustomerActive](
	[TransDate] [date] NOT NULL,
	[CustId] [int] NOT NULL,
	[Recommend] [int] NOT NULL,
	[CurrencyId] [int] NOT NULL,
	[ProductId] [int] NOT NULL
) ON [ps_rptCustomerActive_monthly]([TransDate])
WITH
(
DATA_COMPRESSION = PAGE
)

GO
GRANT SELECT ON [rptCustomerActive] TO [bodbLicenseeNet] AS [dbo]
GO
GRANT VIEW DEFINITION ON [rptCustomerActive] TO [vnteam] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [rptCustomerMatch](
	[custid] [int] NOT NULL,
	[matchid] [int] NULL,
	[oddsid] [int] NULL,
	[Leagueid] [int] NULL,
	[bettype] [smallint] NULL,
	[odds] [money] NULL,
	[oddstype] [tinyint] NULL,
	[statusid] [tinyint] NULL,
	[stake] [money] NULL,
	[winlost] [money] NULL,
	[winlostdate] [datetime] NULL,
	[awinlost] [money] NULL,
	[comm] [money] NULL,
	[playercomm] [money] NULL,
	[recommend] [int] NULL,
	[isBA] [bit] NULL,
	[betcount] [smallint] NULL,
	[currency] [int] NULL
) ON [ps_rptCustomerMatch_monthly]([winlostdate])
WITH
(
DATA_COMPRESSION = PAGE
)

GO
GRANT SELECT ON [rptCustomerMatch] TO [bodbLicenseeNet] AS [dbo]
GO
GRANT VIEW DEFINITION ON [rptCustomerMatch] TO [vnteam] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [rptCustomerTurnover](
	[custid] [int] NOT NULL,
	[bettype] [smallint] NULL,
	[sporttype] [smallint] NULL,
	[currency] [tinyint] NULL,
	[stake] [money] NOT NULL,
	[winlost] [money] NULL,
	[playercomm] [money] NULL,
	[odds] [money] NULL,
	[oddstype] [tinyint] NULL,
	[statusID] [tinyint] NULL,
	[recommend] [int] NULL,
	[leagueID] [int] NULL,
	[winlostdate] [smalldatetime] NULL,
	[betcount] [int] NULL,
	[isBA] [tinyint] NULL,
	[BetEffective] [money] NULL
) ON [ps_rptCustomerTurnover_monthly]([winlostdate])
WITH
(
DATA_COMPRESSION = PAGE
)

GO
GRANT SELECT ON [rptCustomerTurnover] TO [bodbLicenseeNet] AS [dbo]
GO
GRANT VIEW DEFINITION ON [rptCustomerTurnover] TO [bodbLicenseeNet] AS [dbo]
GO
GRANT SELECT ON [rptCustomerTurnover] TO [vnteam] AS [dbo]
GO
GRANT VIEW DEFINITION ON [rptCustomerTurnover] TO [vnteam] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [rptDep_AuditTickets](
	[PlayerNo] [int] NOT NULL,
	[PlayerName] [varchar](100) NULL,
	[PlayerType] [varchar](10) NULL,
	[TransactionDate] [datetime] NULL,
	[TransactionId] [bigint] NOT NULL,
	[SettlementDate] [datetime] NOT NULL,
	[Brand] [varchar](50) NULL,
	[BrandUrl] [varchar](100) NULL,
	[GameCode] [varchar](10) NULL,
	[GameName] [varchar](100) NULL,
	[GameType] [varchar](50) NOT NULL,
	[CurrencyCode] [varchar](10) NULL,
	[BetType] [varchar](100) NULL,
	[BetAmount] [money] NULL,
	[DebitAmount] [money] NULL,
	[CreditAmount] [money] NULL,
	[NetAmount] [money] NULL,
 CONSTRAINT [PK_rptDep_AuditTickets] PRIMARY KEY NONCLUSTERED 
(
	[TransactionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [LicenseeData]
) ON [LicenseeData]

GO
SET ANSI_PADDING OFF
GO
GRANT SELECT ON [rptDep_AuditTickets] TO [bodbLicenseeNet] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [rptDepWinlost_ThirdParty](
	[Winlostdate] [date] NOT NULL,
	[Custid] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Turnover] [money] NOT NULL,
	[Winlost] [money] NOT NULL,
	[BetCount] [int] NOT NULL,
	[Currency] [int] NOT NULL,
	[DrawTO] [money] NULL,
	[DrawBetCount] [int] NULL,
	[ValidBetAmount] [money] NULL,
	[CommissionP] [money] NULL,
	[CommissionA] [money] NULL,
	[WinLostA] [money] NULL,
 CONSTRAINT [CIX_rptDepWinlost_GoldDeluxe] PRIMARY KEY CLUSTERED 
(
	[Winlostdate] ASC,
	[Custid] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [rptDepWinlost_ThirdPartyData]
) ON [rptDepWinlost_ThirdPartyData]

GO
GRANT SELECT ON [rptDepWinlost_ThirdParty] TO [bodbAdminNet] AS [dbo]
GO
GRANT SELECT ON [rptDepWinlost_ThirdParty] TO [bodbLicenseeNet] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [rptDepWinlost_ThirdParty_Performance](
	[Winlostdate] [date] NOT NULL,
	[Custid] [int] NOT NULL,
	[SiteId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Currency] [int] NOT NULL,
	[Turnover] [money] NOT NULL,
	[BetCount] [int] NOT NULL,
	[Winlost] [money] NOT NULL,
	[WinLostA] [money] NOT NULL,
	[CommissionP] [money] NOT NULL,
	[CommissionA] [money] NOT NULL,
	[DrawTO] [money] NOT NULL,
	[DrawBetCount] [int] NOT NULL,
	[ValidBetAmount] [money] NOT NULL,
	[Sporttype] [smallint] NOT NULL,
 CONSTRAINT [CIX_rptDepWinlost_ThirdParty_Performance] PRIMARY KEY CLUSTERED 
(
	[Winlostdate] ASC,
	[ProductId] ASC,
	[Custid] ASC,
	[Sporttype] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [rptDepWinlost_ThirdPartyData]
) ON [rptDepWinlost_ThirdPartyData]

GO
GRANT SELECT ON [rptDepWinlost_ThirdParty_Performance] TO [bodbAdminNet] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [rptKenoWinloss](
	[RptDate] [date] NOT NULL,
	[SiteId] [int] NOT NULL,
	[BetTypeId] [int] NOT NULL,
	[KenoBetTypeId] [int] NULL,
	[ChoiceId] [int] NULL,
	[CurrencyId] [int] NULL,
	[StatusId] [int] NOT NULL,
	[BetCount] [int] NOT NULL,
	[Turnover] [money] NOT NULL,
	[Winloss] [money] NOT NULL
) ON [rptKenoWinlossData_01]

GO
GRANT SELECT ON [rptKenoWinloss] TO [bodbAdminNet] AS [dbo]
GO
GRANT SELECT ON [rptKenoWinloss] TO [bodbLicenseeNet] AS [dbo]
GO
GRANT VIEW DEFINITION ON [rptKenoWinloss] TO [vnteam] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [rptLicCashoutSummary](
	[RowID] [bigint] IDENTITY(1,1) NOT NULL,
	[Winlostdate] [smalldatetime] NOT NULL,
	[CustID] [int] NOT NULL,
	[Currency] [int] NOT NULL,
	[SiteID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[RoleID] [int] NULL,
	[Recommend] [int] NULL,
	[Mrecommend] [int] NULL,
	[Srecommend] [int] NULL,
	[TicketPayout] [money] NULL,
	[CashoutComm] [money] NULL,
	[CashoutAmount] [money] NULL,
	[BuyBackAmt] [money] NULL,
	[BABuyBackAmt] [money] NULL,
	[NumOfCashoutTicket] [int] NULL,
	[NumOfCashoutTrans] [int] NULL
) ON [rptBettingByProductData]

GO
GRANT SELECT ON [rptLicCashoutSummary] TO [bodbAdminNet] AS [dbo]
GO
GRANT SELECT ON [rptLicCashoutSummary] TO [bodbLicenseeNet] AS [dbo]
GO
GRANT SELECT ON [rptLicCashoutSummary] TO [vnteam] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [rptLicIPBetting](
	[keyid] [bigint] IDENTITY(1,1) NOT NULL,
	[winlostdate] [smalldatetime] NULL,
	[Licenseeid] [int] NULL,
	[countrySHORT] [varchar](2) NULL,
	[Currency] [smallint] NULL,
	[CustID] [int] NULL,
	[ip] [varchar](20) NULL,
	[turnover] [money] NULL,
	[winlost] [money] NULL,
	[BetCount] [int] NULL,
	[statusID] [smallint] NULL
) ON [ps_rptLicIPBetting_monthly_new]([winlostdate])
WITH
(
DATA_COMPRESSION = PAGE
)

GO
SET ANSI_PADDING OFF
GO
GRANT SELECT ON [rptLicIPBetting] TO [bodbAdminNet] AS [dbo]
GO
GRANT SELECT ON [rptLicIPBetting] TO [bodbLicenseeNet] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [rptLicWinloss_old](
	[keyid] [bigint] IDENTITY(1,1) NOT NULL,
	[winlostdate] [smalldatetime] NULL,
	[username] [nvarchar](50) NULL,
	[username2] [nvarchar](50) NULL,
	[custid] [int] NULL,
	[roleid] [int] NULL,
	[recommend] [int] NULL,
	[mrecommend] [int] NULL,
	[srecommend] [int] NULL,
	[turnover] [money] NULL,
	[winlost] [money] NULL,
	[awinlost] [money] NULL,
	[mwinlost] [money] NULL,
	[swinlost] [money] NULL,
	[playercomm] [money] NULL,
	[comm] [money] NULL,
	[acomm] [money] NULL,
	[scomm] [money] NULL,
	[winlostvirtual] [money] NULL,
	[commvirtual] [money] NULL,
	[BetCount] [int] NULL,
	[Currency] [smallint] NULL,
	[sporttype] [smallint] NOT NULL,
	[bettype] [smallint] NOT NULL,
	[statusID] [smallint] NOT NULL,
	[isBA] [bit] NOT NULL,
	[isMobile] [bit] NOT NULL
) ON [ps_rptLicWL_old_monthly]([winlostdate])
WITH
(
DATA_COMPRESSION = PAGE
)

GO
GRANT SELECT ON [rptLicWinloss_old] TO [bodbAdminNet] AS [dbo]
GO
GRANT SELECT ON [rptLicWinloss_old] TO [bodbLicenseeNet] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [rptLicWinloss2](
	[keyid] [bigint] IDENTITY(1,1) NOT NULL,
	[winlostdate] [smalldatetime] NULL,
	[username] [nvarchar](50) NULL,
	[username2] [nvarchar](50) NULL,
	[custid] [int] NULL,
	[roleid] [int] NULL,
	[recommend] [int] NULL,
	[mrecommend] [int] NULL,
	[srecommend] [int] NULL,
	[turnover] [money] NULL,
	[winlost] [money] NULL,
	[awinlost] [money] NULL,
	[mwinlost] [money] NULL,
	[swinlost] [money] NULL,
	[playercomm] [money] NULL,
	[comm] [money] NULL,
	[acomm] [money] NULL,
	[scomm] [money] NULL,
	[winlostvirtual] [money] NULL,
	[commvirtual] [money] NULL,
	[BetCount] [int] NULL,
	[Currency] [smallint] NULL,
	[sporttype] [smallint] NOT NULL,
	[bettype] [smallint] NOT NULL,
	[statusID] [smallint] NOT NULL,
	[isBA] [bit] NOT NULL,
	[isMobile] [bit] NOT NULL,
	[betfrom] [nvarchar](1) NOT NULL,
	[BetEffective] [money] NULL,
	[BuyBackAmt] [money] NULL,
	[BABuyBackAmt] [money] NULL
) ON [ps_rptLicensee_monthly]([winlostdate])
WITH
(
DATA_COMPRESSION = PAGE
)

GO
GRANT SELECT ON [rptLicWinloss2] TO [bodbAdminNet] AS [dbo]
GO
GRANT SELECT ON [rptLicWinloss2] TO [bodbLicenseeNet] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [rptLicWinlossGMT](
	[KeyId] [bigint] IDENTITY(1,1) NOT NULL,
	[TimeZone] [smallint] NULL,
	[RptDate] [smalldatetime] NULL,
	[RptDateGMT] [smalldatetime] NULL,
	[Username] [nvarchar](50) NULL,
	[Username2] [nvarchar](50) NULL,
	[Custid] [int] NULL,
	[Roleid] [int] NULL,
	[Recommend] [int] NULL,
	[Mrecommend] [int] NULL,
	[Srecommend] [int] NULL,
	[Bettype] [smallint] NULL,
	[Sporttype] [smallint] NULL,
	[ProductId] [smallint] NULL,
	[Turnover] [money] NULL,
	[Winlost] [money] NULL,
	[AWinlost] [money] NULL,
	[MWinlost] [money] NULL,
	[SWinlost] [money] NULL,
	[PlayerComm] [money] NULL,
	[Comm] [money] NULL,
	[AComm] [money] NULL,
	[SComm] [money] NULL,
	[BetEffective] [money] NULL,
	[WinlostVirtual] [money] NULL,
	[CommVirtual] [money] NULL,
	[BetCount] [int] NULL,
	[Currency] [smallint] NULL,
	[StatusID] [smallint] NULL,
	[IsBA] [bit] NULL,
	[IsMobile] [bit] NULL,
	[Betfrom] [nvarchar](1) NULL
) ON [ps_rptLicWLGMT_monthly]([RptDateGMT])
WITH
(
DATA_COMPRESSION = PAGE
)

GO
GRANT SELECT ON [rptLicWinlossGMT] TO [bodbLicenseeNet] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [rptWinlostbyLeague](
	[winlostdate] [smalldatetime] NULL,
	[matchid] [int] NOT NULL,
	[oddsid] [int] NULL,
	[odds] [smallmoney] NOT NULL,
	[oddstype] [smallint] NULL,
	[bettype] [smallint] NULL,
	[stake] [money] NOT NULL,
	[winlost] [money] NULL,
	[awinlost] [money] NULL,
	[comm] [money] NULL,
	[playercomm] [money] NULL,
	[recommend] [int] NULL,
	[leagueid] [int] NULL,
	[statusID] [tinyint] NULL,
	[isBA] [tinyint] NULL,
	[currency] [int] NULL,
	[betcount] [int] NULL
) ON [ps_rptWinlostbyLeague_monthly]([winlostdate])
WITH
(
DATA_COMPRESSION = PAGE
)

GO
GRANT SELECT ON [rptWinlostbyLeague] TO [bodbLicenseeNet] AS [dbo]
GO
GRANT SELECT ON [rptWinlostbyLeague] TO [vnteam] AS [dbo]
GO
GRANT VIEW DEFINITION ON [rptWinlostbyLeague] TO [vnteam] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sports_ThirdParty](
	[SportType] [smallint] NOT NULL,
	[SportName] [nvarchar](50) NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [CIX_Sports_ThirdParty] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC,
	[SportType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [rptDepWinlost_ThirdPartyData]
) ON [rptDepWinlost_ThirdPartyData]

GO
GRANT SELECT ON [Sports_ThirdParty] TO [bodbAdminNet] AS [dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tbl_Customer_Account](
	[transid] [bigint] NOT NULL,
	[refno] [bigint] NOT NULL,
	[custid] [int] NOT NULL,
	[currency] [int] NOT NULL,
	[transdate] [datetime] NOT NULL,
	[amount] [money] NULL,
	[creator] [int] NULL,
	[TransDesc] [nvarchar](200) NULL,
	[deleted] [bit] NULL,
	[balanceduppreviousday] [bit] NULL,
	[OtherCustid] [int] NULL,
	[recommend] [int] NULL,
	[mrecommend] [int] NULL,
	[srecommend] [int] NULL,
	[transtype] [smallint] NULL
) ON [ps_kpiCustomer_Account_quarterly_new]([transdate])
WITH
(
DATA_COMPRESSION = PAGE
)

GO
GRANT SELECT ON [tbl_Customer_Account] TO [bodbAdminNet] AS [dbo]
GO
GRANT SELECT ON [tbl_Customer_Account] TO [bodbLicenseeNet] AS [dbo]
GO
CREATE CLUSTERED INDEX [CIX_rpt_Betting] ON [rpt_Betting]
(
	[rptDate] ASC,
	[SiteID] ASC,
	[Bettype] ASC,
	[LeagueID] ASC,
	[CurrencyID] ASC,
	[Status] ASC,
	[IsLive] ASC,
	[CustomerCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [ps_rptBetting_monthly]([rptDate])
GO
CREATE CLUSTERED INDEX [CIX_rpt_Betting_BA] ON [rpt_Betting_BA]
(
	[rptDate] ASC,
	[SiteID] ASC,
	[Bettype] ASC,
	[LeagueID] ASC,
	[CurrencyID] ASC,
	[Status] ASC,
	[IsLive] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [rptBetting_ba_Data]
GO
CREATE CLUSTERED INDEX [CIX_rpt_BettingByProduct] ON [rpt_BettingByProduct]
(
	[rptDate] ASC,
	[SiteID] ASC,
	[ProductID] ASC,
	[CurrencyId] ASC,
	[StatusId] ASC,
	[CustomerCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [CIX_rpt_BettingBySport] ON [rpt_BettingBySport]
(
	[rptDate] ASC,
	[SiteID] ASC,
	[SportType] ASC,
	[CurrencyId] ASC,
	[StatusId] ASC,
	[IsParlay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [rptDepWinlost_ThirdPartyData]
GO
CREATE CLUSTERED INDEX [CIX_rpt_BettingColossusBets] ON [rpt_BettingColossusBets]
(
	[rptDate] ASC,
	[CustID] ASC,
	[Bettype] ASC,
	[CurrencyID] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [rpt_BettingColossusBetsData]
GO
CREATE CLUSTERED INDEX [CIX_Winlossdate] ON [rpt_ThirdPartyWL_ExtraGMT]
(
	[RptDate] ASC,
	[RptDate3rd] ASC,
	[SiteId] ASC,
	[BetTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [rpt_ThirdPartyWL_ExtraGMT]
GO
CREATE CLUSTERED INDEX [CIX_TransDate] ON [rptCustomerActive]
(
	[TransDate] ASC,
	[CustId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [ps_rptCustomerActive_monthly]([TransDate])
GO
CREATE CLUSTERED INDEX [CIX_winlostdate] ON [rptCustomerMatch]
(
	[winlostdate] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [ps_rptCustomerMatch_monthly]([winlostdate])
GO
CREATE CLUSTERED INDEX [CIX_winlostdate] ON [rptCustomerTurnover]
(
	[winlostdate] ASC,
	[recommend] ASC,
	[sporttype] ASC,
	[bettype] ASC,
	[custid] ASC,
	[currency] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [ps_rptCustomerTurnover_monthly]([winlostdate])
GO
SET ANSI_PADDING ON

GO
CREATE CLUSTERED INDEX [CIX_SettlementDate] ON [rptDep_AuditTickets]
(
	[SettlementDate] ASC,
	[Brand] ASC,
	[CurrencyCode] ASC,
	[GameType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [LicenseeData]
GO
CREATE CLUSTERED INDEX [CIX_Winlossdate] ON [rptKenoWinloss]
(
	[RptDate] ASC,
	[SiteId] ASC,
	[BetTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [rptKenoWinlossData_01]
GO
CREATE CLUSTERED INDEX [CIX_rptLicCashoutSummary] ON [rptLicCashoutSummary]
(
	[Winlostdate] ASC,
	[CustID] ASC,
	[SiteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [rptBettingByProductData]
GO
SET ANSI_PADDING ON

GO
CREATE CLUSTERED INDEX [CIX_rptLicIPBetting] ON [rptLicIPBetting]
(
	[winlostdate] ASC,
	[Licenseeid] ASC,
	[countrySHORT] ASC,
	[Currency] ASC,
	[statusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [ps_rptLicIPBetting_monthly_new]([winlostdate])
GO
CREATE CLUSTERED INDEX [CIX_rptLicWinloss_old] ON [rptLicWinloss_old]
(
	[winlostdate] ASC,
	[srecommend] ASC,
	[mrecommend] ASC,
	[recommend] ASC,
	[roleid] ASC,
	[sporttype] ASC,
	[bettype] ASC,
	[statusID] ASC,
	[isBA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [ps_rptLicWL_old_monthly]([winlostdate])
GO
CREATE CLUSTERED INDEX [CIX_rptLicWinloss] ON [rptLicWinloss2]
(
	[winlostdate] ASC,
	[srecommend] ASC,
	[mrecommend] ASC,
	[recommend] ASC,
	[roleid] ASC,
	[sporttype] ASC,
	[bettype] ASC,
	[isBA] ASC,
	[statusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [ps_rptLicensee_monthly]([winlostdate])
GO
CREATE CLUSTERED INDEX [CIX_rptLicWinlossGMT] ON [rptLicWinlossGMT]
(
	[RptDate] ASC,
	[TimeZone] ASC,
	[RptDateGMT] ASC,
	[Custid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [ps_rptLicWLGMT_monthly]([RptDateGMT])
GO
CREATE CLUSTERED INDEX [CIX_winlostdate] ON [rptWinlostbyLeague]
(
	[winlostdate] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [ps_rptWinlostbyLeague_monthly]([winlostdate])
GO
CREATE CLUSTERED INDEX [CIX_KPI_Customer_Account] ON [tbl_Customer_Account]
(
	[transdate] ASC,
	[transtype] ASC,
	[custid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [ps_kpiCustomer_Account_quarterly_new]([transdate])
GO
CREATE NONCLUSTERED INDEX [IX_winlostdate_bettype_currency] ON [bettrans]
(
	[winlostdate] ASC,
	[bettype] ASC,
	[currency] ASC
)
INCLUDE ( 	[liveindicator],
	[customercategory],
	[custid],
	[stake],
	[winlost],
	[actual_stake],
	[awinlost],
	[mwinlost],
	[swinlost],
	[playercomm],
	[comm],
	[acomm],
	[scomm],
	[virtualrate],
	[isBA],
	[statusid],
	[matchid],
	[recommend]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [LicenseeReport_Staging_Data]
GO
CREATE NONCLUSTERED INDEX [IX_DataCheckingLog_WinlostDate] ON [DataCheckingLog]
(
	[WinlostDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [LicenseeReport_Staging_Data]
GO
CREATE NONCLUSTERED INDEX [IX_Sport] ON [rpt_Betting]
(
	[SiteID] ASC,
	[Bettype] ASC,
	[rptDate] ASC,
	[Status] ASC,
	[CurrencyID] ASC,
	[LeagueID] ASC
)
INCLUDE ( 	[Turnover]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [ps_rptBetting_monthly]([rptDate])
GO
CREATE NONCLUSTERED INDEX [IXM_SiteID_Bettype_01] ON [rpt_Betting]
(
	[SiteID] ASC,
	[Bettype] ASC,
	[rptDate] ASC,
	[CurrencyID] ASC
)
INCLUDE ( 	[Status],
	[CustomerCategory],
	[Turnover],
	[WinLoss],
	[BetCount],
	[CommissionA],
	[CommissionP]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [ps_rptBetting_monthly]([rptDate])
GO
CREATE NONCLUSTERED INDEX [IX_Recommend] ON [rptCustomerActive]
(
	[Recommend] ASC,
	[TransDate] ASC
)
INCLUDE ( 	[ProductId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [ps_rptCustomerActive_monthly]([TransDate])
GO
CREATE NONCLUSTERED INDEX [IX_recommend] ON [rptCustomerMatch]
(
	[recommend] ASC,
	[matchid] DESC
)
INCLUDE ( 	[custid],
	[Leagueid]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [ps_rptCustomerMatch_monthly]([winlostdate])
GO
CREATE NONCLUSTERED INDEX [IX_recommend] ON [rptCustomerTurnover]
(
	[recommend] ASC,
	[custid] ASC
)
INCLUDE ( 	[odds],
	[statusID]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [ps_rptCustomerTurnover_monthly]([winlostdate])
GO
CREATE NONCLUSTERED INDEX [IX_rptLicWinlost_old_ag] ON [rptLicWinloss_old]
(
	[recommend] ASC,
	[winlostdate] ASC,
	[roleid] ASC,
	[sporttype] ASC,
	[bettype] ASC,
	[statusID] ASC,
	[isBA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [ps_rptLicWL_old_monthly]([winlostdate])
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [IX_recommend] ON [rptLicWinloss2]
(
	[recommend] ASC,
	[roleid] ASC,
	[isBA] ASC,
	[sporttype] ASC,
	[statusID] ASC
)
INCLUDE ( 	[turnover],
	[winlost],
	[awinlost],
	[playercomm],
	[comm],
	[Currency],
	[BetCount],
	[isMobile],
	[betfrom],
	[custid],
	[BetEffective]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [ps_rptLicensee_monthly]([winlostdate])
GO
CREATE NONCLUSTERED INDEX [IX_recommend] ON [rptLicWinlossGMT]
(
	[Recommend] ASC,
	[Roleid] ASC,
	[StatusID] ASC
)
INCLUDE ( 	[Bettype],
	[IsBA],
	[Turnover],
	[BetCount],
	[Winlost],
	[PlayerComm],
	[Comm],
	[Sporttype],
	[Currency]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [ps_rptLicWLGMT_monthly]([RptDateGMT])
GO
CREATE NONCLUSTERED INDEX [IX_recommend] ON [rptWinlostbyLeague]
(
	[recommend] DESC,
	[matchid] DESC,
	[winlostdate] DESC
)
INCLUDE ( 	[leagueid]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [ps_rptWinlostbyLeague_monthly]([winlostdate])
GO
ALTER TABLE [bettrans] ADD  CONSTRAINT [DF_bettrans_isBA]  DEFAULT ((0)) FOR [isBA]
GO
ALTER TABLE [bettrans] ADD  CONSTRAINT [DF_bettrans_customercategory]  DEFAULT ((-1)) FOR [customercategory]
GO
ALTER TABLE [DataCheckingLog] ADD  CONSTRAINT [DF_DataCheckingLog_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [rpt_ThirdPartyWL_ExtraGMT] ADD  DEFAULT ((0)) FOR [ProgressiveContribution]
GO
ALTER TABLE [rpt_ThirdPartyWL_ExtraGMT] ADD  DEFAULT ((0)) FOR [ProgressivePayout]
GO
ALTER TABLE [rptLicWinloss_old] ADD  CONSTRAINT [DF_rptLicWinloss_old_isMobile]  DEFAULT ((0)) FOR [isMobile]
GO
ALTER TABLE [rptLicWinloss2] ADD  DEFAULT ('') FOR [betfrom]
GO
ALTER TABLE [rptLicWinloss2] ADD  DEFAULT ((0)) FOR [BetEffective]
GO
ALTER TABLE [rptLicWinlossGMT] ADD  CONSTRAINT [DF_rptLicWin_BetEffective]  DEFAULT ((0)) FOR [BetEffective]
GO
ALTER TABLE [rptLicWinlossGMT] ADD  CONSTRAINT [DF_rptLicWin_Betfrom]  DEFAULT ('') FOR [Betfrom]
GO
ALTER TABLE [tbl_Customer_Account] ADD  CONSTRAINT [DF_tbl_Customer_Account_new_deleted]  DEFAULT ((0)) FOR [deleted]
GO
