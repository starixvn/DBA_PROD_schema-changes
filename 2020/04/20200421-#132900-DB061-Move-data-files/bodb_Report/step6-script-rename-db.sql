/*
	Task - Move data files for bodb_Report database
		+ Step rename database
*/

use bodb_report
go
SET DEADLOCK_PRIORITY HIGH
go
ALTER DATABASE bodb_report SET SINGLE_USER WITH ROLLBACK IMMEDIATE
go
EXEC sp_renamedb 'bodb_report', 'bodb_report_Old' 
go
EXEC sp_renamedb 'bodb_report_New', 'bodb_report' 
go
ALTER DATABASE bodb_report_Old SET MULTI_USER
GO
ALTER DATABASE bodb_report_Old SET READ_ONLY
GO