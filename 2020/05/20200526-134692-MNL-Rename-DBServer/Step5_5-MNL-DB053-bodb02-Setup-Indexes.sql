/*
	Creator:	20200526@vnBobby
	Task:		Replace DB053 to DB055 role - [Redmine: #134692]
	Server:		DB053[.bodb02]
*/


--	BEGIN STEP :
--		DROP table's indexes on bodb02
----------------------------------------------------------------------------------------------------
USE bodb02
GO
DROP INDEX _MS_Sys_47_48_3_mnl ON dbo.odds
DROP INDEX CIX ON dbo.outright
DROP INDEX CIX_eventdate ON dbo.Dot_Admin_Report_MatchInfo
DROP INDEX CIX_leagueID ON dbo.OddsMonitor
DROP INDEX CIX_LicenseeCustIDStatus ON dbo.LicenseeBAHistory
DROP INDEX CIX_logs ON dbo.Logs_delete
DROP INDEX CIX_MatchBettype ON dbo.Dot_Admin_PrecalculateForecast
DROP INDEX CIX_matchID ON dbo.MatchForecast
DROP INDEX CIX_matchID ON dbo.MatchForecast_FlexOdds
DROP INDEX CIX_MatchID ON dbo.UserLog_AcceptBet
DROP INDEX CIX_Sync_ChecksumResult ON dbo.Task_Sync_ChecksumResult_mnl
DROP INDEX CIX_TOControl_TicketDetails_Insert ON dbo.TOControl_TicketDetails_Insert
DROP INDEX CIX_TOControl_Tickets_setting ON dbo.TOControl_Tickets_Setting
DROP INDEX ClX_MatchForecast_Resourceid_matchID ON dbo.MatchForecast_Resourceid
DROP INDEX IX_agent ON dbo.Customer
DROP INDEX IX_betrunning_custid ON dbo.translog
DROP INDEX IX_betrunning_mrecommend ON dbo.translog
DROP INDEX IX_betrunning_recommend ON dbo.translog
DROP INDEX IX_betrunning_srecommend ON dbo.translog
DROP INDEX IX_CI_srecommend ON dbo.custInfo
DROP INDEX IX_custid ON dbo.bettrans
DROP INDEX IX_custid ON dbo.bettrans14
DROP INDEX IX_custid ON dbo.bettransLC
DROP INDEX IX_custid ON dbo.bettransRnG
DROP INDEX IX_custid_mnl ON dbo.bettransRnG14
DROP INDEX IX_custid_ondate_offdate ON dbo.LicenseeBAHistory
DROP INDEX IX_custSub ON dbo.custSub
DROP INDEX IX_delete ON dbo.MatchForecast
DROP INDEX IX_Eventdate ON dbo.match14
DROP INDEX IX_eventdate ON dbo.VSOutright
DROP INDEX IX_eventdate_matchid ON dbo.match
DROP INDEX IX_EventDate_mnl ON dbo.Match3rd
DROP INDEX IX_eventdate_sporttye ON dbo.match
DROP INDEX IX_eventstatsus ON dbo.VSRaceInfo
DROP INDEX IX_eventstatus_sporttype ON dbo.match
DROP INDEX IX_index ON dbo.Dot_admin_Assignment_Operator
DROP INDEX IX_League_sporttype ON dbo.league
DROP INDEX IX_League3rdid_mnl ON dbo.Match3rd
DROP INDEX IX_League3rdid_mnl ON dbo.Match3rd14
DROP INDEX IX_Match_HedgeForecast ON dbo.Match_HedgeForecast
DROP INDEX IX_matchid ON dbo.Dot_Admin_Assignment_Trader
DROP INDEX IX_matchid ON dbo.odds
DROP INDEX IX_matchID ON dbo.OddsMonitor
DROP INDEX IX_matchid ON dbo.ResultDetail3rd
DROP INDEX IX_mrecommend ON dbo.bettrans
DROP INDEX IX_mrecommend ON dbo.bettrans14
DROP INDEX IX_mrecommend ON dbo.bettransLC
DROP INDEX IX_mrecommend ON dbo.bettransRnG
DROP INDEX IX_odds14 ON dbo.odds14
DROP INDEX IX_oddsstatus ON dbo.outright
DROP INDEX IX_recommend ON dbo.bettrans
DROP INDEX IX_recommend ON dbo.bettrans14
DROP INDEX IX_recommend ON dbo.bettransLC
DROP INDEX IX_recommend ON dbo.bettransRnG
DROP INDEX IX_Recommend ON dbo.Dep_Customer_Archived
DROP INDEX IX_recommend ON dbo.translog
DROP INDEX IX_recommend_mnl ON dbo.bettransRnG14
DROP INDEX IX_RefNo ON dbo.bettransLC
DROP INDEX IX_RefNo ON dbo.bettransLC14
DROP INDEX IX_RefNo ON dbo.bettransRnG
DROP INDEX IX_RefNo ON dbo.bettransRnG14
DROP INDEX IX_refno_bettype ON dbo.bettransG
DROP INDEX IX_refno_bettype ON dbo.bettransm
DROP INDEX IX_Reftable ON dbo.SportBettypeMatrix
DROP INDEX IX_srecommend ON dbo.bettrans
DROP INDEX IX_srecommend ON dbo.bettrans14
DROP INDEX IX_srecommend ON dbo.bettransLC
DROP INDEX IX_srecommend ON dbo.bettransRnG
DROP INDEX IX_sum_winloss_ag ON dbo.sum_winloss
DROP INDEX IX_sum_winloss_ma ON dbo.sum_winloss
DROP INDEX IX_sum_winloss_sa ON dbo.sum_winloss
DROP INDEX IX_Sync_ChecksumResult_Status ON dbo.Task_Sync_ChecksumResult_mnl
DROP INDEX IX_translog_danger ON dbo.translog_lastDanger
DROP INDEX IX_translog_danger2 ON dbo.translog_lastDanger
DROP INDEX IX_translog_danger3 ON dbo.translog_lastDanger
DROP INDEX IX_translog_eventID ON dbo.translog_lastDanger
DROP INDEX IX_tstamp_transid ON dbo.bettrans
DROP INDEX IX_update ON dbo.MatchForecast
DROP INDEX IX_update ON dbo.MatchForecast_FlexOdds
DROP INDEX IX_username2 ON dbo.Customer
DROP INDEX IX_winlostdate ON dbo.bettransG
DROP INDEX IX_winlostdate ON dbo.bettransLC14
DROP INDEX IX_winlostdate ON dbo.bettransRnG14
DROP INDEX IXM_MatchForecast_Resourceid_bettype ON dbo.MatchForecast_Resourceid
DROP INDEX IXM_SportType_matchID_LiveIndicator ON dbo.MatchForecast_betteam
DROP INDEX PK__Match_HedgeForec__2D343BAF ON dbo.Match_HedgeForecast
DROP INDEX PK_ConfigurationReference_FunctionName ON dbo.ConfigurationReference
DROP INDEX PK_ConfigurationReferenceDetail_FunctionName_Contr ON dbo.ConfigurationReferenceDetail
DROP INDEX PK_ConversationCount_FunctionName_ContractName ON dbo.ConversationCount
DROP INDEX PK_ConversationManagement_FunctionName_ContractNam ON dbo.ConversationManagement
DROP INDEX PK_Dot_Admin_AcceptTicketActionLog ON dbo.Dot_Admin_AcceptTicketActionLog
DROP INDEX PK_Dot_admin_Assignment_GetProfile ON dbo.Dot_Admin_Assignment_Profile
DROP INDEX PK_Dot_admin_Assignment_Operator ON dbo.Dot_admin_Assignment_Operator
DROP INDEX PK_Dot_Admin_Assignment_Trade ON dbo.Dot_Admin_Assignment_Trader
DROP INDEX PK_Dot_Admin_Report_MarketBettype ON dbo.Dot_Admin_Report_MarketBettype
DROP INDEX PK_Dot_Admin_Report_MatchInfo ON dbo.Dot_Admin_Report_MatchInfo
DROP INDEX PK_ExchangeDaily ON dbo.ExchangeDaily
DROP INDEX PK_ExchangeDailyXE ON dbo.ExchangeDailyXE
DROP INDEX PK_Fnc_Asset ON dbo.FncAsset
DROP INDEX PK_HorseTotesheet ON dbo.HorseFormGuide
DROP INDEX PK_JackpotWin ON dbo.JackpotWin
DROP INDEX PK_odds14 ON dbo.odds14
DROP INDEX PK_oddsExtData ON dbo.oddsExtData
DROP INDEX PK_outright ON dbo.outright
DROP INDEX PK_RiskInfo ON dbo.RiskInfo
DROP INDEX PK_TOControl_LevelSetting ON dbo.TOControl_LevelSetting
DROP INDEX PK_TOControl_Transition ON dbo.TOControl_Transition
DROP INDEX PK_TOControl_Transition_mon_xtest ON dbo.TOControl_Transition_mon_xtest
DROP INDEX PK_translog_lastDanger ON dbo.translog_lastDanger
DROP INDEX PK_UserLog_AcceptBet ON dbo.UserLog_AcceptBet
DROP INDEX PK_VirtualMapping ON dbo.VirtualMapping
DROP INDEX PK_WinLimit_GlobalSetting ON dbo.WinLimit_GlobalSetting
DROP INDEX PK_winlostdate ON dbo.bettransm14

