/*
	Task - Rename object @ DB053.bodb_Summary
	3 objects
*/
use bodb_Summary
go
EXEC sp_rename 'dbo.DBA_Delsum_winloss_old', 'dbo.DEL_DBA_Delsum_winloss_old';
EXEC sp_rename 'dbo.Task_CS_SumCancelled_14_UAT1', 'dbo.DEL_Task_CS_SumCancelled_14_UAT1';
EXEC sp_rename 'dbo.Task_CS_SumWinloss_14_UAT1', 'dbo.DEL_Task_CS_SumWinloss_14_UAT1';