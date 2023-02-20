/*<info serverAlias="DB061-bodb_OWP"></info>*/
/*
	Created: 20230217@Sol
	Task: take db bodb_OWP offline
	DB: DB061-bodb_OWP
*/

GO

USE master;

GO

ALTER DATABASE bodb_OWP SET OFFLINE WITH ROLLBACK IMMEDIATE;

GO

---## MOVE PHYSICAL FILES TO NEW LOCATION FIRST, THEN GO TO THE NEXT STEP ##