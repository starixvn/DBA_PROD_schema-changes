/*
	Created: 20191017@Daniel
	Task: Add/remove column table Age_CustProfilePicture
	DB: DBCUST/CustDB
*/


USE CustDB
GO

ALTER TABLE dbo.Age_CustProfilePicture ADD ImageId INT
ALTER TABLE dbo.Age_CustProfilePicture DROP COLUMN rv

