/*
	Task: https://nexdev.net/issues/106315
	Run on DB06.bodb02
*/

--add more recommend column to included column of IX_report
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
	[transid2],
	[recommend]) WITH (DROP_EXISTING = ON, ONLINE = OFF) ON [Bettrans_index2]
GO