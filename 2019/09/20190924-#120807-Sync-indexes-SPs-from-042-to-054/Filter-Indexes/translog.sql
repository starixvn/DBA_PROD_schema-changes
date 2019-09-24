/*
	Task: Sync filter index from db042 to db054
	Run on DB054.bodb02
*/

CREATE NONCLUSTERED INDEX [IX_betrunning_custid] ON [dbo].[translog]
(
	[custid] ASC,
	[gameID] ASC
)
INCLUDE ( 	[translogid],
	[eventID],
	[odds],
	[status],
	[stake],
	[actual_stake],
	[transdate],
	[apositiontaking],
	[mpositiontaking],
	[spositiontaking],
	[discount],
	[adiscount],
	[sdiscount],
	[ip],
	[custom1],
	[custom2],
	[custom3],
	[transdesc],
	[GameId3rd],
	[TranId3rd],
	[LiveIndicator]) 
WHERE ([statusID] IN ((0), (1)))
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [translog_index]
GO

CREATE NONCLUSTERED INDEX [IX_betrunning_mrecommend] ON [dbo].[translog]
(
	[mrecommend] ASC,
	[gameID] ASC
)
INCLUDE ( 	[mpositiontaking],
	[spositiontaking],
	[actual_stake],
	[recommend]) 
WHERE ([statusID] IN ((0), (1)))
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [translog_index]
GO

CREATE NONCLUSTERED INDEX [IX_betrunning_recommend] ON [dbo].[translog]
(
	[recommend] ASC,
	[gameID] ASC
)
INCLUDE ( 	[custid],
	[apositiontaking],
	[actual_stake],
	[mpositiontaking],
	[spositiontaking]) 
WHERE ([statusID] IN ((0), (1)))
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [translog_index]
GO

CREATE NONCLUSTERED INDEX [IX_betrunning_srecommend] ON [dbo].[translog]
(
	[srecommend] ASC,
	[gameID] ASC
)
INCLUDE ( 	[spositiontaking],
	[actual_stake],
	[mrecommend]) 
WHERE ([statusID] IN ((0), (1)))
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [translog_index]
GO