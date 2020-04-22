/*
	Task - Move data files for bodb_Archive database
		+ Step rename database
*/

EXEC sp_renamedb 'bodb_Archive', 'bodb_Archive_Old' 
go
EXEC sp_renamedb 'bodb_Archive_New', 'bodb_Archive' 
go
