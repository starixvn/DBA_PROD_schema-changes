/*
	Task - Rename object @ DB053.bodb_LicenseeReport
	22 objects
*/
use bodb_LicenseeReport
go
EXEC sp_rename 'dbo.[dbo.DEL_DBA_Licensee_CheckCount]', 'DEL_DBA_Licensee_CheckCount';
EXEC sp_rename 'dbo.[dbo.DEL_GEN_rptBetting_support]', 'DEL_GEN_rptBetting_support';
EXEC sp_rename 'dbo.[dbo.DEL_GEN_rptBetting_xtest]', 'DEL_GEN_rptBetting_xtest';
EXEC sp_rename 'dbo.[dbo.DEL_GEN_rptBettingByProduct_UAT2]', 'DEL_GEN_rptBettingByProduct_UAT2';
EXEC sp_rename 'dbo.[dbo.DEL_GEN_rptBettingByProduct_xtest]', 'DEL_GEN_rptBettingByProduct_xtest';
EXEC sp_rename 'dbo.[dbo.DEL_GEN_rptBettingBySport_UAT2]', 'DEL_GEN_rptBettingBySport_UAT2';
EXEC sp_rename 'dbo.[dbo.DEL_GEN_rptBettingBySport_xtest]', 'DEL_GEN_rptBettingBySport_xtest';
EXEC sp_rename 'dbo.[dbo.DEL_GEN_rptKPI_Account]', 'DEL_GEN_rptKPI_Account';
EXEC sp_rename 'dbo.[dbo.DEL_GEN_rptKPI_Account_BA]', 'DEL_GEN_rptKPI_Account_BA';
EXEC sp_rename 'dbo.[dbo.DEL_GEN_RptKPI_MTD_Account]', 'DEL_GEN_RptKPI_MTD_Account';
EXEC sp_rename 'dbo.[dbo.DEL_GEN_RptKPI_MTD_Betting]', 'DEL_GEN_RptKPI_MTD_Betting';
EXEC sp_rename 'dbo.[dbo.DEL_GEN_RptKPI_MTD_Betting_3rdproduct]', 'DEL_GEN_RptKPI_MTD_Betting_3rdproduct';
EXEC sp_rename 'dbo.[dbo.DEL_GEN_RptKPI_MTD_Transfer]', 'DEL_GEN_RptKPI_MTD_Transfer';
EXEC sp_rename 'dbo.[dbo.DEL_GEN_rptKPIReports]', 'DEL_GEN_rptKPIReports';
EXEC sp_rename 'dbo.[dbo.DEL_GEN_rptLicCashoutSummary_xtest]', 'DEL_GEN_rptLicCashoutSummary_xtest';
EXEC sp_rename 'dbo.[dbo.DEL_GET_DepositDataToValidate_Betting_xtest]', 'DEL_GET_DepositDataToValidate_Betting_xtest';
EXEC sp_rename 'dbo.[dbo.DEL_GET_DepositDataToValidate_LicenseeWL_xtest]', 'DEL_GET_DepositDataToValidate_LicenseeWL_xtest';
EXEC sp_rename 'dbo.[dbo.DEL_Task_CustomerActive_CopyData]', 'DEL_Task_CustomerActive_CopyData';
EXEC sp_rename 'dbo.[dbo.DEL_Task_CustomerActive_GenDataDaily]', 'DEL_Task_CustomerActive_GenDataDaily';
EXEC sp_rename 'dbo.[dbo.DEL_Task_CustomerActive_GenDataForPlaytechCS_AGCasino]', 'DEL_Task_CustomerActive_GenDataForPlaytechCS_AGCasino';
EXEC sp_rename 'dbo.[dbo.DEL_Task_DepositDataCompare_HouseNetIncome]', 'DEL_Task_DepositDataCompare_HouseNetIncome';
EXEC sp_rename 'dbo.[dbo.DEL_Task_PrepareStaging_Patrick_xtest]', 'DEL_Task_PrepareStaging_Patrick_xtest';

GO