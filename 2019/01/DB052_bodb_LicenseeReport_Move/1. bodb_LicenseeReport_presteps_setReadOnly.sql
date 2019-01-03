/*
	Task: Set read-only mode for copying data files to new N:\
	Run at DB052 before UM
*/

--Before UM ========================================
--step 1: Set DB read-only mode
USE master
GO
ALTER DATABASE bodb_LicenseeReport SET SINGLE_USER WITH ROLLBACK IMMEDIATE
ALTER DATABASE bodb_LicenseeReport SET READ_ONLY WITH NO_WAIT
ALTER DATABASE bodb_LicenseeReport SET MULTI_USER



																								
