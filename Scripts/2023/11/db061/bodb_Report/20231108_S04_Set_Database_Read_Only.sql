/*<info serverAlias="DB061-bodb_Report"></info>*/
/*
	Created: 20231108@Sol
	Task: Set database bodb_Report to READ_ONLY
	DB: DB061-bodb_Report
*/

GO

USE [master]
GO
ALTER DATABASE bodb_Report SET  READ_ONLY WITH NO_WAIT 
GO

--ALTER DATABASE [repl] SET  READ_ONLY WITH ROLLBACK IMMEDIATE