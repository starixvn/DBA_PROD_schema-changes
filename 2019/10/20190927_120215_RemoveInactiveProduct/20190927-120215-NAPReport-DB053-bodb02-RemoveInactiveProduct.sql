/*
	Created by: Kos
	Date: 20190927
	Task: NAP Report - Remove inactive products [Redmine ID: #120215]
	DB: DB053.bodb02
*/

USE [bodb02]
GO

EXEC sp_rename 'dbo.Acc_BetList_CheckBet', 'DEL_Acc_BetList_CheckBet'
EXEC sp_rename 'dbo.Acc_Rpt_BetList_Parlay_SubTickets', 'DEL_Acc_Rpt_BetList_Parlay_SubTickets'

GO
DROP PROCEDURE dbo.Acc_BetList_CheckBet_xpre;
DROP PROCEDURE dbo.Acc_BetList_CheckBet_xtest;
DROP PROCEDURE dbo.Acc_Rpt_BetList_Parlay_SubTickets_xtest;

