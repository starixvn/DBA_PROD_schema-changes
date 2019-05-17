/*
	Task: Backup old indexes  - Optimize indexes for table odds/odds14 of Alpha/LRF Forecast DBs
	Database: DB042.bodb02, DB054.bodb02

*/

USE [bodb02]
GO

/****** Object:  Index [IX_odds]    Script Date: 5/12/2019 9:42:08 PM ******/
CREATE CLUSTERED INDEX [IX_odds] ON [dbo].[odds]
(
	[matchid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Odds_table]
GO

USE [bodb02]
GO

/****** Object:  Index [PK_odds]    Script Date: 5/12/2019 9:42:22 PM ******/
ALTER TABLE [dbo].[odds] ADD  CONSTRAINT [PK_odds] PRIMARY KEY NONCLUSTERED 
(
	[oddsid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Odds_index]
GO


USE [bodb02]
GO

/****** Object:  Index [_MS_Sys_47_48_3]    Script Date: 5/12/2019 9:43:20 PM ******/
CREATE NONCLUSTERED INDEX [_MS_Sys_47_48_3] ON [dbo].[odds]
(
	[liveindicator] ASC,
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

USE [bodb02]
GO

/****** Object:  Index [UIX_GetAnOdds]    Script Date: 5/12/2019 9:43:43 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UIX_GetAnOdds] ON [dbo].[odds]
(
	[oddsid] ASC
)
INCLUDE ( 	[matchid],
	[bettype],
	[hdp1],
	[hdp2],
	[odds1a],
	[odds2a],
	[livehomescore],
	[oddsstatus],
	[odds1hkf],
	[odds2hkf],
	[oddsspreada],
	[oddsspreadb],
	[oddsspreadd],
	[oddsspreade],
	[oddsspreadf],
	[oddsspreadc],
	[liveawayscore],
	[liveindicator],
	[maxbet],
	[sporttype]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [DATA]
GO


--======================================================================================================

USE [bodb02]
GO

/****** Object:  Index [IX_odds14]    Script Date: 5/12/2019 9:50:31 PM ******/
CREATE CLUSTERED INDEX [IX_odds14] ON [dbo].[odds14]
(
	[oddsid] ASC,
	[matchid] ASC,
	[bettype] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Event14_table]
GO

USE [bodb02]
GO

/****** Object:  Index [PK_odds14]    Script Date: 5/12/2019 9:50:41 PM ******/
ALTER TABLE [dbo].[odds14] ADD  CONSTRAINT [PK_odds14] PRIMARY KEY NONCLUSTERED 
(
	[oddsid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Event_index]
GO





