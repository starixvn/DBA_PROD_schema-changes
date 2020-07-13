/*
	Task - Rename object @ DB052.bodb02/bodb_Licensee
*/
use bodb02
go
EXEC sp_rename 'sb.[sb.DEL_Logs]', 'DEL_Logs';
EXEC sp_rename 'dbo.[dbo.DEL_Temp_Block_Tracking]', 'DEL_Temp_Block_Tracking';
EXEC sp_rename 'dbo.[dbo.DEL_BetLucky3Result14]', 'DEL_BetLucky3Result14';
EXEC sp_rename 'dbo.[dbo.DEL_ExchangeDailyXE]', 'DEL_ExchangeDailyXE';
EXEC sp_rename 'dbo.[dbo.DEL_message]', 'DEL_message';
EXEC sp_rename 'dbo.[dbo.DEL_FncAsset]', 'DEL_FncAsset';
EXEC sp_rename 'dbo.[dbo.DEL_FH]', 'DEL_FH';
EXEC sp_rename 'dbo.[dbo.DEL_Match_HedgeForecast]', 'DEL_Match_HedgeForecast';
EXEC sp_rename 'dbo.[dbo.DEL_Acc_GroupExtraPT_Product]', 'DEL_Acc_GroupExtraPT_Product';

go
use bodb_licensee
go

EXEC sp_rename 'dbo.[dbo.DEL_OA_GroupLicensees]', 'DEL_OA_GroupLicensees';
EXEC sp_rename 'dbo.[dbo.DEL_OA_UserLicensees]', 'DEL_OA_UserLicensees';
EXEC sp_rename 'dbo.[dbo.DEL_OA_Functions]', 'DEL_OA_Functions';
EXEC sp_rename 'dbo.[dbo.DEL_OA_FunctionLicensees]', 'DEL_OA_FunctionLicensees';
EXEC sp_rename 'dbo.[dbo.DEL_OA_FunctionResellers]', 'DEL_OA_FunctionResellers';