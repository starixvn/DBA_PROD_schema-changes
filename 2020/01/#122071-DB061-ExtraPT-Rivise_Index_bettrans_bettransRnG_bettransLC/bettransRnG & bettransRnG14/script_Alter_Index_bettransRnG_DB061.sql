USE [bodb02]
GO

/****** Object:  Index [IX_WinLostDate_StatusId]    Script Date: 4/24/2019 1:23:52 PM ******/
DROP INDEX [IX_WinLostDate_StatusId] ON [dbo].[bettransRnG]
GO

/****** Object:  Index [IX_WinLostDate_StatusId]    Script Date: 4/24/2019 1:23:52 PM ******/
CREATE NONCLUSTERED INDEX [IX_WinLostDate_StatusId] ON [dbo].[bettransRnG]
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
[custid],
[recommend],
[srecommend],
[currency],
[betfrom],
[mrecommend],
[transdate],
[Username],
[status],
[comm],
[productID],
[playercomm],
[epositiontaking]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [bettransRnG_index]
GO


