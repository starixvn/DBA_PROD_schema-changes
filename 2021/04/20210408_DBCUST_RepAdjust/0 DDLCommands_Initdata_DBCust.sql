/*
	Task: DDL commands + update data
	Run @ DBCUST
*/

USE bodb_Licensee
GO

-- Add CalculationType column
ALTER TABLE dbo.LA_DiscountGroupCurrency
	ADD CalculationType TINYINT CONSTRAINT DF_LA_DiscountGroupCurrency_CalculationType DEFAULT ((0))

-- Update old data
-- 4399 rows
UPDATE dbo.LA_DiscountGroupCurrency WITH (ROWLOCK)
SET CalculationType = 0
WHERE CalculationType IS NULL

-- Alter CalculationType NOT NULL
ALTER TABLE dbo.LA_DiscountGroupCurrency
	ALTER COLUMN CalculationType TINYINT NOT NULL






