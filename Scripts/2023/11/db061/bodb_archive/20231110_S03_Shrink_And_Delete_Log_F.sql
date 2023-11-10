/*<info serverAlias="DB061-bodb_archive"></info>*/
/*
	Created: 20231110@Sol
	Task: Shrink and delete log in F driver - bodb_Archive_Log_02
	DB: DB061-bodb_archive
*/

USE bodb_archive;

GO

DBCC SHRINKFILE (N'bodb_Archive_Log_02' , EMPTYFILE)

GO

ALTER DATABASE bodb_archive  REMOVE FILE bodb_Archive_Log_02

GO