CREATE TABLE #UnusedSPs (ID INT IDENTITY (1,1),ObjectName VARCHAR (200))	
	
INSERT INTO #UnusedSPs (ObjectName)	
VALUES	
('Lrf_BetList_SelAllByDate_Mem'),
('Lrf_BetList_SelAllByDateHR'),
('Lrf_BetList_SelByDayAll_Mem'),
('Lrf_BetList_SelByDayAll_Mem_Old'),
('Lrf_BetList_SelDeleted'),
('Lrf_BetList_SelDeleted_UserList'),
('Lrf_BetList_SelMatchResult'),
('Lrf_BetList_SelMatchResultNumberGame'),
('Lrf_BetList_SelMatchResultParlay'),
('Lrf_BetList_SelParlayDetail'),
('Lrf_BetList_SelRunningByBettype'),
('Lrf_BetList_SelRunningByBettypeMatch'),
('Lrf_BetList_SelRunningByDate_Mem'),
('Lrf_BetList_SelWinlossByBettypeMatch'),
('Lrf_BetList_SelWinLossByDate_Mem'),
('Lrf_BetList_SelWinLossByDate_Mem_Old'),
('Lrf_BetList_SelWinlossDaily'),
('Lrf_BetList_SelWinlossHR'),
('Lrf_BetList_SelWinlossOutright'),
('Lrf_BetList_SelWinlossParlay'),
('Lrf_BettransSelBetSlip'),
('Lrf_CheckHRAllowedCurrency'),
('Lrf_CustomerSel'),
('Lrf_CustomerSelBalance'),
('Lrf_CustomerSelCheckBelonging'),
('Lrf_CustomerSelCheckEnable'),
('Lrf_CustomerSelStatus'),
('Lrf_f_GetChoice'),
('Lrf_f_GetOddsByBettype'),
('Lrf_f_ShowOddsByBettype'),
('Lrf_Forecast_OddsSelTopByMatch'),
('Lrf_Forecast_Sel1X2'),
('Lrf_Forecast_SelByLeague'),
('Lrf_Forecast_SelHDP'),
('Lrf_Forecast_SelOU'),
('Lrf_Forecast1x2_SelByLeague'),
('Lrf_LeagueSelRunning'),
('Lrf_Result_LeagueSelByDate'),
('Lrf_Result_MatchSelByLeague'),
('Lrf_Result_MatchSelNumberGameByLeague'),
('Lrf_Result_Outright'),
('Lrf_Result_RaceSelByMeeting'),
('Lrf_Result_SportSelByDate'),
('Lrf_Rpt_CommByBettype_HR'),
('Lrf_Rpt_MatchSelResultEntered'),
('Lrf_Rpt_MatchWinLoss'),
('Lrf_Rpt_MatchWinLossDetail'),
('Lrf_Rpt_Outstanding'),
('Lrf_Rpt_WinLoss'),
('Lrf_Rpt_WinLossByBettype'),
('Lrf_Rpt_WinLossDetail'),
('Lrf_SelBalanceUpDay'),
('Lrf_Statement_Mem'),
('Lrf_Statement_Mem_BetSummary'),
('Lrf_Statement_Rpt'),
('Lrf_TotalBets_Sel10'),
('Lrf_TotalBets_Sel1378'),
('Lrf_TotalBets_Sel14'),
('Lrf_TotalBets_Sel16'),
('Lrf_TotalBets_Sel161'),
('Lrf_TotalBets_Sel2021'),
('Lrf_TotalBets_Sel22'),
('Lrf_TotalBets_Sel25'),
('Lrf_TotalBets_Sel6'),
('Lrf_TotalBets_SelHR')



	
select distinct spname from mondb.dbo.Mon_SPPF_report b with (nolock)	
	inner join  mondb.dbo.Mon_SPPF_list l on b.spid = l.spid
where l.spname IN(select objectname from #UnusedSPs)	
	and execution_count > 0 and  b.EventTime >= '2018-09-01 00:00:00'
--order by eventtime desc	
	
select top 10 * from DBMONDW.mondbdw.dbo.Mon_SPPF_report b with (nolock)	
	inner join  DBMONDW.mondbdw.dbo.Mon_SPPF_list l on b.spid = l.spid and b.serverid = l.serverid
where l.servername = 'DB053'	
	and  b.EventTime >= '2018-09-01 00:00:00'
and l.spname in(select objectname COLLATE Latin1_General_CI_AS from #UnusedSPs)	
	
drop table #UnusedSPs	
