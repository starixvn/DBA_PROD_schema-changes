/*
	Creator:	20200526@vnBobby
	Task:		Replace DB053 to DB055 role - [Redmine: #134692]
	Server:		DB053[.msdb]
*/


--	BEGIN STEP :
--		DROP unused linked server
----------------------------------------------------------------------------------------------------
USE [master]
GO

/****** Object:  LinkedServer [DBMONDW]    Script Date: 5/26/2020 12:14:09 AM ******/
EXEC master.dbo.sp_dropserver @server=N'DB053', @droplogins='droplogins'
GO

EXEC master.dbo.sp_dropserver @server=N'SYNCCENTER', @droplogins='droplogins'
GO

EXEC master.dbo.sp_dropserver @server=N'10.11.1.31', @droplogins='droplogins'
GO

EXEC master.dbo.sp_dropserver @server=N'DBMNL', @droplogins='droplogins'
GO