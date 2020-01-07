USE [bodb02]
GO

/****** Object:  Index [IX_WinLostDate_StatusId]    Script Date: 4/25/2019 10:43:35 AM ******/
DROP INDEX [IX_WinLostDate_StatusId] ON [dbo].[bettransLC]
GO

/****** Object:  Index [IX_WinLostDate_StatusId]    Script Date: 4/25/2019 10:43:35 AM ******/
CREATE NONCLUSTERED INDEX [IX_WinLostDate_StatusId] ON [dbo].[bettransLC]
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
[custid],
[recommend],
[srecommend],
[currency],
[productID],
[betfrom],
[mrecommend],
[transdate],
[status],
[acomm],
[comm],
[playercomm],
[epositiontaking]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [bettransLC_index]
GO


