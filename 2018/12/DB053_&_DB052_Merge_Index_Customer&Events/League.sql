/*
	#105522 - DB052/DB053 - Indexes review for Customer & Events
	Run on DB052.bodb02

*/

CREATE NONCLUSTERED INDEX [IX_League_sporttype] ON [dbo].[League]
(
	[sporttype] ASC
)
INCLUDE ( 	[leagueid],
	[isTest]) WITH (DROP_EXISTING = OFF, ONLINE = OFF) ON [Event_index]
GO