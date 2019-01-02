/*
	Task: Set read-only mode & offline database bodb_LicenseeReportArchive for copying data files to new N:\
	Run at DB052 in UM ONLY!!
*/

--In UM ========================================
--step 1: set offline DB:
USE master
GO
ALTER DATABASE bodb_LicenseeReportArchive SET SINGLE_USER WITH ROLLBACK IMMEDIATE

ALTER DATABASE bodb_LicenseeReportArchive SET OFFLINE

--step 2. Copy data files to new location: G:\IBC_DB\bodb_LicenseeReportArchive -> N:\USER_DB\bodb_LicenseeReportArchive


																								
