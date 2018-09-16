
/*
	Task - Alter index IX_matchid on bettransM to avoid keylookup for Bet_ExecRep_07
	Fix issue replication delay
	Run on DB052.bodb02

	****Current version:
	CREATE NONCLUSTERED INDEX [IX_matchid] ON [dbo].[bettransm]
	(
		[matchid] ASC
	)
	INCLUDE ( 	[statuswinlost],
		[refno]) WITH (FILLFACTOR = 100) ON [BettransM_index]
	GO
*/

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
	[winlostdate]) WITH (DROP_EXISTING = ON, ONLINE = ON, FILLFACTOR = 80) ON [BettransM_index]
GO