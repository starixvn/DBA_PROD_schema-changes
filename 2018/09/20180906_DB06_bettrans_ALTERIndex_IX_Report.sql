/*
	Task: Alter index @bettrans for optimizing reset winning report - PokerGames
	Run at DB06.bodb02
*/

USE [bodb02]

GO

CREATE NONCLUSTERED INDEX [IX_Report] ON [dbo].[bettrans]
(
	[winlostdate] ASC,
	[bettype] ASC,
	[ruben] ASC,
	[statusID] ASC,
	[matchid] ASC
)
INCLUDE ( 	[winlost],
	[awinlost],
	[mwinlost],
	[liveindicator],
	[actualrate],
	[actual_stake],
	[scomm],
	[swinlost],
	[virtualrate],
	[tpositiontaking],
	[oddsspread],
	[odds],
	[transid],
	[srecommend],
	[betid],
	[stake],
	[playercomm],
	[apositiontaking],
	[mpositiontaking],
	[betteam],
	[currency],
	[spositiontaking],
	[hdp2],
	[modds],
	[transid2]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = ON, ONLINE = ON, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Bettrans_index2]

GO

