/*<info serverAlias="DB061-bodb_TGRS"></info>*/
/*
	Created: 20230217@Sol
	Task: take db bodb_TGRS offline
	DB: DB061-bodb_TGRS
*/

GO

USE master;

GO


ALTER DATABASE bodb_TGRS SET OFFLINE WITH ROLLBACK IMMEDIATE;

GO

---## MOVE PHYSICAL FILES TO NEW LOCATION FIRST, THEN GO TO THE NEXT STEP ##