/*
	Task - Upgrade SQL Server DB054 to 2019
		+ Detach backup databases: bodb02, bodb_licensee, ServiceBorkerDB
			, MonDB, bodb_customerLog_Archive, bodb_CustomerLog
			, bodb_N88Log, bodb_NAPLog
	Run on db054
*/
USE [master]
GO
ALTER DATABASE [bodb02] SET SINGLE_USER WITH ROLLBACK IMMEDIATE
GO
EXEC master.dbo.sp_detach_db 'bodb02', 'true'; 

GO
USE [master]
GO
ALTER DATABASE [bodb_licensee] SET SINGLE_USER WITH ROLLBACK IMMEDIATE
GO
EXEC master.dbo.sp_detach_db 'bodb_licensee', 'true'; 

GO
USE [master]
GO
ALTER DATABASE [ServiceBorkerDB] SET SINGLE_USER WITH ROLLBACK IMMEDIATE
GO
EXEC master.dbo.sp_detach_db 'ServiceBorkerDB', 'true'; 

GO
USE [master]
GO
ALTER DATABASE [MonDB] SET SINGLE_USER WITH ROLLBACK IMMEDIATE
GO
EXEC master.dbo.sp_detach_db 'MonDB', 'true'; 

GO
USE [master]
GO
ALTER DATABASE [bodb_customerLog_Archive] SET SINGLE_USER WITH ROLLBACK IMMEDIATE
GO
EXEC master.dbo.sp_detach_db 'bodb_customerLog_Archive', 'true'; 

GO
USE [master]
GO
ALTER DATABASE [bodb_CustomerLog] SET SINGLE_USER WITH ROLLBACK IMMEDIATE
GO
EXEC master.dbo.sp_detach_db 'bodb_CustomerLog', 'true'; 

GO
USE [master]
GO
ALTER DATABASE [bodb_N88Log] SET SINGLE_USER WITH ROLLBACK IMMEDIATE
GO
EXEC master.dbo.sp_detach_db 'bodb_N88Log', 'true'; 

GO
USE [master]
GO
ALTER DATABASE [bodb_NAPLog] SET SINGLE_USER WITH ROLLBACK IMMEDIATE
GO
EXEC master.dbo.sp_detach_db 'bodb_NAPLog', 'true'; 

GO