/*
* Create new table's indexes
*
*/
/****** Object:  Index [IX_bettransm]    Script Date: 6/4/2020 6:08:14 AM ******/
CREATE CLUSTERED INDEX [IX_bettransm] ON [dbo].[bettransm]
(
	[custid] ASC,
	[refno] ASC
) ON [BettransM_table]
GO

/****** Object:  Index [PK_oddsos14]    Script Date: 6/4/2020 6:09:50 AM ******/
ALTER TABLE [dbo].[oddsOS14] ADD  CONSTRAINT [PK_oddsos14] PRIMARY KEY NONCLUSTERED 
(
	[oddsid] ASC
) ON [OddsOS14_index]
GO


/****** Object:  Index [PK_outright]    Script Date: 6/4/2020 6:10:43 AM ******/
ALTER TABLE [dbo].[outright] ADD  CONSTRAINT [PK_outright] PRIMARY KEY CLUSTERED 
(
	[orid] ASC
) ON [INDEX]
GO

/****** Object:  Index [PK_TaskClearTicketList_rn]    Script Date: 6/4/2020 6:11:24 AM ******/
ALTER TABLE [dbo].[Task_ClearTicket_List] ADD  CONSTRAINT [PK_TaskClearTicketList_rn] PRIMARY KEY CLUSTERED 
(
	[rn] ASC
) ON [DATA]
GO

