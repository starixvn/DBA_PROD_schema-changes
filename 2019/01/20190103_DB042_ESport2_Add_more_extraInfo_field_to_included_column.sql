/*
	Created by: Kos
	Date: 20181219
	Task: Add included columns ExtraInfo to index IX_betrunning_recommend, IX_betrunning_mrecommend, IX_betrunning_srecommend of table bettrans
	DB: DB042.bodb02
*/

USE [bodb02]
GO

CREATE NONCLUSTERED INDEX [IX_betrunning_recommend] ON [dbo].[bettrans]
(
	[recommend] ASC,
	[bettype] ASC,
	[matchid] ASC
)
INCLUDE ( 	[odds],
	[stake],
	[apositiontaking],
	[livehomescore],
	[liveawayscore],
	[liveindicator],
	[betteam],
	[custid],
	[actual_stake],
	[mpositiontaking],
	[spositiontaking],
	[Username],
	[refno],
	[transid],
	[betid],
	[hdp1],
	[hdp2],
	[modds],
	[SecAcceptFlag],
	[checktime],
	[status],
	[transdate],
	[tpositiontaking],
	[discount],
	[adiscount],
	[sdiscount],
	[ip],
	[oddstype],
	[comstatus],
	[betcheck],
	[oddsspread],
	[currency],
	[ExtraInfo]) 
WHERE ([statusID] IN ((0), (1)))
WITH (ONLINE = OFF,DROP_EXISTING = ON) ON [bettrans_index1]
GO

CREATE NONCLUSTERED INDEX [IX_betrunning_mrecommend] ON [dbo].[bettrans]
(
	[mrecommend] ASC,
	[bettype] ASC,
	[matchid] ASC
)
INCLUDE ( 	[odds],
	[stake],
	[mpositiontaking],
	[livehomescore],
	[liveawayscore],
	[liveindicator],
	[betteam],
	[spositiontaking],
	[actual_stake],
	[recommend],
	[custid],
	[Username],
	[refno],
	[transid],
	[betid],
	[hdp1],
	[hdp2],
	[modds],
	[SecAcceptFlag],
	[checktime],
	[status],
	[transdate],
	[apositiontaking],
	[tpositiontaking],
	[discount],
	[adiscount],
	[sdiscount],
	[ip],
	[oddstype],
	[comstatus],
	[betcheck],
	[oddsspread],
	[currency],
	[ExtraInfo]) 
WHERE ([statusID] IN ((0), (1)))
WITH (ONLINE = OFF,DROP_EXISTING = ON) ON [bettrans_index1]
GO

CREATE NONCLUSTERED INDEX [IX_betrunning_srecommend] ON [dbo].[bettrans]
(
	[srecommend] ASC,
	[bettype] ASC,
	[matchid] ASC
)
INCLUDE ( 	[odds],
	[stake],
	[livehomescore],
	[liveawayscore],
	[liveindicator],
	[betteam],
	[spositiontaking],
	[custid],
	[mpositiontaking],
	[actual_stake],
	[mrecommend],
	[recommend],
	[Username],
	[refno],
	[transid],
	[betid],
	[hdp1],
	[hdp2],
	[modds],
	[SecAcceptFlag],
	[checktime],
	[status],
	[transdate],
	[apositiontaking],
	[tpositiontaking],
	[discount],
	[adiscount],
	[sdiscount],
	[ip],
	[oddstype],
	[comstatus],
	[betcheck],
	[oddsspread],
	[currency],
	[ExtraInfo]) 
WHERE ([statusID] IN ((0), (1)))
WITH (ONLINE = OFF,DROP_EXISTING = ON) ON [bettrans_index1]
GO