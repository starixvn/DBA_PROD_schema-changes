/*
	Task: Alter tables in Replication - DDL commands
	DB: DBCUST/CustDB

*/

USE CustDB
GO
ALTER TABLE VRSettingHierarchy ADD VRAutoSuspendThresholdNonLive smallmoney
ALTER TABLE VRSettingHierarchy ADD VRAutoSuspendThresholdLive smallmoney
GO