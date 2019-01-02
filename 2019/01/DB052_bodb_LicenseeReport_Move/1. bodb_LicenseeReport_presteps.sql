/*
	Task: Set read-only mode & offline database bodb_LicenseeReport for copying data files to new N:\
	Run at DB052 before UM and In UM
*/

--Before UM ========================================
--step 1: Set DB read-only mode
USE master
GO
ALTER DATABASE bodb_LicenseeReport SET READ_ONLY WITH NO_WAIT

/*step 2. Copy data files to new location:
 G:\IBC_DB\bodb_LicenseeReport -> N:\USER_DB\bodb_LicenseeReport
 G:\IBC_DB\bodb_LicenseeReport_N -> N:\USER_DB\bodb_LicenseeReport_N
*/

--=========End Before UM steps===============


--In UM ========================================
USE master
GO
ALTER DATABASE bodb_LicenseeReport SET SINGLE_USER WITH ROLLBACK IMMEDIATE

ALTER DATABASE bodb_LicenseeReport SET OFFLINE


																								
