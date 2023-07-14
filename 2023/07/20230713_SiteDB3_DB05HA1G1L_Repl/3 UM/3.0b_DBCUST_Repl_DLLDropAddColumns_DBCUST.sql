/*
	Task: Drop & add columns (DDL) for various tables from main DBCUST
	Run on DBCUST
*/

--Drop Constraint of unused Columns
ALTER TABLE dbo.custInfo DROP CONSTRAINT DF_custInfo_DisableNumber --DisableNumber
GO
ALTER TABLE dbo.custInfo DROP CONSTRAINT DF_custInfo_HideKeno --HideKeno
GO

--Drop unused Columns
ALTER TABLE dbo.custinfo DROP COLUMN DisableNumber, HideKeno


------------------------------------------------------------------------------------------

--Add column
ALTER TABLE dbo.BetRestriction_Customer ADD AccumulateBalance BIT NULL
