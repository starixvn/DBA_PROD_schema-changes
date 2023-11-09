/*<info serverAlias="DB062-bodb_Report"></info>*/
/*
	Created: 20231108@Sol
	Task: Set database bodb_Report to READ_WRITE
	DB: DB062-bodb_Report
*/

GO

USE [master]
GO
ALTER DATABASE bodb_Report SET  READ_WRITE WITH NO_WAIT 
GO

--ALTER DATABASE bodb_Report SET  READ_WRITE WITH ROLLBACK IMMEDIATE