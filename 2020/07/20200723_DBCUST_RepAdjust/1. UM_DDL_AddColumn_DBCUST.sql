/*
	Task: Alter tables in Replication - DDL commands
	DB: DBCUST/CustDB

*/

USE CustDB
GO

ALTER TABLE ProblemAccount ADD VoidTime VARCHAR(50)
GO
ALTER TABLE ProblemAccount ADD LimitAmount MONEY
GO
