/*
	Task: In UM: Diff backup @SITDBDIST03, copy backup files to SITDBDIST03N and diff restore to SITDBDIST03N
	** ATTENTION!! Must follow comments to run correct potion of scripts on correct server/order
*/


-- 1. Run backup diff DB on SITDBDIST03 in UM

BACKUP DATABASE [MonDB] TO DISK = 
	N'G:\BACKUP_LOCAL\Daniel_migrate\SITDBDIST03.MonDB_20220419.dif'
WITH DIFFERENTIAL, NOFORMAT, NOINIT, NAME = 
	N'MonDB-Diff Database Backup', SKIP, NOREWIND, 
	NOUNLOAD, COMPRESSION, STATS = 10
GO

BACKUP DATABASE Monitor TO DISK = 
	N'G:\BACKUP_LOCAL\Daniel_migrate\SITDBDIST03.Monitor_20220419.dif'
WITH DIFFERENTIAL, NOFORMAT, NOINIT, NAME = 
	N'Monitor-Diff Database Backup', SKIP, NOREWIND, 
	NOUNLOAD, COMPRESSION, STATS = 10
GO

BACKUP DATABASE [SiteConfig] TO DISK = 
	N'G:\BACKUP_LOCAL\Daniel_migrate\SITDBDIST03.SiteConfig_20220419.dif'
WITH DIFFERENTIAL, NOFORMAT, NOINIT, NAME = 
	N'SiteConfig-Diff Database Backup', SKIP, NOREWIND, 
	NOUNLOAD, COMPRESSION, STATS = 10
GO


-- 2. Copy the diff backup files on step 4 to SITDBDIST03N (In UM)


-- 3. Run on SITDBDIST03N: Restore diff DB from the files copied in step 5 (In UM)

RESTORE DATABASE MonDB FROM DISK = N'G:\BACKUP_LOCAL\Daniel_Migrate\SITDBDIST03.MonDB_20220419.dif' 
WITH FILE = 1, NOUNLOAD, STATS = 10
GO

RESTORE DATABASE Monitor FROM DISK = N'G:\BACKUP_LOCAL\Daniel_Migrate\SITDBDIST03.Monitor_20220419.dif' 
WITH FILE = 1, NOUNLOAD, STATS = 10
GO

RESTORE DATABASE ReleaseToolDB FROM DISK = N'G:\BACKUP_LOCAL\Daniel_Migrate\SITDBDIST03.ReleaseToolDB_20220419.dif' 
WITH FILE = 1, NOUNLOAD, STATS = 10
GO
