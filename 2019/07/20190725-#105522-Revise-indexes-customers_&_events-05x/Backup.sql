--==========================
DROP INDEX [_MS_Sys_6] ON [dbo].[custInfo]
GO

CREATE NONCLUSTERED INDEX [_MS_Sys_6] ON [dbo].[custInfo]
(
	[mrecommend] ASC
)
INCLUDE ( 	[roleid],
	[credit],
	[closed]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [CustInfo_index]
GO

--=========================
DROP INDEX [IX_matchid_eventstatus] ON [dbo].[match]
GO

CREATE NONCLUSTERED INDEX [IX_matchid_eventstatus] ON [dbo].[match]
(
	[eventstatus] ASC
)
INCLUDE ( 	[sporttype],
	[matchid],
	[leagueid],
	[matchcode],
	[homeid],
	[awayid],
	[showtime],
	[IsNeutral]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Event_index]
GO


--=========================odds
CREATE NONCLUSTERED INDEX [_MS_Sys_47_48_3] ON [dbo].[odds]
(
	[liveindicator] ASC,
	[bettype] ASC,
	[oddsstatus] ASC
)
INCLUDE ( 	[oddsid],
	[matchid],
	[hdp1],
	[hdp2],
	[odds1a],
	[odds2a],
	[odds1hkc],
	[odds2hkc],
	[maxbet],
	[sporttype]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [DATA]
GO
CREATE UNIQUE CLUSTERED INDEX [CIX_oddsid] ON [dbo].[odds]
(
	[oddsid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [DATA]
GO

ALTER TABLE [dbo].[odds] ADD  CONSTRAINT [PK_odds] PRIMARY KEY NONCLUSTERED 
(
	[oddsid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Odds_Index]
GO
CREATE UNIQUE NONCLUSTERED INDEX [UIX_GetAnOdds] ON [dbo].[odds]
(
	[oddsid] ASC
)
INCLUDE ( 	[matchid],
	[bettype],
	[hdp1],
	[hdp2],
	[odds1a],
	[odds2a],
	[livehomescore],
	[oddsstatus],
	[odds1hkf],
	[odds2hkf],
	[oddsspreada],
	[oddsspreadb],
	[oddsspreadd],
	[oddsspreade],
	[oddsspreadf],
	[oddsspreadc],
	[liveawayscore],
	[liveindicator],
	[maxbet],
	[sporttype]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [DATA]
GO