/*<info serverAlias="DB061-bodb_archive"></info>*/
/*
	Created: 20231110@Sol
	Task: Shrink log in F driver
	DB: DB061-bodb_archive
*/

USE bodb_archive;

GO

DBCC SHRINKFILE (N'bodb_Archive_Log' , 512)

GO