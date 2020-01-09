
/*
    created: 20200109@Lukas
    Task: backup & restore bodb_ost, MonDB
    
*/

-- DB054  (DBA_Diff_Backup)(2 DBs)
-- monDB,bodb_ost

-- 1.1.bodb_ost (0.1GB / 5 sec)
BACKUP DATABASE [bodb_ost]
TO DISK = N'G:\BACKUP_LOCAL\DB054.bodb_ost_20200109_1330.dif' WITH DIFFERENTIAL
, NOFORMAT , NOINIT,  NAME = N'bodb_ost-Differential Database Backup'
, SKIP, NOREWIND, NOUNLOAD, COMPRESSION,  STATS = 10
GO

-- 1.2.monDB (0.4GB / 0.2 min)
BACKUP DATABASE [monDB]
TO DISK = N'G:\BACKUP_LOCAL\DB042.monDB_20200109_1330.dif' WITH DIFFERENTIAL
, NOFORMAT , NOINIT,  NAME = N'monDB-Differential Database Backup'
, SKIP, NOREWIND, NOUNLOAD, COMPRESSION,  STATS = 10
GO


-- 2.XCOPY (DB054 -> DB541) (104MB/s / 2.5 min)
--Echo start-time: %date% %time%
--Robocopy G:\BACKUP_LOCAL\ \\10.1.1.186\G$\BACKUP2\ DB054.*_20200109_1330.dif /maxage:1 /IS /NP /W:10
--Echo finish-time:%date% %time%


-- DB0541 (sa)
-- 3.1.Restore bodb_ost (105 MB / 2 sec)
USE [master]
GO
RESTORE DATABASE [bodb_ost]
FROM  DISK = N'I:\BACKUP2\DB054.bodb_ost_20200109_1330.dif' WITH  FILE = 1
,RECOVERY, NOUNLOAD, REPLACE, STATS = 5
GO

-- 3.2.monDB (0.4GB / 0.2 min)
USE [master]
GO
RESTORE DATABASE [monDB]
FROM  DISK = N'I:\BACKUP2\DB054.monDB_20200109_1330.dif' WITH  FILE = 1
,RECOVERY, NOUNLOAD, REPLACE, STATS = 5
GO


