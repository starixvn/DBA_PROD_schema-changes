/*
	Task - Upgrade SQL Server DB054 to 2019
		1- DB054: Start LSBackup Jobs
	Run on db054
*/

USE msdb ;
GO
EXEC dbo.sp_start_job N'LSBackup_bodb_N88Log';
GO
EXEC dbo.sp_start_job N'LSBackup_bodb_NAPLog';
GO

--check jobs done then go to next step