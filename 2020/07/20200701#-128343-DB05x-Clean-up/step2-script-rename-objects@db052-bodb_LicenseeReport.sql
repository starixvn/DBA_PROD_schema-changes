/*
	Task - Rename object @ DB052.bodb_LicenseeReport
	20 objects
*/
use bodb_LicenseeReport
go
EXEC sp_rename 'dbo.DBA_Licensee_CheckCount', 'dbo.DEL_DBA_Licensee_CheckCount';
EXEC sp_rename 'dbo.GEN_rptBetting_support', 'dbo.DEL_GEN_rptBetting_support';
EXEC sp_rename 'dbo.GEN_rptBettingByProduct_UAT2', 'dbo.DEL_GEN_rptBettingByProduct_UAT2';
EXEC sp_rename 'dbo.GEN_rptBettingByProduct_xtest', 'dbo.DEL_GEN_rptBettingByProduct_xtest';
EXEC sp_rename 'dbo.GEN_rptBettingBySport_UAT2', 'dbo.DEL_GEN_rptBettingBySport_UAT2';
EXEC sp_rename 'dbo.GEN_rptBettingBySport_xtest', 'dbo.DEL_GEN_rptBettingBySport_xtest';
EXEC sp_rename 'dbo.GEN_rptKPI_Account', 'dbo.DEL_GEN_rptKPI_Account';
EXEC sp_rename 'dbo.GEN_rptKPI_Account_BA', 'dbo.DEL_GEN_rptKPI_Account_BA';
EXEC sp_rename 'dbo.GEN_RptKPI_MTD_Account', 'dbo.DEL_GEN_RptKPI_MTD_Account';
EXEC sp_rename 'dbo.GEN_RptKPI_MTD_Betting', 'dbo.DEL_GEN_RptKPI_MTD_Betting';
EXEC sp_rename 'dbo.GEN_RptKPI_MTD_Betting_3rdproduct', 'dbo.DEL_GEN_RptKPI_MTD_Betting_3rdproduct';
EXEC sp_rename 'dbo.GEN_RptKPI_MTD_Transfer', 'dbo.DEL_GEN_RptKPI_MTD_Transfer';
EXEC sp_rename 'dbo.GEN_rptKPIReports', 'dbo.DEL_GEN_rptKPIReports';
EXEC sp_rename 'dbo.GEN_rptLicCashoutSummary_xtest', 'dbo.DEL_GEN_rptLicCashoutSummary_xtest';
EXEC sp_rename 'dbo.GET_DepositDataToValidate_Betting_xtest', 'dbo.DEL_GET_DepositDataToValidate_Betting_xtest';
EXEC sp_rename 'dbo.GET_DepositDataToValidate_LicenseeWL_xtest', 'dbo.DEL_GET_DepositDataToValidate_LicenseeWL_xtest';
EXEC sp_rename 'dbo.Task_CustomerActive_CopyData', 'dbo.DEL_Task_CustomerActive_CopyData';
EXEC sp_rename 'dbo.Task_CustomerActive_GenDataForPlaytechCS_AGCasino', 'dbo.DEL_Task_CustomerActive_GenDataForPlaytechCS_AGCasino';
EXEC sp_rename 'dbo.Task_CustomerActive_GenDataDaily', 'dbo.DEL_Task_CustomerActive_GenDataDaily';
EXEC sp_rename 'dbo.Task_DepositDataCompare_HouseNetIncome', 'dbo.DEL_Task_DepositDataCompare_HouseNetIncome';