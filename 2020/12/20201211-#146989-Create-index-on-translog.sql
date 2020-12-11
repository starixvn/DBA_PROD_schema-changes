USE [bodb02]
GO
/*
	Task - Create new index on translog
*/
CREATE NONCLUSTERED INDEX [IX_eventId] ON [dbo].[translog]
(
	[eventId] ASC,
	[gameId] ASC
) WITH (ONLINE = ON) ON [translog_index]
GO