/****** Object:  Index [_MS_Sys_16_25040500]    Script Date: 6/4/2020 6:12:13 AM ******/
CREATE NONCLUSTERED INDEX [_MS_Sys_16_25040500] ON [dbo].[bettransG]
(
	[refno] ASC
) ON [BettransG]
GO

/****** Object:  Index [_MS_Sys_47_48_3]    Script Date: 6/4/2020 6:12:38 AM ******/
CREATE NONCLUSTERED INDEX [_MS_Sys_47_48_3] ON [dbo].[odds]
(
	[bettype] ASC,
	[oddsstatus] ASC
)
INCLUDE ( 	
	[oddsid],
	[matchid],
	[hdp1],
	[hdp2],
	[odds1a],
	[odds2a],
	[odds1hkc],
	[odds2hkc],
	[maxbet],
	[sporttype]
)  ON [DATA]
GO

/****** Object:  Index [bettrans1423]    Script Date: 6/4/2020 6:13:19 AM ******/
CREATE NONCLUSTERED INDEX [bettrans1423] ON [dbo].[bettrans14]
(
	[custid] ASC,
	[matchid] ASC,
	[ruben] ASC,
	[bettype] ASC,
	[winlost] ASC,
	[awinlost] ASC,
	[mwinlost] ASC,
	[actual_stake] ASC,
	[currency] ASC,
	[scomm] ASC,
	[swinlost] ASC
) ON [Bettrans14_index]
GO

/****** Object:  Index [IX_bettrans3]    Script Date: 6/4/2020 6:13:47 AM ******/
CREATE NONCLUSTERED INDEX [IX_bettrans3] ON [dbo].[bettrans14]
(
	[recommend] ASC
) ON [Bettrans14_index]
GO

/****** Object:  Index [IX_bettrans4]    Script Date: 6/4/2020 6:14:04 AM ******/
CREATE NONCLUSTERED INDEX [IX_bettrans4] ON [dbo].[bettrans14]
(
	[mrecommend] ASC
) ON [Bettrans14_index]
GO

/****** Object:  Index [IX_custid]    Script Date: 6/4/2020 6:14:39 AM ******/
CREATE NONCLUSTERED INDEX [IX_custid] ON [dbo].[bettransRnG14]
(
	[custid] ASC
) ON [bettransRnG14_index]
GO

