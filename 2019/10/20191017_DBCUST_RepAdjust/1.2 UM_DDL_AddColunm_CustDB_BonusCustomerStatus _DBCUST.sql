/*
	Description: Adding column table [BonusCustomerStatus] 
	DB: DBCUST.bodb_licensee
*/

use custdb
GO

ALTER TABLE [BonusCustomerStatus]
ADD [BonusCost] [decimal] (9,4) NULL;