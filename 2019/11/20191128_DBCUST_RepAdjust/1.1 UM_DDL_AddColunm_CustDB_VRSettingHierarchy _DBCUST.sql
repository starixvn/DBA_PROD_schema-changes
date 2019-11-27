/*
	Created: 20191101@Eden
	Task: Alter table VRSettingHierarchy
	RM: #121876
	DB: DBCUST/CustDB
*/

USE CustDB
ALTER TABLE VRSettingHierarchy ADD BitmapOrderAutoSuspend SMALLINT
ALTER TABLE VRSettingHierarchy ADD VRAutoSuspendThreshold SMALLMONEY
GO


