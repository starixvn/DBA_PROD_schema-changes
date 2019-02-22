/*
	Task: Disable dist cleanup job for DBCUST rep
	Run on DBDIST03
*/

USE [msdb]
GO
EXEC msdb.dbo.sp_update_job @job_id=N'b88732a8-35b0-4c30-b5d1-dfaa79e5eaaa', 
		@enabled=0
GO
