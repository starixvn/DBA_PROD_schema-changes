/*
	Task: grant permission for vndba to manually run job to test archive deposit acc
	Run at DB06

*/	

USE [msdb]
GO
EXEC sp_addrolemember N'SQLAgentOperatorRole', N'vndba'
GO
