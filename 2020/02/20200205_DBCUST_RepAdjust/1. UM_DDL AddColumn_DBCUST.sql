/*
	Created: 20200204@Daniel
	Task: Alter tables in Replication - DDL commands
	DB: DBCUST/CustDB

*/

USE CUSTDB
GO
ALTER TABLE CS_ProblemAccount ADD Informed1By INT 
GO
ALTER TABLE CS_ProblemAccount ADD Informed2By INT
GO

USE CustDB
GO
ALTER TABLE dbo.CustSuper ADD CurrencyModifier SMALLMONEY NOT NULL CONSTRAINT [DF_CustSuper_CurrencyModifier] DEFAULT ((1))
GO
ALTER TABLE dbo.Dep_CustSuper ADD CurrencyModifier SMALLMONEY NOT NULL CONSTRAINT [DF_Dep_CustSuper_CurrencyModifier] DEFAULT ((1))
GO
