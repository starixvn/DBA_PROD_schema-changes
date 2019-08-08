USE [bodb02]
GO
/*
	Task #112830: Revise index IX_Report on bettrans to improve performance reports
		+ Add more betfrom field to include column on bettrans.IX_Report index
	
	Run on DB061.bodb02
*/
CREATE NONCLUSTERED INDEX [IX_Report] ON [dbo].[bettrans]
(
	[winlostdate] ASC,
	[bettype] ASC,
	[ruben] ASC,
	[statusID] ASC,
	[matchid] ASC
)
INCLUDE ( 	
	[winlost],
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
	[recommend],
	[betfrom]) WITH (DROP_EXISTING = ON, ONLINE = OFF) ON [Bettrans_index2]
GO


