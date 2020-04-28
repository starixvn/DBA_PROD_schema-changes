/*
	Task - Move data files for bodb_Report database
		+ Step rename database
*/

use bodb_Report
go
SET DEADLOCK_PRIORITY HIGH
go
ALTER DATABASE bodb_Report SET SINGLE_USER WITH ROLLBACK IMMEDIATE
go
EXEC sp_renamedb 'bodb_Report', 'bodb_Report_Old' 
go
EXEC sp_renamedb 'bodb_Report_New', 'bodb_Report' 
go
ALTER DATABASE bodb_Report_Old SET MULTI_USER
GO
ALTER DATABASE bodb_Report_Old SET READ_ONLY
GO