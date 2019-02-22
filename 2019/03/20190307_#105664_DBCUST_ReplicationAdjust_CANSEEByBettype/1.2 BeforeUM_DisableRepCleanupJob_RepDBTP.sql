/*
	Task: Disable dist cleanup job for DBTP rep
	Run on DBDISTRM
*/

USE [msdb]
GO
EXEC msdb.dbo.sp_update_job @job_id=N'952006aa-afba-4644-99ea-8c60b5ce15b7', 
		@enabled=0
GO
