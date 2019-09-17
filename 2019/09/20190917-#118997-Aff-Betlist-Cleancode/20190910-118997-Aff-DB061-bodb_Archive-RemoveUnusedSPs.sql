/*
	Created by: Kos
	Date: 20190910
	Task: Remove Affiliate bet list stored procedures [Redmine ID: #118997]
	DB: DB061.bodb_Archive
*/

USE [bodb_Archive]
GO

EXEC sp_rename 'dbo.Aff_BetList_SelWinLossByDate_Old', 'DEL_Aff_BetList_SelWinLossByDate_Old'
EXEC sp_rename 'dbo.Aff_CoreBetList_BetTicket_SelBettransArc', 'DEL_Aff_CoreBetList_BetTicket_SelBettransArc'
EXEC sp_rename 'dbo.Aff_CoreBetList_BetTicket_SelDetailArc', 'DEL_Aff_CoreBetList_BetTicket_SelDetailArc'
EXEC sp_rename 'dbo.Aff_CoreBetList_BetTicket_SelMainInfoArc', 'DEL_Aff_CoreBetList_BetTicket_SelMainInfoArc'
EXEC sp_rename 'dbo.Aff_CoreBetList_MemArc_SelBetTicket', 'DEL_Aff_CoreBetList_MemArc_SelBetTicket'

GO
DROP PROCEDURE dbo.Aff_BetList_SelWinLossByDate_Old_UAT1;
DROP PROCEDURE dbo.Aff_BetList_SelWinLossByDate_Old_UAT3;
DROP PROCEDURE dbo.Aff_BetList_SelWinLossByDate_Old_xpre;
DROP PROCEDURE dbo.Aff_BetList_SelWinLossByDate_Old_xtest;
DROP PROCEDURE dbo.Aff_CoreBetList_BetTicket_SelBettransArc_xpre;
DROP PROCEDURE dbo.Aff_CoreBetList_BetTicket_SelBettransArc_xtest;
DROP PROCEDURE dbo.Aff_CoreBetList_BetTicket_SelDetailArc_xtest;
DROP PROCEDURE dbo.Aff_CoreBetList_BetTicket_SelMainInfoArc_xpre;
DROP PROCEDURE dbo.Aff_CoreBetList_BetTicket_SelMainInfoArc_xtest;
DROP PROCEDURE dbo.Aff_CoreBetList_MemArc_SelBetTicket_xpre;
DROP PROCEDURE dbo.Aff_CoreBetList_MemArc_SelBetTicket_xtest;
