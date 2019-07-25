/*
	Task: Revise index for customer & event part @ match
		+ Add new index named: IX_eventdate_sporttye
		+ Remove index named: IX_matchid_eventstatus
	Run on DB052/53
*/

USE bodb02
GO
--, leagueid, eventstatus
CREATE NONCLUSTERED INDEX [IX_eventdate_sporttye] ON [dbo].[match]
(
	[eventdate] ASC,
	[sporttype] ASC
)INCLUDE (
	[leagueid],
	[eventstatus])
WITH (DROP_EXISTING = OFF, ONLINE = OFF, FILLFACTOR = 100) ON [CustInfo_index]
GO


DROP INDEX [IX_matchid_eventstatus] ON [dbo].[match]
GO