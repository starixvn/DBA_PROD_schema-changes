/*
	Task: DDL Alter table columns
	Run @ DBCUST
*/

USE CustDB
GO

ALTER TABLE Custinfo ALTER COLUMN DisableNumber BIT NULL
GO


--------------------------------

ALTER TABLE CustSettingAutoSuspend ALTER COLUMN AutoSuspendLive VARBINARY(128)
GO

ALTER TABLE CustSettingAutoSuspend ALTER COLUMN AutoSuspendNonLive VARBINARY(128)
GO

ALTER TABLE CustSettingAutoSuspend ALTER COLUMN OverrideASLive VARBINARY(128)
GO

ALTER TABLE CustSettingAutoSuspend ALTER COLUMN OverrideASNonLive VARBINARY(128)
GO

