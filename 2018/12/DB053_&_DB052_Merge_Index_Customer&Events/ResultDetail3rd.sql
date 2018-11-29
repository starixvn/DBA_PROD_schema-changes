/*
	#105522 - DB052/DB053 - Indexes review for Customer & Events
	Run on DB052.bodb02

*/

USE [bodb02]
GO

CREATE NONCLUSTERED INDEX [IX_matchid] ON [dbo].[ResultDetail3rd]
(
	[MatchID] ASC
)
INCLUDE ( 	[SettlementStatusID]) WITH (DROP_EXISTING = OFF, ONLINE = OFF) ON [Event_index]
GO




