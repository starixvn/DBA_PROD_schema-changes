/*
	Created by: Kos
	Date: 20190717
	Task: Remove unused stored procedures [Redmine ID: #116089]
	DB: DB053.bodb_Age
*/

USE [bodb_Age]
GO

DROP PROCEDURE dbo.Acc_BetListByDayAll_delete;
DROP PROCEDURE dbo.Acc_BetsSelBetList_ByTransID_delete;
DROP PROCEDURE dbo.Acc_BetsSelBetList_ByTransID_Advance_delete;
DROP PROCEDURE dbo.Age_BetList_SelRunningAll_API_delete;
DROP PROCEDURE dbo.Age_BetList_SelRunningByBettype_Ag_delete;
DROP PROCEDURE dbo.Age_BetList_SelRunningByBettype_MAg_delete;
DROP PROCEDURE dbo.Age_BetList_SelRunningByBettypeMatch_SAg_delete;
DROP PROCEDURE dbo.Age_BetList_SelRunningByDate_Mem_delete;
DROP PROCEDURE dbo.Age_CoreBetList_Running_SelBetTicket_delete;
DROP PROCEDURE dbo.Age_SmartPhone_BetList_SelRunningByDate_Mem_delete;
