 

/*
	created: 20200108@Lukas
	Tasks: detach some databases for migrating to new machine

*/

USE [master]
GO
EXEC master.dbo.sp_detach_db @dbname = N'bodb_APILog'
GO

USE [master]
GO
EXEC master.dbo.sp_detach_db @dbname = N'bodb_CustomerLog'
GO

USE [master]
GO
EXEC master.dbo.sp_detach_db @dbname = N'bodb_CustomerLog_Archive'
GO


