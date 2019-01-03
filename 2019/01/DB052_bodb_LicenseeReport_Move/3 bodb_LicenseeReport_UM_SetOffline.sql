/*
	Task: Set offline database bodb_LicenseeReport
	Run at DB052 In UM
*/

--In UM ========================================
USE master
GO
ALTER DATABASE bodb_LicenseeReport SET SINGLE_USER WITH ROLLBACK IMMEDIATE

ALTER DATABASE bodb_LicenseeReport SET OFFLINE


																								
