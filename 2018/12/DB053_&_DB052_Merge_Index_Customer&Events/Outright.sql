/*
	#105522 - DB052/DB053 - Indexes review for Customer & Events
	Run on DB052.bodb02

*/

CREATE NONCLUSTERED INDEX [IX_eventdate] ON [dbo].[outright]
(
	[eventdate] ASC,
	[oddsstatus] ASC
)
INCLUDE ( 	[leagueid],
	[groupmatch]) WITH (DROP_EXISTING = OFF, ONLINE = OFF) ON [INDEX]
GO
