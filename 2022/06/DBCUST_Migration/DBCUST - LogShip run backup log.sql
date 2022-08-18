/*
	Task - Upgrade SQL Server DBCUST to 2019: Start Job backup log at Primary DBCUST
	Run on DBCUST (Old Server)
*/

USE msdb ;
GO
EXEC dbo.sp_start_job N'LSBackup_AUTHDB';
GO
EXEC dbo.sp_start_job N'LSBackup_IPDB';
GO
EXEC dbo.sp_start_job N'LSBackup_NAP_UserControl';
GO

--Must check jobs done then go to next step
