/*
	Task: Disable dist cleanup job for DBTP rep
	Run on DBDISTRM
*/

USE [msdb]
GO
EXEC msdb.dbo.sp_update_job @job_id=N'd0937c7c-1e80-4548-afbc-bf466fe9833a', 
		@enabled=0
GO
