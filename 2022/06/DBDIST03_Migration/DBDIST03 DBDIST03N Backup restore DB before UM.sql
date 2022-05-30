/*
	Task: Before UM 1h: Full backup @DBDIST03, copy backup file to DBDIST03N and full restore with NORECOVERY to DBDIST03N
	** ATTENTION!! Must follow comments to run correct potion of scripts on correct server/order
*/

-- 1. Run full backup DB on DBDIST03 before UM

BACKUP DATABASE [MONDB] TO DISK = 
	N'G:\BACKUP_LOCAL\Daniel_migrate\DBDIST03.MonDB_20220609.bak'
WITH NOFORMAT, NOINIT, NAME = 
	N'MONDB-Full Database Backup', SKIP, NOREWIND, 
	NOUNLOAD, COMPRESSION, STATS = 10
GO

BACKUP DATABASE [Monitor] TO DISK = 
	N'G:\BACKUP_LOCAL\Daniel_migrate\DBDIST03.Monitor_20220609.bak'
WITH NOFORMAT, NOINIT, NAME = 
	N'Monitor-Full Database Backup', SKIP, NOREWIND, 
	NOUNLOAD, COMPRESSION, STATS = 10
GO


-- 2. Copy the full backup files on step 1 to DBDIST03N (before UM)


-- 3. Run on DBDIST03N: Restore full DB with NORECOVERY from the files copied in step 2 (before UM)
USE master

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ALTER DATABASE MonDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE

RESTORE DATABASE [MonDB]
FROM  DISK = N'G:\BACKUP_LOCAL\Daniel_migrate\DBDIST03.MonDB_20220609.bak' WITH  FILE = 1, NORECOVERY,
MOVE N'MonDB' TO N'H:\USER_DB\MonDB\MonDB.mdf',
MOVE N'MonDB_log' TO N'H:\USER_DB\MonDB\MonDB_log.ldf',
NOUNLOAD,  STATS = 10


--------------------------------------------------------------------------------------------------------
ALTER DATABASE Monitor SET SINGLE_USER WITH ROLLBACK IMMEDIATE

RESTORE DATABASE [Monitor]
FROM  DISK = N'G:\BACKUP_LOCAL\Daniel_migrate\DBDIST03.Monitor_20220609.bak' WITH  FILE = 1, NORECOVERY,
MOVE N'Monitor' TO N'H:\USER_DB\Monitor\Monitor.mdf',
MOVE N'Monitor_log' TO N'H:\USER_DB\Monitor\Monitor_log.ldf',
NOUNLOAD,  STATS = 10

