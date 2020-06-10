/*
	Creator:	20200526@vnBobby
	Task:		Replace DB053 to DB055 role - [Redmine: #134692]
	Server:		DB053[.master]
*/


--	BEGIN STEP :
--		Rename SQL Server Name - @@SERVERNAME
----------------------------------------------------------------------------------------------------
use master;
GO

exec sp_dropserver 'DB053'
GO

exec sp_addserver 'DB055', 'local'
go

select @@SERVERNAME, @@SERVICENAME
