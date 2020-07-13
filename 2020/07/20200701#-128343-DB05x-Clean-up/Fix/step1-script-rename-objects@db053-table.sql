/*
	Task - Rename object @ DB053.bodb02/bodb_Licensee
*/
use bodb02
go
use bodb02 go
EXEC sp_rename 'dbo.[dbo.DEL_Compile_table]', 'DEL_Compile_table';
EXEC sp_rename 'dbo.[dbo.DEL_BetLucky3Result14]', 'DEL_BetLucky3Result14';
EXEC sp_rename 'dbo.[dbo.DEL_FncAsset]', 'DEL_FncAsset';
EXEC sp_rename 'dbo.[dbo.DEL_HorseFormGuide]', 'DEL_HorseFormGuide';
EXEC sp_rename 'dbo.[dbo.DEL_Scores]', 'DEL_Scores';
EXEC sp_rename 'dbo.[dbo.DEL_TOControl_GlobalVariables]', 'DEL_TOControl_GlobalVariables';
EXEC sp_rename 'dbo.[dbo.DEL_ExchangeDailyXE]', 'DEL_ExchangeDailyXE';
EXEC sp_rename 'dbo.[dbo.DEL___Temp_customer_syncUpd_xtest_20191042]', 'DEL___Temp_customer_syncUpd_xtest_20191042';
EXEC sp_rename 'dbo.[dbo.DEL_ExchangeDaily]', 'DEL_ExchangeDaily';
EXEC sp_rename 'dbo.[dbo.DEL_TOControl_LevelSetting]', 'DEL_TOControl_LevelSetting';
EXEC sp_rename 'dbo.[dbo.DEL___Temp_custinfo_syncUpd_xtest]', 'DEL___Temp_custinfo_syncUpd_xtest';
EXEC sp_rename 'dbo.[dbo.DEL___Temp_custproductstatus_syncUpd_xtest]', 'DEL___Temp_custproductstatus_syncUpd_xtest';

go
use bodb_Licensee
go

EXEC sp_rename 'dbo.[dbo.DEL___Temp_LA_InvoiceHeader_syncUpd_xtest_20191042]', 'DEL___Temp_LA_InvoiceHeader_syncUpd_xtest_20191042';
EXEC sp_rename 'dbo.[dbo.DEL___Temp_LicenseeCustComm_syncUpd_xtest_20191042]', 'DEL___Temp_LicenseeCustComm_syncUpd_xtest_20191042';
EXEC sp_rename 'dbo.[dbo.DEL___Temp_LicenseeGroupComm_syncUpd_xtest_20191042]', 'DEL___Temp_LicenseeGroupComm_syncUpd_xtest_20191042';
EXEC sp_rename 'dbo.[dbo.DEL_DanielTest]', 'DEL_DanielTest';
EXEC sp_rename 'dbo.[dbo.DEL_Lukas_test]', 'DEL_Lukas_test';

use bodb_Summary
go
EXEC sp_rename 'dbo.[dbo.DEL_rptPokerGamesSumWinLoss]', 'DEL_rptPokerGamesSumWinLoss';
EXEC sp_rename 'dbo.[dbo.DEL_CS_SumWinloss_Old]', 'DEL_CS_SumWinloss_Old';
EXEC sp_rename 'dbo.[dbo.DEL_CS_SumCancelled_Old]', 'DEL_CS_SumCancelled_Old';

use bodb_LicenseeReport
go
EXEC sp_rename 'dbo.[dbo.DEL_rptCustomerActive]', 'DEL_rptCustomerActive';
