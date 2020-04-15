/*
	Task: Alter tables in Replication - DDL commands
	DB: DBCUST/CustDB

*/

USE CustDB
GO

ALTER TABLE [Site] ADD BlockNewCust BIT CONSTRAINT [DF_Site_BlockNewCust]  DEFAULT ((0))
ALTER TABLE [Site] ADD UnblockTime VARCHAR(50) NULL
GO


ALTER TABLE dbo.ProductSettingDetail ADD RealProductId TINYINT NULL
GO


ALTER TABLE VRSettingHierarchy DROP COLUMN VRAutoSuspendThreshold
GO


ALTER TABLE ProblemAccountReason ADD ReasonNameCS NVARCHAR(100)
ALTER TABLE ProblemAccountReason ADD ReasonGroupID TINYINT
GO

