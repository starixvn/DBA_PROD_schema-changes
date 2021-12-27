/*
	Task - Upgrade SQL Server DB054 to 2019
		1- DB054：UpdateStats + UpdateUsage
	Run on db054
*/

USE msdb ;
GO
EXEC dbo.sp_start_job N'DBA: update stats';
GO