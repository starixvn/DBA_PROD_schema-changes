/*<info serverAlias="DB061-bodb_TGRS"></info>*/
/*
	Created: 20230217@Sol
	Task: take db bodb_TGRS ONLINE
	DB: DB061-bodb_TGRS
*/

GO

USE master;

GO

ALTER DATABASE bodb_TGRS SET ONLINE;

GO

---check current location
SELECT name, physical_name AS CurrentLocation, state_desc  , *
FROM sys.master_files  
WHERE db_name(database_id) like 'bodb_TGRS'

GO