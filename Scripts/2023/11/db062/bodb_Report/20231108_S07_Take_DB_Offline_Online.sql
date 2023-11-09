/*<info serverAlias="DB062-bodb_Report"></info>*/
/*
	Created: 20231108@Sol
	Task: Take database OFFLINE and then ONLINE
	DB: DB062-bodb_Report
*/

GO

USE master;

GO

ALTER DATABASE bodb_Report SET OFFLINE WITH NO_WAIT
--ALTER DATABASE bodb_Report SET OFFLINE WITH ROLLBACK IMMEDIATE;

GO

ALTER DATABASE bodb_Report SET ONLINE

GO