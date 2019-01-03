/*
	Task: Set offline database bodb_LicenseeReportArchive
	Run at DB052 in UM ONLY!!
*/

--In UM ========================================
--step 1: set offline DB:
USE master
GO
ALTER DATABASE bodb_LicenseeReportArchive SET SINGLE_USER WITH ROLLBACK IMMEDIATE

ALTER DATABASE bodb_LicenseeReportArchive SET OFFLINE


																								
