/*
	Task - Move data files for bodb_Archive database
		+ Step rename database
*/

use bodb_Archive
go
SET DEADLOCK_PRIORITY HIGH
go
ALTER DATABASE bodb_Archive SET SINGLE_USER WITH ROLLBACK IMMEDIATE
go
EXEC sp_renamedb 'bodb_Archive', 'bodb_Archive_Old' 
go
EXEC sp_renamedb 'bodb_Archive_New', 'bodb_Archive' 
go
ALTER DATABASE bodb_Archive_Old SET MULTI_USER
GO