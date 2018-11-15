/*
	Task: Alter job correct BA, remove step 2 - correct BA mem (moved to DBCUST)
	Server: DB052, DB053, DB06, DBTP

*/


USE [msdb]
GO
/****** Object:  Step [Check missing BA Active Customer @bodb_licensee]    Script Date: 11/15/2018 00:47:44 ******/
EXEC msdb.dbo.sp_delete_jobstep @job_name=N'bodb02: Verify BA Tickets', @step_id=2
GO
USE [msdb]
GO
EXEC msdb.dbo.sp_update_jobstep @job_name=N'bodb02: Verify BA Tickets', @step_id=1 , 
		@on_success_action=1, 
		@command=N'--new table
--EXEC dbo.Task_DailyRptLicWinloss2_Job

--EXEC Task_DailyRptLicWinloss3_Job

--Run Jobs BA Tickets Checking
EXEC [Task_BATransaction_CheckAndCorrect]'
GO