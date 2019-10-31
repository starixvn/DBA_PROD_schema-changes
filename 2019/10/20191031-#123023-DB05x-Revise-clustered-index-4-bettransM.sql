/*
	Task - Addjust index bettransM on DB05x to reduce page split
	Run on DB052/DB053
*/

DROP INDEX [IX_matchid] ON [dbo].[bettransm]
GO

DROP INDEX [IX_refno_bettype] ON [dbo].[bettransm]
GO

ALTER TABLE [dbo].[bettransm] DROP CONSTRAINT [PK_bettransm]
GO

CREATE CLUSTERED INDEX [IX_bettransm] ON [dbo].[bettransm]
(
	[refno] ASC
)WITH (DROP_EXISTING = ON, ONLINE = OFF) ON [BettransM_table]
GO

CREATE NONCLUSTERED INDEX [IX_matchid] ON [dbo].[bettransm]
(
	[matchid] ASC,
	[bettype] ASC
)
INCLUDE ( 	[statuswinlost],
	[refno],
	[transid],
	[status],
	[statusID],
	[winlostdate]) ON [BettransM_index]
GO

CREATE NONCLUSTERED INDEX [IX_refno_bettype] ON [dbo].[bettransm]
(
	[refno] ASC,
	[bettype] ASC
)
INCLUDE ( 	[odds],
	[stake],
	[status],
	[apositiontaking],
	[mpositiontaking],
	[spositiontaking],
	[betcheck]) ON [BettransM_index]
GO

ALTER TABLE [dbo].[bettransm] ADD  CONSTRAINT [PK_bettransm] PRIMARY KEY NONCLUSTERED 
(
	[transid] ASC
) ON [BettransM_index]
GO

