/*
	Created by: Kos
	Date: 20191002
	Task: Remove Affiliate bet list stored procedures [Redmine ID: #118997]
	DB: DB061.bodb_Archive
*/

USE [bodb_Archive]
GO


DROP PROCEDURE dbo.DEL_Aff_BetList_SelWinLossByDate_Old;
DROP PROCEDURE dbo.DEL_Aff_CoreBetList_BetTicket_SelBettransArc;
DROP PROCEDURE dbo.DEL_Aff_CoreBetList_BetTicket_SelDetailArc;
DROP PROCEDURE dbo.DEL_Aff_CoreBetList_BetTicket_SelMainInfoArc;
DROP PROCEDURE dbo.DEL_Aff_CoreBetList_MemArc_SelBetTicket;
