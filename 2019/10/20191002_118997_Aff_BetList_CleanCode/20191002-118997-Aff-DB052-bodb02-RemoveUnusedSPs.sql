/*
	Created by: Kos
	Date: 20191002
	Task: Remove Affiliate bet list stored procedures [Redmine ID: #118997]
	DB: DB052.bodb02
*/

USE [bodb02]
GO

DROP PROCEDURE dbo.DEL_Aff_BetList_LC_Detail;
DROP PROCEDURE dbo.DEL_Aff_BetList_RNG_Detail;
DROP PROCEDURE dbo.DEL_Aff_BetList_SelCombinationParlayDetail;
DROP PROCEDURE dbo.DEL_Aff_BetList_SelMatchResult;
DROP PROCEDURE dbo.DEL_Aff_BetList_SelMatchResultNumberGame;
DROP PROCEDURE dbo.DEL_Aff_BetList_SelMatchResultParlay;
DROP PROCEDURE dbo.DEL_Aff_BetList_SelParlayByTransID;
DROP PROCEDURE dbo.DEL_Aff_BetList_SelWinLossByDate;
DROP PROCEDURE dbo.DEL_Aff_CoreBetList_BetTicket_SelBettrans;
DROP PROCEDURE dbo.DEL_Aff_CoreBetList_BetTicket_SelBettrans14;
DROP PROCEDURE dbo.DEL_Aff_CoreBetList_BetTicket_SelDetail;
DROP PROCEDURE dbo.DEL_Aff_CoreBetList_BetTicket_SelMainInfo;
DROP PROCEDURE dbo.DEL_Aff_CoreBetList_BetTicket_SelTranslog;
DROP PROCEDURE dbo.DEL_Aff_CoreBetList_Mem_SelBetTicket;
DROP PROCEDURE dbo.DEL_Aff_User_BetList;
DROP PROCEDURE dbo.DEL_Aff_User_BetListParlay;
DROP PROCEDURE dbo.DEL_Aff_User_BetListResult_SelMatch;
DROP PROCEDURE dbo.DEL_Aff_User_BetListResult_SelMatchNumberGame;
DROP PROCEDURE dbo.DEL_Aff_User_BetListResult_SelMatchParlay;
DROP PROCEDURE dbo.DEL_Aff_User_BetListSystemParlayDetail;
