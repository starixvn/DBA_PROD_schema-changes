/*
	Created by: Kos
	Date: 20190910
	Task: Remove Affiliate bet list stored procedures [Redmine ID: #118997]
	DB: DB052.bodb02
*/

USE [bodb02]
GO

EXEC sp_rename 'dbo.Aff_BetList_LC_Detail', 'DEL_Aff_BetList_LC_Detail'
EXEC sp_rename 'dbo.Aff_BetList_RNG_Detail', 'DEL_Aff_BetList_RNG_Detail'
EXEC sp_rename 'dbo.Aff_BetList_SelCombinationParlayDetail', 'DEL_Aff_BetList_SelCombinationParlayDetail'
EXEC sp_rename 'dbo.Aff_BetList_SelMatchResult', 'DEL_Aff_BetList_SelMatchResult'
EXEC sp_rename 'dbo.Aff_BetList_SelMatchResultNumberGame', 'DEL_Aff_BetList_SelMatchResultNumberGame'
EXEC sp_rename 'dbo.Aff_BetList_SelMatchResultParlay', 'DEL_Aff_BetList_SelMatchResultParlay'
EXEC sp_rename 'dbo.Aff_BetList_SelParlayByTransID', 'DEL_Aff_BetList_SelParlayByTransID'
EXEC sp_rename 'dbo.Aff_BetList_SelWinLossByDate', 'DEL_Aff_BetList_SelWinLossByDate'
EXEC sp_rename 'dbo.Aff_CoreBetList_BetTicket_SelBettrans', 'DEL_Aff_CoreBetList_BetTicket_SelBettrans'
EXEC sp_rename 'dbo.Aff_CoreBetList_BetTicket_SelBettrans14', 'DEL_Aff_CoreBetList_BetTicket_SelBettrans14'
EXEC sp_rename 'dbo.Aff_CoreBetList_BetTicket_SelDetail', 'DEL_Aff_CoreBetList_BetTicket_SelDetail'
EXEC sp_rename 'dbo.Aff_CoreBetList_BetTicket_SelMainInfo', 'DEL_Aff_CoreBetList_BetTicket_SelMainInfo'
EXEC sp_rename 'dbo.Aff_CoreBetList_BetTicket_SelTranslog', 'DEL_Aff_CoreBetList_BetTicket_SelTranslog'
EXEC sp_rename 'dbo.Aff_CoreBetList_Mem_SelBetTicket', 'DEL_Aff_CoreBetList_Mem_SelBetTicket'
EXEC sp_rename 'dbo.Aff_User_BetList', 'DEL_Aff_User_BetList'
EXEC sp_rename 'dbo.Aff_User_BetListParlay', 'DEL_Aff_User_BetListParlay'
EXEC sp_rename 'dbo.Aff_User_BetListResult_SelMatch', 'DEL_Aff_User_BetListResult_SelMatch'
EXEC sp_rename 'dbo.Aff_User_BetListResult_SelMatchNumberGame', 'DEL_Aff_User_BetListResult_SelMatchNumberGame'
EXEC sp_rename 'dbo.Aff_User_BetListResult_SelMatchParlay', 'DEL_Aff_User_BetListResult_SelMatchParlay'
EXEC sp_rename 'dbo.Aff_User_BetListSystemParlayDetail', 'DEL_Aff_User_BetListSystemParlayDetail'


GO
DROP PROCEDURE dbo.Aff_BetList_LC_Detail_xtest;
DROP PROCEDURE dbo.Aff_BetList_SelCombinationParlayDetail_UAT1;
DROP PROCEDURE dbo.Aff_BetList_SelCombinationParlayDetail_UAT3;
DROP PROCEDURE dbo.Aff_BetList_SelCombinationParlayDetail_xtest;
DROP PROCEDURE dbo.Aff_BetList_SelMatchResult_UAT2;
DROP PROCEDURE dbo.Aff_BetList_SelMatchResult_UAT3;
DROP PROCEDURE dbo.Aff_BetList_SelMatchResult_UAT4;
DROP PROCEDURE dbo.Aff_BetList_SelMatchResult_xtest;
DROP PROCEDURE dbo.Aff_BetList_SelMatchResultNumberGame_xtest;
DROP PROCEDURE dbo.Aff_BetList_SelMatchResultParlay_UAT1;
DROP PROCEDURE dbo.Aff_BetList_SelMatchResultParlay_UAT3;
DROP PROCEDURE dbo.Aff_BetList_SelMatchResultParlay_xtest;
DROP PROCEDURE dbo.Aff_BetList_SelParlayByTransID_UAT1;
DROP PROCEDURE dbo.Aff_BetList_SelParlayByTransID_UAT3;
DROP PROCEDURE dbo.Aff_BetList_SelParlayByTransID_xtest;
DROP PROCEDURE dbo.Aff_BetList_SelWinLossByDate_UAT1;
DROP PROCEDURE dbo.Aff_BetList_SelWinLossByDate_UAT3;
DROP PROCEDURE dbo.Aff_BetList_SelWinLossByDate_xpre;
DROP PROCEDURE dbo.Aff_BetList_SelWinLossByDate_xtest;
DROP PROCEDURE dbo.Aff_CoreBetList_BetTicket_SelBettrans_xpre;
DROP PROCEDURE dbo.Aff_CoreBetList_BetTicket_SelBettrans_xtest;
DROP PROCEDURE dbo.Aff_CoreBetList_BetTicket_SelBettrans14_xpre;
DROP PROCEDURE dbo.Aff_CoreBetList_BetTicket_SelBettrans14_xtest;
DROP PROCEDURE dbo.Aff_CoreBetList_BetTicket_SelDetail_UAT3;
DROP PROCEDURE dbo.Aff_CoreBetList_BetTicket_SelDetail_xtest;
DROP PROCEDURE dbo.Aff_CoreBetList_BetTicket_SelMainInfo_UAT3;
DROP PROCEDURE dbo.Aff_CoreBetList_BetTicket_SelMainInfo_xpre;
DROP PROCEDURE dbo.Aff_CoreBetList_BetTicket_SelMainInfo_xtest;
DROP PROCEDURE dbo.Aff_CoreBetList_BetTicket_SelTranslog_xpre;
DROP PROCEDURE dbo.Aff_CoreBetList_BetTicket_SelTranslog_xtest;
DROP PROCEDURE dbo.Aff_CoreBetList_Mem_SelBetTicket_UAT3;
DROP PROCEDURE dbo.Aff_CoreBetList_Mem_SelBetTicket_xpre;
DROP PROCEDURE dbo.Aff_CoreBetList_Mem_SelBetTicket_xtest;
DROP PROCEDURE dbo.Aff_User_BetList_xtest;
DROP PROCEDURE dbo.Aff_User_BetListParlay_xTest;
DROP PROCEDURE dbo.Aff_User_BetListResult_SelMatch_xtest;
DROP PROCEDURE dbo.Aff_User_BetListResult_SelMatch_xtest;
DROP PROCEDURE dbo.Aff_User_BetListResult_SelMatchParlay_xtest;
DROP PROCEDURE dbo.Aff_User_BetListSystemParlayDetail_xTest;