/****** Object:  Index [IX_custinfo]    Script Date: 6/4/2020 6:15:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_custinfo] ON [dbo].[custInfo]
(
	[mrecommend] ASC,
	[roleid] ASC
)
INCLUDE ( 	[closed],
	[reject],
	[credit],
	[DisableCasino]
)  ON [CustInfo_index]
GO


/****** Object:  Index [IX_EventDate]    Script Date: 6/4/2020 6:15:55 AM ******/
CREATE NONCLUSTERED INDEX [IX_EventDate] ON [dbo].[Match3rd]
(
	[EventDate] ASC,
	[EventStatus] ASC,
	[VendorEventDate] ASC,
	[SportType] ASC,
	[League3rdId] ASC
) ON [Event3rd_index]
GO

/****** Object:  Index [IX_League3rdid]    Script Date: 6/4/2020 6:16:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_League3rdid] ON [dbo].[Match3rd]
(
	[League3rdId] ASC,
	[HomeId] ASC,
	[AwayId] ASC,
	[Match3rdId] ASC
) ON [Event3rd_index]
GO

/****** Object:  Index [IX_League3rdid]    Script Date: 6/4/2020 6:17:27 AM ******/
CREATE NONCLUSTERED INDEX [IX_League3rdid] ON [dbo].[Match3rd14]
(
	[League3rdId] ASC,
	[HomeId] ASC,
	[AwayId] ASC,
	[Match3rdId] ASC
) ON [Event3rd14_index]
GO

/****** Object:  Index [IX_League_sporttype]    Script Date: 6/4/2020 6:16:21 AM ******/
CREATE NONCLUSTERED INDEX [IX_League_sporttype] ON [dbo].[League]
(
	[sporttype] ASC
)
INCLUDE ( 	
	[leagueid],
	[isTest],
	[leaguename],
	[IsActive]
)  ON [Event_index]
GO

/****** Object:  Index [IX_leagueid]    Script Date: 6/4/2020 6:17:51 AM ******/
CREATE NONCLUSTERED INDEX [IX_leagueid] ON [dbo].[match]
(
	[leagueid] ASC
)
INCLUDE ( 	
	[showtime],
	[exrisk],
	[sporttype],
	[matchid],
	[homeid],
	[awayid],
	[eventstatus],
	[eventdate],
	[matchcode],
	[kickofftime],
	[IsNeutral])  ON [DATA]
GO

/****** Object:  Index [IX_matchid_eventstatus]    Script Date: 6/4/2020 6:18:17 AM ******/
CREATE NONCLUSTERED INDEX [IX_matchid_eventstatus] ON [dbo].[match]
(
	[eventstatus] ASC
)
INCLUDE ( 	
	[sporttype],
	[matchid],
	[leagueid],
	[matchcode],
	[homeid],
	[awayid],
	[showtime],
	[IsNeutral])  ON [Event_index]
GO

/****** Object:  Index [IX_monitor_recommend]    Script Date: 6/4/2020 6:18:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_monitor_recommend] ON [dbo].[bettrans]
(
	[recommend] ASC,
	[transid] DESC
)
INCLUDE ( 	
	[odds],
	[stake],
	[livehomescore],
	[liveawayscore],
	[liveindicator],
	[betteam],
	[custid],
	[actual_stake],
	[Username],
	[matchid],
	[refno],
	[transdate],
	[oddsid],
	[betid],
	[hdp1],
	[hdp2],
	[status],
	[ip],
	[oddstype],
	[betcheck],
	[transdesc],
	[oddsspread],
	[SecAcceptFlag],
	[checktime],
	[bettype],
	[betdaqid],
	[ExtraInfo],
	[WalletType],
	[RefCode],
	[betfrom],
	[currency]) 
WHERE ([statusID] IN ((0), (1)))
 ON [bettrans_index1]
GO

/****** Object:  Index [IX_recommend]    Script Date: 6/4/2020 6:19:24 AM ******/
CREATE NONCLUSTERED INDEX [IX_recommend] ON [dbo].[bettransRnG14]
(
	[recommend] ASC,
	[winlostdate] ASC
) ON [bettransRnG14_index]
GO

/****** Object:  Index [IX_WinLostDate]    Script Date: 6/4/2020 6:20:31 AM ******/
CREATE NONCLUSTERED INDEX [IX_WinLostDate] ON [dbo].[translog]
(
	[winlostdate] ASC
)
INCLUDE ( 	[statusID]) 
 ON [translog_index]
GO