/*
	Task: Bring bodb_LicenseeReport online, after done alter db move files
	Run at DB052 in UM
*/

--In UM ========================================
USE master
GO

ALTER DATABASE bodb_LicenseeReport SET ONLINE
ALTER DATABASE bodb_LicenseeReport SET MULTI_USER
ALTER DATABASE bodb_LicenseeReport SET READ_WRITE WITH NO_WAIT
																								
