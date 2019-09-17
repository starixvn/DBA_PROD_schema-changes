/*
	Created by: Kos
	Date: 20190910
	Task: Remove Affiliate bet list stored procedures [Redmine ID: #118997]
	DB: DB061.bodb02
*/

USE [bodb02]
GO

EXEC sp_rename 'dbo.Aff_BetList_CashOut_Detail', 'DEL_Aff_BetList_CashOut_Detail'

GO
DROP PROCEDURE dbo.Aff_BetList_CashOut_Detail_UAT3;
DROP PROCEDURE dbo.Aff_BetList_CashOut_Detail_xtest;
