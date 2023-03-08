/*<info serverAlias="DB061-bodb_OWP"></info>*/
/*
	Created: 20230217@Sol
	Task: take db bodb_OWP ONLINE
	DB: DB061-bodb_OWP
*/

GO

USE master;

GO

ALTER DATABASE bodb_OWP SET ONLINE;

GO

---check current location
SELECT name, physical_name AS CurrentLocation, state_desc  , *
FROM sys.master_files  
WHERE db_name(database_id) like 'bodb_OWP'

GO