/*<info serverAlias="DB062-bodb_TGRS"></info>*/
/*
	Created: 20230217@Sol
	Task: drop db bodb_TGRS
	DB: DB062-bodb_TGRS
*/

GO

IF EXISTS (
  SELECT * 
    FROM sys.databases 
   WHERE name = N'bodb_TGRS'
)
BEGIN
        USE MASTER;

        ALTER DATABASE bodb_TGRS SET SINGLE_USER WITH ROLLBACK IMMEDIATE;

        DROP DATABASE bodb_TGRS
END

GO