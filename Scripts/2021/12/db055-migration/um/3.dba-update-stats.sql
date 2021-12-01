/*
	Task - Upgrade SQL Server DB055 to 2019
		1- DB055：UpdateStats + UpdateUsage
	Run on db055
*/

USE msdb ;
GO
EXEC dbo.sp_start_job N'DBA: update stats';
GO