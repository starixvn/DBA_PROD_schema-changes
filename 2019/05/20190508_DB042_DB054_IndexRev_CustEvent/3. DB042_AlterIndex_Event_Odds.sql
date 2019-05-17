/*
	Task: Optimize indexes for table odds/odds14 of Alpha/LRF Forecast DBs
	Database: DB042.bodb02, DB054.bodb02

*/

USE [bodb02]
GO

SET ANSI_PADDING ON
GO


--========================================================================
----Odds

ALTER TABLE [dbo].[odds] DROP CONSTRAINT [PK_odds]
GO

DROP INDEX [IX_odds] ON [dbo].[odds] WITH ( ONLINE = OFF )
GO

DROP INDEX [UIX_GetAnOdds] ON [dbo].[odds]
GO

ALTER TABLE [dbo].[odds] ADD  CONSTRAINT [PK_odds] PRIMARY KEY CLUSTERED 
(
	[oddsid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Odds_Index]
GO

CREATE NONCLUSTERED INDEX [IX_matchid] ON [dbo].[odds]
(
	[matchid] ASC
)
INCLUDE ( 	[oddsid],
	[hdp2],
	[hdp1],
	[switch],
	[odds1a],
	[odds2a],
	[oddsstatus],
	[livehomescore],
	[liveawayscore]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [Odds_Index]
GO

CREATE NONCLUSTERED INDEX [_MS_Sys_47_48_3] ON [dbo].[odds]
(
	[bettype] ASC,
	[oddsstatus] ASC
)
INCLUDE ( 	[oddsid],
	[matchid],
	[hdp1],
	[hdp2],
	[odds1a],
	[odds2a],
	[odds1hkc],
	[odds2hkc],
	[maxbet],
	[sporttype]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = ON, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [DATA]

GO

--========================================================================
----Odds14

DROP INDEX [IX_odds14] ON [dbo].[odds14] WITH ( ONLINE = OFF )
GO

ALTER TABLE [dbo].[odds14] DROP CONSTRAINT [PK_odds14]
GO

ALTER TABLE [dbo].[odds14] ADD  CONSTRAINT [PK_odds14] PRIMARY KEY CLUSTERED 
(
	[oddsid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Event_index]
GO













