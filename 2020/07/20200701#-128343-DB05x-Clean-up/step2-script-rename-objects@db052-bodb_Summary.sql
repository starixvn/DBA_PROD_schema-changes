/*
	Task - Rename object @ DB052.bodb_Summary
	2 objects
*/
use bodb_Summary
go
EXEC sp_rename 'dbo.Task_CS_SumCancelled_14_UAT1', 'dbo.DEL_Task_CS_SumCancelled_14_UAT1';
EXEC sp_rename 'dbo.Task_CS_SumWinloss_14_UAT1', 'dbo.DEL_Task_CS_SumWinloss_14_UAT1';