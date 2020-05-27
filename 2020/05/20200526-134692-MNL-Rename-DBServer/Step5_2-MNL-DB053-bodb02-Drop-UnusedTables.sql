/*
	Creator:	20200526@vnBobby
	Task:		Replace DB053 to DB055 role - [Redmine: #134692]
	Server:		DB053[.bodb02]
*/


--	BEGIN STEP :
--		Drop unused tables on bodb02
----------------------------------------------------------------------------------------------------
USE bodb02
GO

DROP TABLE sb.ConfigurationReference
DROP TABLE sb.ConfigurationReferenceDetail
DROP TABLE sb.ConversationCount
DROP TABLE sb.ConversationManagement
DROP TABLE sb.Logs_delete
DROP TABLE dbo.Dot_Admin_AcceptTicketActionLog
DROP TABLE dbo.Dot_admin_Assignment_Operator
DROP TABLE dbo.Dot_Admin_Assignment_Profile
DROP TABLE dbo.Dot_Admin_Assignment_Trader
DROP TABLE dbo.Dot_Admin_PrecalculateForecast
DROP TABLE dbo.Dot_Admin_Report_MarketBettype
DROP TABLE dbo.Dot_Admin_Report_MatchInfo
DROP TABLE dbo.ExchangeDaily
DROP TABLE dbo.ExchangeDailyXE
DROP TABLE dbo.FncAsset
DROP TABLE dbo.HorseFormGuide
DROP TABLE dbo.JackpotWin
DROP TABLE dbo.Match_HedgeForecast
DROP TABLE dbo.MatchForecast
DROP TABLE dbo.MatchForecast_betteam
DROP TABLE dbo.MatchForecast_FlexOdds
DROP TABLE dbo.MatchForecast_Resourceid
DROP TABLE dbo.oddsExtData
DROP TABLE dbo.OddsMonitor
DROP TABLE dbo.RiskInfo
DROP TABLE dbo.Task_Sync_ChecksumResult_mnl
DROP TABLE dbo.TOControl_GlobalVariables
DROP TABLE dbo.TOControl_LevelSetting
DROP TABLE dbo.TOControl_TicketDetails_Insert
DROP TABLE dbo.TOControl_Tickets_Setting
DROP TABLE dbo.TOControl_Transition
DROP TABLE dbo.TOControl_Transition_mon_xtest
DROP TABLE dbo.translog_lastDanger
DROP TABLE dbo.UserLog_AcceptBet
DROP TABLE dbo.VirtualMapping
DROP TABLE dbo.WinLimit_GlobalSetting