/*
	Task - Move database bodb_OWP to A300
		+ Rename db

	Steps:
	1- ful backup and restore with new name
	2- disable sql login / sql job
	3- dif backup and restore
	4- rename db
	5- enable sql login/sql job

*/

EXEC sp_renamedb 'bodb_OWP', 'DEL_bodb_OWP'
EXEC sp_renamedb 'bodb_OWP_New', 'bodb_OWP'