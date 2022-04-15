/*
	Task: Before UM 1h: Full backup @SITDBDIST03, copy backup file to SITDBDIST03N and full restore with NORECOVERY to SITDBDIST03N
	** ATTENTION!! Must follow comments to run correct potion of scripts on correct server/order
*/

-- 1. Run full backup DB on SITDBDIST03 before UM

BACKUP DATABASE [MONDB] TO DISK = 
	N'G:\BACKUP_LOCAL\Daniel_migrate\SITDBDIST03.MonDB_20220420.bak'
WITH NOFORMAT, NOINIT, NAME = 
	N'MONDB-Full Database Backup', SKIP, NOREWIND, 
	NOUNLOAD, COMPRESSION, STATS = 10
GO

BACKUP DATABASE [Monitor] TO DISK = 
	N'G:\BACKUP_LOCAL\Daniel_migrate\SITDBDIST03.Monitor_20220420.bak'
WITH NOFORMAT, NOINIT, NAME = 
	N'Monitor-Full Database Backup', SKIP, NOREWIND, 
	NOUNLOAD, COMPRESSION, STATS = 10
GO

BACKUP DATABASE [ReleaseToolDB] TO DISK = 
	N'G:\BACKUP_LOCAL\Daniel_migrate\SITDBDIST03.ReleaseToolDB_20220420.bak'
WITH NOFORMAT, NOINIT, NAME = 
	N'ReleaseToolDB-Full Database Backup', SKIP, NOREWIND, 
	NOUNLOAD, COMPRESSION, STATS = 10
GO


-- 2. Copy the full backup files on step 1 to SITDBDIST03N (before UM)


-- 3. Run on SITDBDIST03N: Restore full DB with NORECOVERY from the files copied in step 2 (before UM)
USE master

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ALTER DATABASE MonDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE

RESTORE DATABASE [MonDB]
FROM  DISK = N'G:\BACKUP_LOCAL\Daniel_migrate\SITDBDIST03.MonDB_20220420.bak' WITH  FILE = 1, NORECOVERY,
MOVE N'MonDB' TO N'G:\USER_DB\MonDB\MonDB.mdf',
MOVE N'MonDB_log' TO N'G:\USER_DB\MonDB\MonDB_log.ldf',
NOUNLOAD,  STATS = 10


--------------------------------------------------------------------------------------------------------
ALTER DATABASE Monitor SET SINGLE_USER WITH ROLLBACK IMMEDIATE

RESTORE DATABASE [Monitor]
FROM  DISK = N'G:\BACKUP_LOCAL\Daniel_migrate\SITDBDIST03.Monitor_20220420.bak' WITH  FILE = 1, NORECOVERY,
MOVE N'Monitor' TO N'G:\USER_DB\Monitor\Monitor.mdf',
MOVE N'Monitor_log' TO N'G:\USER_DB\Monitor\Monitor_log.ldf',
NOUNLOAD,  STATS = 10


--------------------------------------------------------------------------------------------------------
ALTER DATABASE ReleaseToolDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE

RESTORE DATABASE [ReleaseToolDB]
FROM  DISK = N'G:\BACKUP_LOCAL\Daniel_migrate\SITDBDIST03.ReleaseToolDB_20220420.bak' WITH  FILE = 1, NORECOVERY,
MOVE N'ReleaseToolDB_mst' TO N'H:\USER_DB\ReleaseToolDB\ReleaseToolDB_mst.mdf',
MOVE N'ReleaseToolDB_log' TO N'H:\USER_DB\ReleaseToolDB\ReleaseToolDB_log.ldf',
NOUNLOAD,  STATS = 10

