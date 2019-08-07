USE [bodb02]
GO
/*
	Task #112830: Revise index IX_WinLostDate_StatusId on bettransRnG14 to improve performance reports
		+ Add more gameID field to index key on bettransRnG14.IX_WinLostDate_StatusId index
		+ Add more included column on bettransRnG14.IX_WinLostDate_StatusId index
	
	Run on DB061.bodb02
*/
CREATE NONCLUSTERED INDEX [IX_WinLostDate_StatusId] ON [dbo].[bettransRnG14]
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
[ContributionRate],
[BetStake],
[custId],
[recommend],
[srecommend],
[Currency],
[betfrom],
[mrecommend],
[TransId],
[transdate],
[username],
[status],
[comm],
[playercomm]) WITH ( DROP_EXISTING = ON, ONLINE = OFF) ON [bettransRnG14_index]
GO


