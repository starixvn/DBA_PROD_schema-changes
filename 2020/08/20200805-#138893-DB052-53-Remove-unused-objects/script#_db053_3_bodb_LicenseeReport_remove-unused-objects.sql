/*
	Task - Remove unused objects ( table | view | func | procedure)
	Run on DB053.bodb_LicenseeReport
*/
USE bodb_LicenseeReport
GO

DROP TABLE dbo.DEL_rptCustomerActive;
DROP TABLE dbo.DEL_rptKenoWinloss;
DROP TABLE dbo.DEL_tbl_Customer_Account;
DROP VIEW dbo.DEL_view_MGCRNG_ProgressiveContribution_Rate;
DROP PROCEDURE dbo.DEL_DBA_Licensee_CheckCount;
DROP PROCEDURE dbo.DEL_GEN_rptBetting_ColossusBets_support;
DROP PROCEDURE dbo.DEL_GEN_rptBetting_support;
DROP PROCEDURE dbo.DEL_GEN_rptBetting_xtest;
DROP PROCEDURE dbo.DEL_GEN_rptBettingByProduct_UAT2;
DROP PROCEDURE dbo.DEL_GEN_rptBettingByProduct_xtest;
DROP PROCEDURE dbo.DEL_GEN_rptBettingBySport_UAT2;
DROP PROCEDURE dbo.DEL_GEN_rptBettingBySport_xtest;
DROP PROCEDURE dbo.DEL_GEN_rptKPI_Account;
DROP PROCEDURE dbo.DEL_GEN_rptKPI_Account_BA;
DROP PROCEDURE dbo.DEL_GEN_RptKPI_MTD_Account;
DROP PROCEDURE dbo.DEL_GEN_RptKPI_MTD_Betting;
DROP PROCEDURE dbo.DEL_GEN_RptKPI_MTD_Betting_3rdproduct;
DROP PROCEDURE dbo.DEL_GEN_RptKPI_MTD_Transfer;
DROP PROCEDURE dbo.DEL_GEN_rptKPIReports;
DROP PROCEDURE dbo.DEL_GEN_rptLicCashoutSummary_xtest;
DROP PROCEDURE dbo.DEL_GET_DepositDataToValidate_Betting_xtest;
DROP PROCEDURE dbo.DEL_GET_DepositDataToValidate_LicenseeWL_xtest;
DROP PROCEDURE dbo.DEL_Task_CustomerActive_CopyData;
DROP PROCEDURE dbo.DEL_Task_CustomerActive_GenDataDaily;
DROP PROCEDURE dbo.DEL_Task_CustomerActive_GenDataForPlaytechCS_AGCasino;
DROP PROCEDURE dbo.DEL_Task_DepositDataCompare_HouseNetIncome;
DROP PROCEDURE dbo.DEL_Task_KenoWinloss_CopyData;
DROP PROCEDURE dbo.DEL_Task_KenoWinloss_GenDataFromBettrans;
DROP PROCEDURE dbo.DEL_Task_KenoWinloss_GenDataFromBettrans14;
DROP PROCEDURE dbo.DEL_Task_PrepareStaging_Patrick_xtest;
DROP PROCEDURE dbo.DEL_Task_rptKenoWinloss_CheckData;

GO
