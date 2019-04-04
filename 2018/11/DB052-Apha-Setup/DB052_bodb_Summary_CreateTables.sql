/*
	Task: Create tables on bodb_Summary for setting up Alpha on db052 (#104779)
	Server: DB052

*/
USE [bodb_Summary]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[rptPokerGamesSumWinLoss](
	[WinlostDate] [smalldatetime] NOT NULL,
	[CustID] [int] NOT NULL,
	[Bettype] [smallint] NOT NULL,
	[RoleID] [tinyint] NULL,
	[Recommend] [int] NULL,
	[MRecommend] [int] NULL,
	[SRecommend] [int] NULL,
	[BetCount] [int] NULL,
	[RoundCount] [int] NULL,
	[Turnover] [money] NULL,
	[NetTurnover] [money] NULL,
	[TotalComm] [money] NULL,
	[WinLoss] [money] NULL,
	[InsGemMemberWinLoss] [money] NULL,
	[PlayerComm] [money] NULL,
	[AgWinLoss] [money] NULL,
	[AgComm] [money] NULL,
	[MAgWinLoss] [money] NULL,
	[MAgComm] [money] NULL,
	[SAgWinLoss] [money] NULL,
	[SAgComm] [money] NULL
) ON [DATA]

GO

GRANT SELECT ON [dbo].[rptPokerGamesSumWinLoss] TO [bodbAdminNet] AS [dbo]
GO

GRANT SELECT ON [dbo].[rptPokerGamesSumWinLoss] TO [bodbDownlineNet] AS [dbo]
GO

GRANT SELECT ON [dbo].[rptPokerGamesSumWinLoss] TO [bodbDownlineNetView] AS [dbo]
GO

