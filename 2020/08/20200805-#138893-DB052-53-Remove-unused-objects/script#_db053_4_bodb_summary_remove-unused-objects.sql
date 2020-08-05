/*
	Task - Remove unused objects ( table | view | func | procedure)
	Run on DB053.bodb_summary
*/
USE bodb_summary
GO

DROP TABLE dbo.DEL_CS_SumCancelled_Old;
DROP TABLE dbo.DEL_CS_SumWinloss_Old;
DROP TABLE dbo.DEL_rptPokerGamesSumWinLoss;
DROP PROCEDURE dbo.DEL_DBA_Delsum_winloss_old;
DROP PROCEDURE dbo.DEL_Task_CS_SumCancelled_14_UAT1;
DROP PROCEDURE dbo.DEL_Task_CS_SumWinloss_14_UAT1;
DROP PROCEDURE dbo.DEL_Task_DailyRptCS_SumCancelled;
DROP PROCEDURE dbo.DEL_Task_DailyRptCS_SumCancelled_CheckAndCorrect;
DROP PROCEDURE dbo.DEL_Task_DailyRptCS_SumCancelled_CheckAndCorrect_Job;
DROP PROCEDURE dbo.DEL_Task_DailyRptCS_SumCancelled_Job;
DROP PROCEDURE dbo.DEL_Task_DailyRptCS_SumWinloss;
DROP PROCEDURE dbo.DEL_Task_DailyRptCS_SumWinloss_CheckAndCorrect;
DROP PROCEDURE dbo.DEL_Task_DailyRptCS_SumWinloss_CheckAndCorrect_Job;
DROP PROCEDURE dbo.DEL_Task_DailyRptCS_SumWinloss_Job;

GO
