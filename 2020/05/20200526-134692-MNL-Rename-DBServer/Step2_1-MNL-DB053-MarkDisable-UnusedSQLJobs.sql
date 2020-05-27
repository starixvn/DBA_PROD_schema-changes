/*
	Creator:	20200526@vnBobby
	Task:		Replace DB053 to DB055 role - [Redmine: #134692]
	Server:		DB053[.msdb]
*/


--	BEGIN STEP :
--		Mark disabled for unused SQL Jobs
----------------------------------------------------------------------------------------------------
use msdb;
GO

SET NOCOUNT ON;
declare @job_name sysname;

set @job_name = N'DBA: update stats';
exec dbo.sp_update_job @job_name = @job_name, @enabled = 0 --Disable

set @job_name = N'LSAlert_DB053';
exec dbo.sp_update_job @job_name = @job_name, @enabled = 0 --Disable

set @job_name = N'LSCopy_DB053_bodb_ChatBot';
exec dbo.sp_update_job @job_name = @job_name, @enabled = 0 --Disable

set @job_name = N'LSRestore_DB053_bodb_ChatBot';
exec sys.sp_update_job @job_name = @job_name, @enabled = 0 --Disable