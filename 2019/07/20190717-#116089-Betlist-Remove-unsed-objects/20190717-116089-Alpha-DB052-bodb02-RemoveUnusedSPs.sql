/*
	Created by: Kos
	Date: 20190717
	Task: Remove unused stored procedures [Redmine ID: #116089]
	DB: DB052.bodb02
*/

USE [bodb02]
GO

DROP PROCEDURE dbo.Age_CoreBetList_BetTicket_SelBettrans_delete;
DROP PROCEDURE dbo.Age_CoreBetList_BetTicket_SelBettrans14_delete;
DROP PROCEDURE dbo.Age_CoreBetList_BetTicket_SelDetail_delete;
DROP PROCEDURE dbo.Age_CoreBetList_BetTicket_SelMainInfo_delete;
DROP PROCEDURE dbo.Age_CoreBetList_BetTicket_SelTranslog_delete;
DROP PROCEDURE dbo.Age_CoreBetList_Mem_SelBetTicket_delete;
DROP PROCEDURE dbo.Age_CoreBetList_MemTransDate_SelBetTicket_delete;
DROP PROCEDURE dbo.Age_CoreBetList_SMAEventBettype_SelBetTicket_delete;
DROP PROCEDURE dbo.Age_BetList_SelDeleted_UserList_Ag_delete;
DROP PROCEDURE dbo.Age_BetList_SelDeleted_UserList_MAg_delete;
DROP PROCEDURE dbo.Age_BetList_SelDeleted_UserList_SAg_delete;

