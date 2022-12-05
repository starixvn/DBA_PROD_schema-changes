/*<info serverAlias="DBAGE-bodb02"></info>*/

--bettrans==> included more column betdaqid
CREATE NONCLUSTERED INDEX [IX_mrecommend] ON [dbo].[bettrans]
(
	[mrecommend] ASC,
	[winlostdate] ASC
)
INCLUDE([transid],[refno],[statusID],[ruben],[currency],[winlost],[actual_stake],[playercomm],[awinlost],[comm],[mwinlost],[recommend],[acomm],[stake],[apositiontaking],[mpositiontaking],[liveawayscore],[oddsspread],[modds],[liveindicator],[srecommend],[actualrate],[betdaqid]) 
WITH (DROP_EXISTING = ON, ONLINE = ON) ON [Bettrans_index1]
GO

--bettransRnG==> included more columns [BetStake],[adiscount]
CREATE NONCLUSTERED INDEX [IX_mrecommend] ON [dbo].[bettransRnG]
(
	[mrecommend] ASC,
	[winlostdate] ASC
)
INCLUDE([gameID],[productID],[RefNo],[statusID],[currency],[winlost],[actual_stake],[playercomm],[awinlost],[comm],[custid],[mwinlost],[recommend],[acomm],[stake],[apositiontaking],[mpositiontaking],[actualrate],[BetStake],[adiscount]) 
WITH (DROP_EXISTING = ON, ONLINE = ON) ON [bettransRnG_index]
GO

--bettransLC==> included more columns [NetStake],[adiscount]

CREATE NONCLUSTERED INDEX [IX_mrecommend] ON [dbo].[bettransLC]
(
	[mrecommend] ASC,
	[winlostdate] ASC
)
INCLUDE([gameID],[productID],[RefNo],[statusID],[currency],[winlost],[actual_stake],[playercomm],[awinlost],[comm],[custid],[mwinlost],[recommend],[acomm],[stake],[apositiontaking],[mpositiontaking],[actualrate],[NetStake],[adiscount]) 
WITH (DROP_EXISTING = ON, ONLINE = ON) ON [bettransLC_index]
GO
