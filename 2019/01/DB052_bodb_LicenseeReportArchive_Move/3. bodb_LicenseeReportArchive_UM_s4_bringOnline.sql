/*
	Task: Bring bodb_LicenseeReportArchive online, after done alter db move files
	Run at DB052 in UM
*/

--In UM ========================================
USE master
GO

ALTER DATABASE bodb_LicenseeReportArchive SET ONLINE
ALTER DATABASE bodb_LicenseeReportArchive SET MULTI_USER
																								
