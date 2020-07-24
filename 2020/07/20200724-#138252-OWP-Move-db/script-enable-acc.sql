/*
	Task - Move database bodb_OWP to A300
		+ Enable sql login for [bodbOWPNet] acc

	Steps:
	1- ful backup and restore with new name
	2- disable sql login / sql job
	3- dif backup and restore
	4- rename db
	5- enable sql login/sql job

*/

ALTER LOGIN [bodbOWPNet] ENABLE
GO

EXEC msdb.dbo.sp_update_job @job_name = N'bodb_OWP - Job: Task_OWP_LSTReport_CaculateByDate', @enabled = 1;  
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_bodb_OWP', @enabled = 1;  
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_OWP - Job: Sync Default Working Shift', @enabled = 1;  
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_OWP - job: Sync InfoSite Match', @enabled = 1;  
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_OWP - Remove old data', @enabled = 1;  
GO 