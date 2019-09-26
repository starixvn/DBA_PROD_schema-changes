
/*
	Task- Change clustered index for bettransm on DB054 to reduce page split
		==> a new clustered index the same with DB061 and bettrans
	Run on DB054
*/
--drop index first
DROP INDEX [IX_matchid] ON [dbo].[bettransm]
GO
DROP INDEX [IX_refno_bettype] ON [dbo].[bettransm]
GO
DROP INDEX [IX_winlostdate] ON [dbo].[bettransm]
GO
ALTER TABLE [dbo].[bettransm] DROP CONSTRAINT [PK_bettransm] --> PK
GO
DROP INDEX [IX_bettransm] ON [dbo].[bettransm] WITH ( ONLINE = OFF ) --> clustered index
GO

--create
CREATE CLUSTERED INDEX [IX_bettransm] ON [dbo].[bettransm]
(
	[refno] ASC
)WITH (FILLFACTOR = 90) ON [BettransM_table]
GO

CREATE NONCLUSTERED INDEX [IX_winlostdate] ON [dbo].[bettransm]
(
	[winlostdate] ASC
)
INCLUDE ( 	[custid]) WITH (FILLFACTOR = 100) ON [BettransM_index]
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
	[winlostdate]) WITH (FILLFACTOR = 100) ON [BettransM_index]
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
	[betcheck]) WITH (FILLFACTOR = 100) ON [BettransM_index]
GO

ALTER TABLE [dbo].[bettransm] ADD  CONSTRAINT [PK_bettransm] PRIMARY KEY NONCLUSTERED 
(
	[transid] ASC
)WITH (FILLFACTOR = 100) ON [BettransM_index]
GO