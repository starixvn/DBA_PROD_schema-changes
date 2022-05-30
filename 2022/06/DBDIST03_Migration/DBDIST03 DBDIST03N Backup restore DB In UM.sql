/*
	Task: In UM: Diff backup @DBDIST03, copy backup files to DBDIST03N and diff restore to DBDIST03N
	** ATTENTION!! Must follow comments to run correct potion of scripts on correct server/order
*/


-- 1. Run backup diff DB on DBDIST03 in UM

BACKUP DATABASE [MonDB] TO DISK = 
	N'G:\BACKUP_LOCAL\Daniel_migrate\DBDIST03.MonDB_20220609.dif'
WITH DIFFERENTIAL, NOFORMAT, NOINIT, NAME = 
	N'MonDB-Diff Database Backup', SKIP, NOREWIND, 
	NOUNLOAD, COMPRESSION, STATS = 10
GO

BACKUP DATABASE Monitor TO DISK = 
	N'G:\BACKUP_LOCAL\Daniel_migrate\DBDIST03.Monitor_20220609.dif'
WITH DIFFERENTIAL, NOFORMAT, NOINIT, NAME = 
	N'Monitor-Diff Database Backup', SKIP, NOREWIND, 
	NOUNLOAD, COMPRESSION, STATS = 10
GO


-- 2. Copy the diff backup files on step 4 to DBDIST03N (In UM)


-- 3. Run on DBDIST03N: Restore diff DB from the files copied in step 5 (In UM)

RESTORE DATABASE MonDB FROM DISK = N'G:\BACKUP_LOCAL\Daniel_Migrate\DBDIST03.MonDB_20220609.dif' 
WITH FILE = 1, NOUNLOAD, STATS = 10
GO

RESTORE DATABASE Monitor FROM DISK = N'G:\BACKUP_LOCAL\Daniel_Migrate\DBDIST03.Monitor_20220609.dif' 
WITH FILE = 1, NOUNLOAD, STATS = 10
GO
