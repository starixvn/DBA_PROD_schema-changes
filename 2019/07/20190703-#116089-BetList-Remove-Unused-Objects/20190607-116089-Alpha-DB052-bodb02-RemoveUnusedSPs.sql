/*
	Created by: Kos
	Date: 20190607
	Task: Remove unused stored procedures [Redmine ID: #116089]
	DB: DB052.bodb02
*/

USE [bodb02]
GO

EXEC sp_rename 'dbo.Age_CoreBetList_BetTicket_SelBettrans', 'Age_CoreBetList_BetTicket_SelBettrans_delete'
EXEC sp_rename 'dbo.Age_CoreBetList_BetTicket_SelBettrans14', 'Age_CoreBetList_BetTicket_SelBettrans14_delete'
EXEC sp_rename 'dbo.Age_CoreBetList_BetTicket_SelDetail', 'Age_CoreBetList_BetTicket_SelDetail_delete'
EXEC sp_rename 'dbo.Age_CoreBetList_BetTicket_SelMainInfo', 'Age_CoreBetList_BetTicket_SelMainInfo_delete'
EXEC sp_rename 'dbo.Age_CoreBetList_BetTicket_SelTranslog', 'Age_CoreBetList_BetTicket_SelTranslog_delete'
EXEC sp_rename 'dbo.Age_CoreBetList_Mem_SelBetTicket', 'Age_CoreBetList_Mem_SelBetTicket_delete'
EXEC sp_rename 'dbo.Age_CoreBetList_MemTransDate_SelBetTicket', 'Age_CoreBetList_MemTransDate_SelBetTicket_delete'
EXEC sp_rename 'dbo.Age_CoreBetList_SMAEventBettype_SelBetTicket', 'Age_CoreBetList_SMAEventBettype_SelBetTicket_delete'
EXEC sp_rename 'dbo.Age_BetList_SelDeleted_UserList_Ag', 'Age_BetList_SelDeleted_UserList_Ag_delete'
EXEC sp_rename 'dbo.Age_BetList_SelDeleted_UserList_MAg', 'Age_BetList_SelDeleted_UserList_MAg_delete'
EXEC sp_rename 'dbo.Age_BetList_SelDeleted_UserList_SAg', 'Age_BetList_SelDeleted_UserList_SAg_delete'

GO
DROP PROCEDURE dbo.Age_CoreBetList_BetTicket_SelBettrans_xpre;
DROP PROCEDURE dbo.Age_CoreBetList_BetTicket_SelBettrans14_xpre;
DROP PROCEDURE dbo.Age_CoreBetList_BetTicket_SelMainInfo_xpre;
DROP PROCEDURE dbo.Age_CoreBetList_Mem_SelBetTicket_xpre;
DROP PROCEDURE dbo.Age_CoreBetList_MemTransDate_SelBetTicket_xpre;
DROP PROCEDURE dbo.Age_BetList_SelDeleted_UserList_Ag_xpre;
DROP PROCEDURE dbo.Age_BetList_SelDeleted_UserList_MAg_xpre;
DROP PROCEDURE dbo.Age_BetList_SelDeleted_UserList_SAg_xpre;

