/*
	Task - Rename object @ DB053.bodb02/bodb_Licensee
*/
use bodb02
go
EXEC sp_rename 'dbo.__Temp_custinfo_syncUpd_xtest', 'dbo.DEL___Temp_custinfo_syncUpd_xtest';
EXEC sp_rename 'dbo.__Temp_customer_syncUpd_xtest_20191042', 'dbo.DEL___Temp_customer_syncUpd_xtest_20191042';
EXEC sp_rename 'dbo.__Temp_custproductstatus_syncUpd_xtest', 'dbo.DEL___Temp_custproductstatus_syncUpd_xtest';
EXEC sp_rename 'dbo.BetLucky3Result14', 'dbo.DEL_BetLucky3Result14';
EXEC sp_rename 'dbo.Compile_table', 'dbo.DEL_Compile_table';
EXEC sp_rename 'dbo.ExchangeDaily', 'dbo.DEL_ExchangeDaily';
EXEC sp_rename 'dbo.ExchangeDailyXE', 'dbo.DEL_ExchangeDailyXE';
EXEC sp_rename 'dbo.FncAsset', 'dbo.DEL_FncAsset';
EXEC sp_rename 'dbo.HorseFormGuide', 'dbo.DEL_HorseFormGuide';
EXEC sp_rename 'dbo.Logs_delete', 'dbo.DEL_Logs_delete';
EXEC sp_rename 'dbo.Scores', 'dbo.DEL_Scores';
EXEC sp_rename 'dbo.TOControl_GlobalVariables', 'dbo.DEL_TOControl_GlobalVariables';
EXEC sp_rename 'dbo.TOControl_LevelSetting', 'dbo.DEL_TOControl_LevelSetting';

go
use bodb_Licensee
go

EXEC sp_rename 'dbo.__Temp_LA_InvoiceHeader_syncUpd_xtest_20191042', 'dbo.DEL___Temp_LA_InvoiceHeader_syncUpd_xtest_20191042';
EXEC sp_rename 'dbo.__Temp_LicenseeCustComm_syncUpd_xtest_20191042', 'dbo.DEL___Temp_LicenseeCustComm_syncUpd_xtest_20191042';
EXEC sp_rename 'dbo.__Temp_LicenseeGroupComm_syncUpd_xtest_20191042', 'dbo.DEL___Temp_LicenseeGroupComm_syncUpd_xtest_20191042';
EXEC sp_rename 'dbo.DanielTest', 'dbo.DEL_DanielTest';
EXEC sp_rename 'dbo.Lukas_test', 'dbo.DEL_Lukas_test';

use bodb_Summary
go
EXEC sp_rename 'dbo.CS_SumCancelled_Old', 'dbo.DEL_CS_SumCancelled_Old';
EXEC sp_rename 'dbo.CS_SumWinloss_Old', 'dbo.DEL_CS_SumWinloss_Old';
EXEC sp_rename 'dbo.rptPokerGamesSumWinLoss', 'dbo.DEL_rptPokerGamesSumWinLoss';

use bodb_LicenseeReport
go
EXEC sp_rename 'dbo.rptCustomerActive', 'dbo.DEL_rptCustomerActive';
