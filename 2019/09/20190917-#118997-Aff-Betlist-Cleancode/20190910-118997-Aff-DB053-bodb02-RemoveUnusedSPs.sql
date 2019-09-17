/*
	Created by: Kos
	Date: 20190910
	Task: Remove Affiliate bet list stored procedures [Redmine ID: #118997]
	DB: DB053.bodb02
*/

USE [bodb02]
GO

EXEC sp_rename 'dbo.Aff_CoreBetList_BetTicket_SelBettrans', 'DEL_Aff_CoreBetList_BetTicket_SelBettrans'
EXEC sp_rename 'dbo.Aff_CoreBetList_BetTicket_SelBettrans14', 'DEL_Aff_CoreBetList_BetTicket_SelBettrans14'

GO
DROP PROCEDURE dbo.Aff_BetList_SelWinLossByDate_xtest;
DROP PROCEDURE dbo.Aff_CoreBetList_BetTicket_SelBettrans_xtest;
DROP PROCEDURE dbo.Aff_CoreBetList_BetTicket_SelBettrans14_xtest;
DROP PROCEDURE dbo.Aff_CoreBetList_BetTicket_SelMainInfo_xtest;
DROP PROCEDURE dbo.Aff_CoreBetList_Mem_SelBetTicket_xtest;


