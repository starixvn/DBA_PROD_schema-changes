
/*
	Task - Upgrade SQL Server DB054 to 2019
		1- DB055: Start LSCopy Jobs
	Run on db055
*/

USE msdb ;
GO
EXEC dbo.sp_start_job N'LSCopy_DB054_bodb_N88Log';
GO
EXEC dbo.sp_start_job N'LSCopy_DB054_bodb_NAPLog';
GO

--check jobs done?

EXEC dbo.sp_start_job N'LSRestore_DB054_bodb_N88Log';
GO
EXEC dbo.sp_start_job N'LSRestore_DB054_bodb_NAPLog';
GO
