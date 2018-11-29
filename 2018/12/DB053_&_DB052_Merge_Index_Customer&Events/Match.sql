/*
	#105522 - DB052/DB053 - Indexes review for Customer & Events
	Run on DB052/DB053.bodb02

*/

USE [bodb02]
GO

--//run on db052
CREATE NONCLUSTERED INDEX [IX_matchid_eventstatus] ON [dbo].[match]
(
	[eventstatus] ASC
)
INCLUDE ( 	[sporttype],
	[matchid],
	[leagueid],
	[matchcode],
	[homeid],
	[awayid],
	[showtime],
	[IsNeutral]) WITH (DROP_EXISTING = OFF, ONLINE = OFF) ON [Event_index]
GO

--//run on db053
CREATE NONCLUSTERED INDEX [IX_eventdate_matchid] ON [dbo].[match]
(
	[eventdate] ASC,
	[matchid] ASC
)
INCLUDE ( 	[awayid],
	[finalhomescore],
	[finalawayscore],
	[matchcode],
	[leagueid],
	[homeid],
	[kickofftime]) WITH (DROP_EXISTING = OFF, ONLINE = OFF) ON [Event_index]
GO

CREATE NONCLUSTERED INDEX [IX_eventstatus_sporttype] ON [dbo].[match]
(
	[eventstatus] ASC,
	[sporttype] ASC
)
INCLUDE ( 	[leagueid],
	[matchcode]) WITH (DROP_EXISTING = OFF, ONLINE = OFF) ON [Event_index]
GO

