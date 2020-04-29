
/*
	Task - DB061 - Move data files from I$ to F$ for bodb_Archive
		+ Full backup
	Run on DB061
*/

DECLARE @__fileName varchar(2000), @__date varchar(50)
SELECT @__date = CONVERT(VARCHAR(10), GETDATE(), 112)
SET @__fileName = '\\10.1.1.77\DBBackup' + '\' + @@SERVERNAME + '.' + 'bodb_archive' + '_full_' + @__date + '.bak' 
print @__fileName

BACKUP DATABASE bodb_archive TO DISK = @__fileName WITH FORMAT, INIT, COMPRESSION
