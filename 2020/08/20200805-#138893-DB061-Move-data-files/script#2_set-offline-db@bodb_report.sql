/*
	Task - DB061 - Move some data files of bodb_Report database from F$FAS2720 to I$A300
	
		1- update path files (137 files)
		2- set offline bodb_report
		3- copy files from F$ to I$ (137 files)
		4- set online bodb_report
*/
USE master
GO
ALTER DATABASE bodb_report SET OFFLINE WITH ROLLBACK IMMEDIATE

