/*
	Created by: Kos
	Date: 20190927
	Task: NAP Report - Remove inactive products [Redmine ID: #120215]
	DB: DB061.bodb02
*/

USE [bodb02]
GO

EXEC sp_rename 'dbo.Acc_BetList_CheckBet', 'DEL_Acc_BetList_CheckBet'
EXEC sp_rename 'dbo.Acc_BetList_SelWinloss_Mem2', 'DEL_Acc_BetList_SelWinloss_Mem2'
EXEC sp_rename 'dbo.Acc_Rpt_BetList_BetBuilder_Detail', 'DEL_Acc_Rpt_BetList_BetBuilder_Detail'

GO
DROP PROCEDURE dbo.Acc_BetList_CheckBet_UAT1;
DROP PROCEDURE dbo.Acc_BetList_CheckBet_UAT2;
DROP PROCEDURE dbo.Acc_BetList_CheckBet_UAT3;
DROP PROCEDURE dbo.Acc_BetList_CheckBet_xtest;
DROP PROCEDURE dbo.Acc_BetList_SelWinloss_Mem2_UAT1;
DROP PROCEDURE dbo.Acc_BetList_SelWinloss_Mem2_xpre;
DROP PROCEDURE dbo.Acc_BetList_SelWinloss_Mem2_xtest;
DROP PROCEDURE dbo.Acc_Rpt_BetList_BetBuilder_Detail_xtest;
