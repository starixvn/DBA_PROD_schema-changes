
/*
	Task - Move database bodb_OWP to A300
		+ Full backup

	Steps:
	1- ful backup and restore with new name
	2- disable sql login / sql job
	3- dif backup and restore
	4- rename db
	5- enable sql login/sql job

*/
DECLARE @fileName varchar(200)
SET @fileName = 'G:\DBAGroup\Patrick' + '\' + @@SERVERNAME + '.' + 'bodb_OWP' + '_' + '20200724' + '.bak' 
print @fileName
BACKUP DATABASE @databaseName TO DISK = @fileName  WITH FORMAT, INIT, COMPRESSION

GO
