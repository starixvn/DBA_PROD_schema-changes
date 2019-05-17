/*
	Task: Optimize indexes for event tables of Alpha/LRF Forecast DBs
	Database: DB042.bodb02, DB054.bodb02

*/

USE [bodb02]
GO

SET ANSI_PADDING ON
GO


--========================================================================
----league

CREATE NONCLUSTERED INDEX [IX_League_sporttype] ON [dbo].[League]
(
	[sporttype] ASC
)
INCLUDE ( 	[leagueid],
	[isTest],
	[leaguename],
	[IsActive]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = ON, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Event_index]
GO


--========================================================================
----match

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
	[kickofftime],
	[IsNeutral]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = ON, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [DATA]
GO


--========================================================================
----Outright

ALTER TABLE [dbo].[outright] DROP CONSTRAINT [PK_outright]
GO
DROP INDEX [CIX] ON [dbo].[outright] WITH ( ONLINE = OFF )
GO
ALTER TABLE [dbo].[outright] ADD  CONSTRAINT [PK_outright] PRIMARY KEY CLUSTERED 
(
	[orid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [INDEX]
GO


--========================================================================
----VSOutright

DROP INDEX [IX_eventdate] ON [dbo].[VSOutright]
GO

--========================================================================
----VSRaceInfo

DROP INDEX [IX_eventstatsus] ON [dbo].[VSRaceInfo]
GO