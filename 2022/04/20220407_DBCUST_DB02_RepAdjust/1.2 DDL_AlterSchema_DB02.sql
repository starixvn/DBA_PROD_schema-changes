/*
	Task: DDL Alter table column
	Run @ DB02
*/

USE bodb02
GO
ALTER TABLE dbo.ResultDetailOS ALTER COLUMN OtherInfo VARCHAR(2000)
GO
ALTER TABLE dbo.ResultDetailOS14 ALTER COLUMN OtherInfo VARCHAR(2000)
GO

