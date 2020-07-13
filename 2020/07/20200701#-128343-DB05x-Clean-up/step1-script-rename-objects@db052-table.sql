/*
	Task - Rename object @ DB052.bodb02/bodb_Licensee
*/
use bodb02
go
EXEC sp_rename 'dbo.Acc_GroupExtraPT_Product', 'dbo.DEL_Acc_GroupExtraPT_Product';
EXEC sp_rename 'dbo.BetLucky3Result14', 'dbo.DEL_BetLucky3Result14';
EXEC sp_rename 'dbo.ExchangeDailyXE', 'dbo.DEL_ExchangeDailyXE';
EXEC sp_rename 'dbo.FH', 'dbo.DEL_FH';
EXEC sp_rename 'dbo.FncAsset', 'dbo.DEL_FncAsset';
EXEC sp_rename 'sb.Logs', 'sb.DEL_Logs';
EXEC sp_rename 'dbo.Match_HedgeForecast', 'dbo.DEL_Match_HedgeForecast';
EXEC sp_rename 'dbo.message', 'dbo.DEL_message';
EXEC sp_rename 'dbo.Temp_Block_Tracking', 'dbo.DEL_Temp_Block_Tracking';

go
use bodb_Licensee
go

EXEC sp_rename 'dbo.OA_FunctionLicensees', 'dbo.DEL_OA_FunctionLicensees';
EXEC sp_rename 'dbo.OA_FunctionResellers', 'dbo.DEL_OA_FunctionResellers';
EXEC sp_rename 'dbo.OA_Functions', 'dbo.DEL_OA_Functions';
EXEC sp_rename 'dbo.OA_GroupLicensees', 'dbo.DEL_OA_GroupLicensees';
EXEC sp_rename 'dbo.OA_UserLicensees', 'dbo.DEL_OA_UserLicensees';