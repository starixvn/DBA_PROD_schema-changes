/*<info serverAlias="DBAGE-bodb02" executers="" viewers="" isFunction="0" isNested="0"></info>*/

CREATE NONCLUSTERED INDEX [IX_matchid] ON [dbo].[bettransm]
(
	[matchid] ASC,
	[custid] ASC
)
INCLUDE([statuswinlost],[bettype],[transid],[status],[statusID],[winlostdate]) 
WITH (DROP_EXISTING = ON, ONLINE = ON) ON [BettransM_index]
GO
