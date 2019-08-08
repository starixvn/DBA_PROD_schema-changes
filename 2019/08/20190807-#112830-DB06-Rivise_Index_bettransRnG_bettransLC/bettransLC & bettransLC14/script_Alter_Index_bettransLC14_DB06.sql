USE [bodb02]
GO
/*
	Task #112830: Revise index IX_WinLostDate_StatusId on bettransLC14 to improve performance reports
		+ Add more gameID field to index key on bettransLC14.IX_WinLostDate_StatusId index
		+ Add more included column on bettransLC14.IX_WinLostDate_StatusId index
	
	Run on DB061.bodb02
*/
CREATE NONCLUSTERED INDEX [IX_WinLostDate_StatusId] ON [dbo].[bettransLC14]
(
	[winlostdate] ASC,
	[gameID] ASC,
	[statusID] ASC
)
INCLUDE ( 	
[winlost],
[awinlost],
[mwinlost],
[actualrate],
[actual_stake],
[scomm],
[swinlost],
[virtualrate],
[tpositiontaking],
[stake],
[custId],
[recommend],
[srecommend],
[Currency],
[productID],
[betfrom],
[mrecommend],
[transdate],
[status],
[acomm],
[comm],
[playercomm]) WITH (DROP_EXISTING = ON, ONLINE = OFF) ON [bettransLC14_index]
GO


