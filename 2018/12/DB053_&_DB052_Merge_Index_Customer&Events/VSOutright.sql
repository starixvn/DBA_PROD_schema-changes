/*
	#105522 - DB052/DB053 - Indexes review for Customer & Events
	Run on DB052.bodb02

*/

USE [bodb02]
GO

CREATE NONCLUSTERED INDEX [IX_eventdate] ON [dbo].[VSOutright]
(
	[EventDate] ASC
)
INCLUDE ( 	[EventID]) WITH (DROP_EXISTING = OFF, ONLINE = OFF) ON [Event_index]
GO


