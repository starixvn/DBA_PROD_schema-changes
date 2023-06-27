/*
	Task: Drop columns (DDL) table custinfo from main DBCUST
	Run on DBCUST
*/

--Drop Constraint of unused Columns
ALTER TABLE dbo.custInfo DROP CONSTRAINT DF_custInfo_DisableNumber --DisableNumber
GO
ALTER TABLE dbo.custInfo DROP CONSTRAINT DF_custInfo_HideKeno --HideKeno
GO

--Drop unused Columns
ALTER TABLE dbo.custinfo DROP COLUMN DisableNumber, HideKeno
