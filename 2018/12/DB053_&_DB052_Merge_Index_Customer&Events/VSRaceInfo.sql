/*
	#105522 - DB052/DB053 - Indexes review for Customer & Events
	Run on DB052.bodb02

*/

USE [bodb02]
GO

CREATE NONCLUSTERED INDEX [IX_eventstatsus] ON [dbo].[VSRaceInfo]
(
	[EventStatus] ASC
)
INCLUDE ( 	[EventID],
	[SportType],
	[BetStatus],
	[LeagueID],
	[EventTime]) WITH (DROP_EXISTING = OFF, ONLINE = OFF) ON [Event_index]
GO


