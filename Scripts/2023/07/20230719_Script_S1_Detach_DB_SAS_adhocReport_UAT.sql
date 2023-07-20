/*<info serverAlias="DB062-SAS_adhocReport_UAT"></info>*/
/*
	Created: 20230719@Sol
	Task: move db SAS_adhocReport_UAT to disk F
	DB: DB062-SAS_adhocReport_UAT
*/

--detech db 

USE [master]
GO

ALTER DATABASE SAS_adhocReport_UAT SET SINGLE_USER WITH ROLLBACK IMMEDIATE

GO

EXEC master.dbo.sp_detach_db @dbname = N'SAS_adhocReport_UAT'

GO