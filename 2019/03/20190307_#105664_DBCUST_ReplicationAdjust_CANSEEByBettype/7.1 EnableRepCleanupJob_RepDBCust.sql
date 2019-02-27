/*
	Task: Disable dist cleanup job for DBCUST rep
	Run on DBDIST03
*/

USE [msdb]
GO
EXEC msdb.dbo.sp_update_job @job_id=N'c2fd0597-282e-4b9d-9f11-66d76b3fe25d', 
		@enabled=1
GO