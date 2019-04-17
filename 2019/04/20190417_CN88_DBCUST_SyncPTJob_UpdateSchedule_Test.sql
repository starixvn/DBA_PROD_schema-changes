/*
	Task: Temp change schedule of Sync PT job (CN88) to support continuous testing without waiting for PT change applying
	Run on DBCUST

*/
EXEC msdb.dbo.sp_attach_schedule @job_id=N'90141ea1-be02-4abb-9f57-5f36e1ff6f2e',@schedule_id=50
GO
USE [msdb]
GO
EXEC msdb.dbo.sp_update_schedule @schedule_id=50, 
		@active_start_time=70000
GO
