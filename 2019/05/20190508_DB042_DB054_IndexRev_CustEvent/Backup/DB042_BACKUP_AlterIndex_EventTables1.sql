/*
	Task: Backup old indexes - Optimize indexes for event tables of Alpha/LRF Forecast DBs
	Database: DB042.bodb02, DB054.bodb02

*/


USE [bodb02]
GO

/****** Object:  Index [IX_League_sporttype]    Script Date: 5/13/2019 12:01:58 AM ******/
CREATE NONCLUSTERED INDEX [IX_League_sporttype] ON [dbo].[League]
(
	[sporttype] ASC
)
INCLUDE ( 	[leagueid],
	[isTest]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = ON, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Event_index]
GO


USE [bodb02]
GO

/****** Object:  Index [IX_leagueid]    Script Date: 5/13/2019 12:02:46 AM ******/
CREATE NONCLUSTERED INDEX [IX_leagueid] ON [dbo].[match]
(
	[leagueid] ASC
)
INCLUDE ( 	[showtime],
	[exrisk],
	[sporttype],
	[matchid],
	[homeid],
	[awayid],
	[eventstatus],
	[eventdate],
	[matchcode],
	[kickofftime]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [DATA]
GO


USE [bodb02]
GO

/****** Object:  Index [CIX]    Script Date: 5/13/2019 12:16:04 AM ******/
CREATE UNIQUE CLUSTERED INDEX [CIX] ON [dbo].[outright]
(
	[orid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [table_event]
GO

USE [bodb02]
GO

/****** Object:  Index [PK_outright]    Script Date: 5/13/2019 12:16:33 AM ******/
ALTER TABLE [dbo].[outright] ADD  CONSTRAINT [PK_outright] PRIMARY KEY NONCLUSTERED 
(
	[orid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [INDEX]
GO


USE [bodb02]
GO

/****** Object:  Index [IX_eventdate]    Script Date: 5/13/2019 12:17:07 AM ******/
CREATE NONCLUSTERED INDEX [IX_eventdate] ON [dbo].[VSOutright]
(
	[EventDate] ASC
)
INCLUDE ( 	[EventID]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Event_index]
GO


USE [bodb02]
GO

/****** Object:  Index [IX_eventstatsus]    Script Date: 5/13/2019 12:17:28 AM ******/
CREATE NONCLUSTERED INDEX [IX_eventstatsus] ON [dbo].[VSRaceInfo]
(
	[EventStatus] ASC
)
INCLUDE ( 	[EventID],
	[SportType],
	[BetStatus],
	[LeagueID],
	[EventTime]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Event_index]
GO


