/*
	Created: Daniel
	Date: 20181025
	Task: add new column for Product3rd - For project DBLIC New HA
	DB: DBCUST/bodb_licensee
*/

USE bodb_licensee
GO

ALTER TABLE dbo.Product3rd ADD ApplyDCS BIT NULL DEFAULT 0 
GO
