/*<info serverAlias="DB061-bodb_OWP"></info>*/
/*
	Created: 20230217@Sol
	Task: alter location of bodb_OWP to new location
	DB: DB061-bodb_OWP
*/

GO

---check current location
SELECT name, physical_name AS CurrentLocation, state_desc  , *
FROM sys.master_files  
WHERE db_name(database_id) like 'bodb_OWP'

GO

USE master;

GO

---run script to alter location
ALTER DATABASE bodb_OWP  MODIFY FILE ( NAME = bodb_OWP, FILENAME = 'F:\USER_DB\bodb_OWP\bodb_OWP.mdf ');
ALTER DATABASE bodb_OWP  MODIFY FILE ( NAME = bodb_OWP_log, FILENAME = 'F:\USER_DB\bodb_OWP\bodb_OWP_log.ldf ');
ALTER DATABASE bodb_OWP  MODIFY FILE ( NAME = OWP_Data, FILENAME = 'F:\USER_DB\bodb_OWP\OWP_Data.ndf ');
ALTER DATABASE bodb_OWP  MODIFY FILE ( NAME = OWP_Index, FILENAME = 'F:\USER_DB\bodb_OWP\OWP_Index.ndf ');
ALTER DATABASE bodb_OWP  MODIFY FILE ( NAME = bodb_OWP_Data, FILENAME = 'F:\USER_DB\bodb_OWP\bodb_OWP_Data.ndf ');

GO