GRANT SELECT ON [dbo].[rptPokerGamesSumWinLoss] TO [bodbExtAccNet] AS [dbo]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[rptProgressiveGamesContribution](
	[KeyId] [bigint] IDENTITY(1,1) NOT NULL,
	[WinlostDate] [smalldatetime] NULL,
	[CustId] [int] NULL,
	[RoleId] [int] NULL,
	[Recommend] [int] NULL,
	[MRecommend] [int] NULL,
	[SRecommend] [int] NULL,
	[ProductId] [smallint] NULL,
	[GameId] [smallint] NULL,
	[Betcount] [int] NULL,
	[Turnover] [money] NULL,
	[Contribution] [decimal](19, 8) NULL,
	[ContributionA] [money] NULL,
	[ContributionM] [money] NULL,
	[ContributionS] [money] NULL,
 CONSTRAINT [PK_rptProgressiveGamesContribution] PRIMARY KEY NONCLUSTERED 
(
	[KeyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
) ON [DATA]

GO

GRANT SELECT ON [dbo].[rptProgressiveGamesContribution] TO [bodbAdminNet] AS [dbo]
GO

GRANT SELECT ON [dbo].[rptProgressiveGamesContribution] TO [bodbDownlineNet] AS [dbo]
GO

GRANT SELECT ON [dbo].[rptProgressiveGamesContribution] TO [bodbDownlineNetView] AS [dbo]
GO

GRANT SELECT ON [dbo].[rptProgressiveGamesContribution] TO [bodbExtAccNet] AS [dbo]
GO

GRANT SELECT ON [dbo].[rptProgressiveGamesContribution] TO [bodbLicenseeNet] AS [dbo]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[rptProgressiveGamesContribution_tmp](
	[WinlostDate] [smalldatetime] NULL,
	[CustId] [int] NULL,
	[RoleId] [int] NULL,
	[Recommend] [int] NULL,
	[MRecommend] [int] NULL,
	[SRecommend] [int] NULL,
	[ProductId] [smallint] NULL,
	[GameId] [smallint] NULL,
	[Betcount] [int] NULL,
	[Turnover] [money] NULL,
	[Contribution] [decimal](19, 8) NULL,
	[ContributionA] [money] NULL,
	[ContributionM] [money] NULL,
	[ContributionS] [money] NULL
) ON [DATA]

GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[sum_winloss_old](
	[keyid] [bigint] IDENTITY(1,1) NOT NULL,
	[winlostdate] [smalldatetime] NULL,
	[username] [nvarchar](50) NULL,
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
	[BetCount] [int] NULL,
	[grosscomm] [money] NULL,
	[sporttype] [smallint] NOT NULL,
	[bettype] [smallint] NOT NULL,
	[netTurnover] [money] NULL,
	[TunroverNoDraw] [money] NULL
) ON [ps_SUM2_monthly]([winlostdate])
WITH
(
DATA_COMPRESSION = PAGE
)

GO

GRANT SELECT ON [dbo].[sum_winloss_old] TO [bodbAdminNet] AS [dbo]
GO

GRANT SELECT ON [dbo].[sum_winloss_old] TO [bodbDownlineNet] AS [dbo]
GO

GRANT SELECT ON [dbo].[sum_winloss_old] TO [bodbDownlineNetView] AS [dbo]
GO

GRANT SELECT ON [dbo].[sum_winloss_old] TO [bodbExtAccNet] AS [dbo]
GO

GRANT SELECT ON [dbo].[sum_winloss_old] TO [bodbLicenseeNet] AS [dbo]
GO

GRANT SELECT ON [dbo].[sum_winloss_old] TO [vnteam] AS [dbo]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[sum_winlossFB](
	[custid] [int] NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[winlostdate] [datetime] NULL,
	[betcount] [int] NULL,
	[turnover] [money] NULL,
	[winAmt] [money] NULL,
	[loseAmt] [money] NULL
) ON [DATA]

GO

GRANT SELECT ON [dbo].[sum_winlossFB] TO [bodbDownlineNet] AS [dbo]
GO

GRANT SELECT ON [dbo].[sum_winlossFB] TO [bodbDownlineNetView] AS [dbo]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[transfer_fi](
	[transid] [bigint] NOT NULL,
	[custid] [int] NOT NULL,
	[transdate] [datetime] NOT NULL,
	[bettype] [smallint] NULL,
	[actual_stake] [money] NOT NULL,
	[winlost] [money] NOT NULL,
	[TransDesc] [nvarchar](300) NULL,
	[winlostdate] [smalldatetime] NOT NULL,
	[recommend] [int] NOT NULL,
	[mrecommend] [int] NOT NULL,
	[srecommend] [int] NOT NULL,
	[currency] [tinyint] NULL,
	[refno] [bigint] NOT NULL,
	[creator] [int] NULL,
	[CheckerID] [int] NULL,
	[CheckerName] [varchar](50) NULL,
	[checkTime] [datetime] NULL,
	[ActualRate] [float] NULL,
	[isReversal] [bit] NULL
) ON [TRANSFI]

GO

SET ANSI_PADDING OFF
GO

CREATE CLUSTERED INDEX [CIX_rptPokerGamesSumWinLoss] ON [dbo].[rptPokerGamesSumWinLoss]
(
	[WinlostDate] ASC,
	[Recommend] ASC,
	[Bettype] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
GO

CREATE CLUSTERED INDEX [CIX_winlostdate_SMA] ON [dbo].[rptProgressiveGamesContribution]
(
	[WinlostDate] ASC,
	[SRecommend] ASC,
	[MRecommend] ASC,
	[Recommend] ASC,
	[RoleId] ASC,
	[ProductId] ASC,
	[GameId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
GO

CREATE CLUSTERED INDEX [CIX_sum_winloss] ON [dbo].[sum_winloss_old]
(
	[winlostdate] ASC,
	[srecommend] ASC,
	[mrecommend] ASC,
	[recommend] ASC,
	[roleid] ASC,
	[sporttype] ASC,
	[bettype] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = OFF, DATA_COMPRESSION = PAGE) ON [ps_SUM2_monthly]([winlostdate])
GO

CREATE CLUSTERED INDEX [CIX_winlostdate] ON [dbo].[sum_winlossFB]
(
	[winlostdate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
GO

CREATE CLUSTERED INDEX [CIX_winlostdate] ON [dbo].[transfer_fi]
(
	[winlostdate] ASC,
	[custid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [TRANSFI]
GO

CREATE NONCLUSTERED INDEX [IX_Mrecommend] ON [dbo].[rptPokerGamesSumWinLoss]
(
	[MRecommend] ASC,
	[WinlostDate] ASC
)
INCLUDE ( 	[RoleID]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
GO

CREATE NONCLUSTERED INDEX [IX_Srecommend] ON [dbo].[rptPokerGamesSumWinLoss]
(
	[SRecommend] ASC,
	[WinlostDate] ASC
)
INCLUDE ( 	[MRecommend],
	[RoleID]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
GO

CREATE NONCLUSTERED INDEX [IX_Winlostdate_CustId_ProductId_GameId] ON [dbo].[rptProgressiveGamesContribution_tmp]
(
	[WinlostDate] ASC,
	[CustId] ASC,
	[ProductId] ASC,
	[GameId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
GO

CREATE NONCLUSTERED INDEX [IX_refno] ON [dbo].[transfer_fi]
(
	[refno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [TRANSFI_INDEX]
GO

ALTER TABLE [dbo].[rptProgressiveGamesContribution] ADD  CONSTRAINT [DF_rptProgressiveGamesContribution_BetCount]  DEFAULT ((0)) FOR [Betcount]
GO

ALTER TABLE [dbo].[rptProgressiveGamesContribution] ADD  CONSTRAINT [DF_rptProgressiveGamesContribution_Turnover]  DEFAULT ((0)) FOR [Turnover]
GO

ALTER TABLE [dbo].[rptProgressiveGamesContribution] ADD  CONSTRAINT [DF_rptProgressiveGamesContribution_Contribution]  DEFAULT ((0)) FOR [Contribution]
GO

ALTER TABLE [dbo].[rptProgressiveGamesContribution] ADD  CONSTRAINT [DF_rptProgressiveGamesContribution_ContributionA]  DEFAULT ((0)) FOR [ContributionA]
GO

ALTER TABLE [dbo].[rptProgressiveGamesContribution] ADD  CONSTRAINT [DF_rptProgressiveGamesContribution_ContributionM]  DEFAULT ((0)) FOR [ContributionM]
GO

ALTER TABLE [dbo].[rptProgressiveGamesContribution] ADD  CONSTRAINT [DF_rptProgressiveGamesContribution_ContributionS]  DEFAULT ((0)) FOR [ContributionS]
GO

ALTER TABLE [dbo].[sum_winloss_old] ADD  CONSTRAINT [DF_sum_winloss_old2_BetCount]  DEFAULT ((0)) FOR [BetCount]
GO

ALTER TABLE [dbo].[sum_winloss_old] ADD  CONSTRAINT [DF_sum_winloss_old2_grosscomm]  DEFAULT ((0)) FOR [grosscomm]
GO

ALTER TABLE [dbo].[sum_winloss_old] ADD  CONSTRAINT [DF_sum_winloss_old2_sporttype]  DEFAULT ((0)) FOR [sporttype]
GO

ALTER TABLE [dbo].[sum_winloss_old] ADD  CONSTRAINT [DF_sum_winloss_old2_bettype]  DEFAULT ((0)) FOR [bettype]
GO


