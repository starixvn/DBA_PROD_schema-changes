/*<info serverAlias="DB062-bodb_OWP"></info>*/
/*
	Created: 20230217@Sol
	Task: drop db bodb_OWP
	DB: DB062-bodb_OWP
*/

GO

IF EXISTS (
  SELECT * 
    FROM sys.databases 
   WHERE name = N'bodb_OWP'
)
BEGIN
        USE MASTER;

        ALTER DATABASE bodb_OWP SET SINGLE_USER WITH ROLLBACK IMMEDIATE;

        DROP DATABASE bodb_OWP
END

GO