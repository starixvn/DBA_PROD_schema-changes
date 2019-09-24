/*
	Task: Sync filter index from db042 to db054
	Run on DB054.bodb02
*/

CREATE NONCLUSTERED INDEX [IX_betrunning_custid] ON [dbo].[bettransRnG]
(
	[custid] ASC
)
INCLUDE ( 	[RefNo],
	[gameID],
	[stake],
	[actual_stake],
	[apositiontaking],
	[mpositiontaking],
	[spositiontaking],
	[discount],
	[adiscount],
	[sdiscount]) 
WHERE ([statusID] IN ((0), (1)))
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [bettransRnG_index]
GO

CREATE NONCLUSTERED INDEX [IX_betrunning_mrecommend] ON [dbo].[bettransRnG]
(
	[mrecommend] ASC,
	[gameID] ASC
)
INCLUDE ( 	[mpositiontaking],
	[spositiontaking],
	[actual_stake],
	[recommend]) 
WHERE ([statusID] IN ((0), (1)))
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [bettransRnG_index]
GO

CREATE NONCLUSTERED INDEX [IX_betrunning_recommend] ON [dbo].[bettransRnG]
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
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [bettransRnG_index]
GO

CREATE NONCLUSTERED INDEX [IX_betrunning_srecommend] ON [dbo].[bettransRnG]
(
	[srecommend] ASC,
	[gameID] ASC
)
INCLUDE ( 	[spositiontaking],
	[actual_stake],
	[mrecommend]) 
WHERE ([statusID] IN ((0), (1)))
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [bettransRnG_index]
GO