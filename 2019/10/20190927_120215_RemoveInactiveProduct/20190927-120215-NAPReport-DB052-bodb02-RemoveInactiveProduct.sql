/*
	Created by: Kos
	Date: 20190927
	Task: NAP Report - Remove inactive products [Redmine ID: #120215]
	DB: DB052.bodb02
*/

USE [bodb02]
GO

EXEC sp_rename 'dbo.Acc_Rpt_BetList_Parlay_SubTickets', 'DEL_Acc_Rpt_BetList_Parlay_SubTickets'
EXEC sp_rename 'dbo.Acc_Rpt_Winloss_12Bet_BetList', 'DEL_Acc_Rpt_Winloss_12Bet_BetList'
EXEC sp_rename 'dbo.Acc_Rpt_Winloss_12Bet_BetList_History', 'DEL_Acc_Rpt_Winloss_12Bet_BetList_History'
EXEC sp_rename 'dbo.Acc_Rpt_Winloss_AB88_BetList', 'DEL_Acc_Rpt_Winloss_AB88_BetList'
EXEC sp_rename 'dbo.Acc_Rpt_Winloss_AB88_BetList_History', 'DEL_Acc_Rpt_Winloss_AB88_BetList_History'
EXEC sp_rename 'dbo.Acc_Rpt_Winloss_ALog_BetList', 'DEL_Acc_Rpt_Winloss_ALog_BetList'
EXEC sp_rename 'dbo.Acc_Rpt_Winloss_ALog_BetList_History', 'DEL_Acc_Rpt_Winloss_ALog_BetList_History'
EXEC sp_rename 'dbo.Acc_Rpt_Winloss_Bezbet_BetList', 'DEL_Acc_Rpt_Winloss_Bezbet_BetList'
EXEC sp_rename 'dbo.Acc_Rpt_Winloss_Bezbet_BetList_History', 'DEL_Acc_Rpt_Winloss_Bezbet_BetList_History'
EXEC sp_rename 'dbo.Acc_Rpt_Winloss_Dela_BetList', 'DEL_Acc_Rpt_Winloss_Dela_BetList'
EXEC sp_rename 'dbo.Acc_Rpt_Winloss_Dela_BetList_History', 'DEL_Acc_Rpt_Winloss_Dela_BetList_History'
EXEC sp_rename 'dbo.Acc_Rpt_Winloss_M88_BetList', 'DEL_Acc_Rpt_Winloss_M88_BetList'
EXEC sp_rename 'dbo.Acc_Rpt_Winloss_M88_BetList_History', 'DEL_Acc_Rpt_Winloss_M88_BetList_History'
EXEC sp_rename 'dbo.Acc_Rpt_Winloss_MayFair_BetList', 'DEL_Acc_Rpt_Winloss_MayFair_BetList'
EXEC sp_rename 'dbo.Acc_Rpt_Winloss_MayFair_BetList_History', 'DEL_Acc_Rpt_Winloss_MayFair_BetList_History'
EXEC sp_rename 'dbo.Acc_Rpt_Winloss_Spondemo_BetList', 'DEL_Acc_Rpt_Winloss_Spondemo_BetList'
EXEC sp_rename 'dbo.Acc_Rpt_Winloss_Spondemo_BetList_History', 'DEL_Acc_Rpt_Winloss_Spondemo_BetList_History'
EXEC sp_rename 'dbo.Acc_Rpt_Winloss_SunCity_BetList', 'DEL_Acc_Rpt_Winloss_SunCity_BetList'
EXEC sp_rename 'dbo.Acc_Rpt_Winloss_SunCity_BetList_History', 'DEL_Acc_Rpt_Winloss_SunCity_BetList_History'
EXEC sp_rename 'dbo.Acc_Rpt_Winloss_TLC_BetList', 'DEL_Acc_Rpt_Winloss_TLC_BetList'
EXEC sp_rename 'dbo.Acc_Rpt_Winloss_TLC_BetList_History', 'DEL_Acc_Rpt_Winloss_TLC_BetList_History'
EXEC sp_rename 'dbo.Acc_Rpt_Winloss_Zzun88_BetList', 'DEL_Acc_Rpt_Winloss_Zzun88_BetList'
EXEC sp_rename 'dbo.Acc_Rpt_Winloss_Zzun88_BetList_History', 'DEL_Acc_Rpt_Winloss_Zzun88_BetList_History'


GO
DROP PROCEDURE dbo.Acc_Rpt_BetList_Parlay_SubTickets_xtest;

