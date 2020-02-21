/*
	Created: 20200219@Daniel
	Task: Alter tables in Replication - DDL commands
	DB: DBCUST/CustDB

*/

USE CUSTDB
GO
ALTER TABLE dbo.ProblemAccountReason ADD IsCN88 BIT NOT NULL CONSTRAINT [DF_ProblemAccountReason_IsCN88] DEFAULT ((0))
GO
ALTER TABLE dbo.ProblemAccountReason ADD IsCredit BIT NOT NULL CONSTRAINT [DF_ProblemAccountReason_IsCredit] DEFAULT ((0))
GO
ALTER TABLE dbo.ProblemAccountReason ADD IsLicensee BIT NOT NULL CONSTRAINT [DF_ProblemAccountReason_IsLicensee] DEFAULT ((0))
GO