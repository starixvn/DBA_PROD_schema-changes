/*
	Task: Drop unused tables (renamed)
	Run on DB042.bodb02
*/     

use bodb02
go

DROP TABLE DEL_bettrans_forecast
DROP TABLE DEL_bettrans_lastcheck
DROP TABLE DEL_bettrans_lastDanger
DROP TABLE DEL_bettrans_missing
DROP TABLE DEL_bettrans_temp_checking
DROP TABLE DEL_bettrans_trigger
DROP TABLE DEL_betX
DROP TABLE sb.DEL_ConfigurationReference
DROP TABLE sb.DEL_ConfigurationReferenceDetail
DROP TABLE sb.DEL_ConversationCount
DROP TABLE sb.DEL_ConversationManagement
DROP TABLE DEL_custbankinfo
DROP TABLE DEL_del_stakelevel
DROP TABLE DEL_Dot_Admin_Monitor_SuspendLog
DROP TABLE DEL_Dot_Admin_PrecalculateForecast
DROP TABLE DEL_Dot_Admin_Report_MarketBettype
DROP TABLE DEL_Dot_Admin_Report_MatchInfo
DROP TABLE DEL_ExchangeDaily
DROP TABLE sb.DEL_FailedMessageMonitoring
DROP TABLE DEL_FncAsset
DROP TABLE DEL_HorseFormGuide
DROP TABLE DEL_JackpotWin
DROP TABLE sb.DEL_Logs
DROP TABLE DEL_LukasCustIdList
DROP TABLE DEL_LukasCustIdList2
DROP TABLE DEL_match_Danieltest
DROP TABLE DEL_Match_HedgeForecast
DROP TABLE DEL_MatchForecast
DROP TABLE DEL_MatchForecast_betteam
DROP TABLE DEL_MatchForecast_FlexOdds
DROP TABLE DEL_MatchForecast_Resourceid
DROP TABLE DEL_message
DROP TABLE DEL_MONIT_ObjectRecompilation
DROP TABLE DEL_oddsExtData
DROP TABLE DEL_OddsMonitor
DROP TABLE DEL_RefCombination_backup
DROP TABLE DEL_RefCombinationSet_backup
DROP TABLE DEL_RiskInfo
DROP TABLE DEL_SyncIssue
DROP TABLE DEL_SyncIssue_20180706
DROP TABLE DEL_SyncIssue2
DROP TABLE DEL_translog_lastDanger
DROP TABLE DEL_UserLog_AcceptBet
DROP TABLE DEL_VirtualMapping