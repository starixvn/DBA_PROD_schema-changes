/*
	Task: Full backup DBDW.bodb02 before UM and diff backup DBDW.bodb02, copy backup file to TMPDBDW and diff restore to TMPDBDW in UM
	** ATTENTION!! Must follow comments to run correct potion of scripts on correct server/order
*/


--============================ BEFORE UM 1H==========================================================================================

-- 1. Run full backup DB on DBDW before UM
BACKUP DATABASE [bodb02] TO DISK = 
	N'F:\BACKUP_LOCAL\Daniel_migrate\DBDW.bodb02_20211007.bak'
WITH NOFORMAT, NOINIT, NAME = 
	N'bodb02-Full Database Backup', SKIP, NOREWIND, 
	NOUNLOAD, COMPRESSION, STATS = 10
GO
BACKUP DATABASE [MONDB] TO DISK = 
	N'F:\BACKUP_LOCAL\Daniel_migrate\DBDW.MonDB_20211007.bak'
WITH NOFORMAT, NOINIT, NAME = 
	N'MONDB-Full Database Backup', SKIP, NOREWIND, 
	NOUNLOAD, COMPRESSION, STATS = 10
GO


-- 2. Copy the full backup files on step 1 to TMPDBDW (before UM)


-- 3. Run on TMPDBDW: Restore full DB from the files copied in step 2 (before UM)
USE master

ALTER DATABASE bodb02 SET SINGLE_USER WITH ROLLBACK IMMEDIATE

RESTORE DATABASE bodb02 FROM DISK = N'G:\BACKUP\Daniel_Migrate\DBDW.bodb02_20211007.bak' 
WITH FILE = 1, NORECOVERY, 
	MOVE N'bodb02_Primary' TO N'D:\USER_DB\bodb02\bodb02_Primary.mdf',
	MOVE N'odds_table_1' TO N'D:\USER_DB\bodb02\odds_table_1.ndf',
	MOVE N'Event_index_01' TO N'D:\USER_DB\bodb02\Event_index_01.ndf',
	MOVE N'Odds3rd_index' TO N'D:\USER_DB\bodb02\Odds3rd_index.ndf',
	MOVE N'Odds3rd_data' TO N'D:\USER_DB\bodb02\Odds3rd_data.ndf',
	MOVE N'bodb02_BettransM_index' TO N'D:\USER_DB\bodb02\bodb02_BettransM_index.ndf',
	MOVE N'Event3rd_table' TO N'D:\USER_DB\bodb02\Event3rd_table.ndf',
	MOVE N'bodb02_DATA01' TO N'D:\USER_DB\bodb02\bodb02_DATA01.ndf',
	MOVE N'bodb02_DATA02' TO N'D:\USER_DB\bodb02\bodb02_DATA02.ndf',
	MOVE N'bodb02_DATA03' TO N'D:\USER_DB\bodb02\bodb02_DATA03.ndf',
	MOVE N'bodb02_DATA04' TO N'D:\USER_DB\bodb02\bodb02_DATA04.ndf',
	MOVE N'Odds_EX_index' TO N'D:\USER_DB\bodb02\Odds_EX_index.ndf',
	MOVE N'bodb02_Others_table' TO N'D:\USER_DB\bodb02\bodb02_Others_table.ndf',
	MOVE N'others_table-1' TO N'D:\USER_DB\bodb02\others_table-1.ndf',
	MOVE N'Odds_EX_table' TO N'D:\USER_DB\bodb02\Odds_EX_table.ndf',
	MOVE N'OddsES_table' TO N'D:\USER_DB\bodb02\OddsES_table.ndf',
	MOVE N'OddsES14_table' TO N'D:\USER_DB\bodb02\OddsES14_table.ndf',
	MOVE N'OddsES_index' TO N'D:\USER_DB\bodb02\OddsES_index.ndf',
	MOVE N'OddsES14_index' TO N'D:\USER_DB\bodb02\OddsES14_index.ndf',
	MOVE N'SMP_table' TO N'D:\USER_DB\bodb02\SMP_table.ndf',
	MOVE N'SMP_index' TO N'D:\USER_DB\bodb02\SMP_index.ndf',
	MOVE N'bodb02_Event14_table' TO N'D:\USER_DB\bodb02\bodb02_Event14_table.ndf',
	MOVE N'OddsEngine_index' TO N'D:\USER_DB\bodb02\OddsEngine_index.ndf',
	MOVE N'bodb02_Event_table' TO N'D:\USER_DB\bodb02\bodb02_Event_table.ndf',
	MOVE N'event_table-1' TO N'D:\USER_DB\bodb02\event_table-1.ndf',
	MOVE N'DAT3-1' TO N'D:\USER_DB\bodb02\DAT3-1.ndf',
	MOVE N'table_event-1' TO N'D:\USER_DB\bodb02\table_event-1.ndf',
	MOVE N'OddsEngine_table' TO N'D:\USER_DB\bodb02\OddsEngine_table.ndf',
	MOVE N'custinfo_table-1' TO N'D:\USER_DB\bodb02\custinfo_table-1.ndf',
	MOVE N'odds_Index-1' TO N'D:\USER_DB\bodb02\odds_Index-1.ndf',
	MOVE N'INDEX-1' TO N'D:\USER_DB\bodb02\INDEX-1.ndf',
	MOVE N'OddsCN88_index_01' TO N'D:\USER_DB\bodb02\OddsCN88_index_01.NDF',
	MOVE N'OddsCN88_table_01' TO N'D:\USER_DB\bodb02\OddsCN88_Table_01.NDF',
	MOVE N'OddsOS_index' TO N'D:\USER_DB\bodb02\OddsOS_index.ndf',
	MOVE N'OddsOS_table' TO N'D:\USER_DB\bodb02\OddsOS_table.ndf',
	MOVE N'oddsSettingOS_index' TO N'D:\USER_DB\bodb02\oddsSettingOS_index.ndf',
	MOVE N'oddsSettingOS_table' TO N'D:\USER_DB\bodb02\oddsSettingOS_table.ndf',
	MOVE N'oddsHistoryOS_index' TO N'D:\USER_DB\bodb02\oddsHistoryOS_index.ndf',
	MOVE N'oddsHistoryOS_table' TO N'D:\USER_DB\bodb02\oddsHistoryOS_table.ndf',
	MOVE N'betlimit_index' TO N'D:\USER_DB\bodb02\betlimit_index.ndf',
	MOVE N'betlimit_table' TO N'D:\USER_DB\bodb02\betlimit_table.ndf',
	MOVE N'bodb02_Log' TO N'D:\USER_DB\bodb02\bodb02_Log.ldf',
NOUNLOAD, STATS = 10

--------------------------------------------------------------------------------------------------------
ALTER DATABASE MonDB SET MULTI_USER WITH ROLLBACK IMMEDIATE

RESTORE DATABASE MonDB FROM DISK = N'G:\BACKUP\Daniel_Migrate\DBDW.MonDB_20211007.bak' 
WITH FILE = 1, NORECOVERY, 
	MOVE N'MONDB' TO N'G:\USER_DB\MonDB\MONDB.mdf',
	MOVE N'MONDB_log' TO N'G:\USER_DB\MonDB\MONDB_log.ldf',
NOUNLOAD, STATS = 10




--============================ IN UM ==========================================================================================

-- 4. Run backup diff DB on DBDW in UM
BACKUP DATABASE [bodb02] TO DISK = 
	N'F:\BACKUP_LOCAL\Daniel_migrate\DBDW.bodb02_20211007.dif'
WITH DIFFERENTIAL, NOFORMAT, NOINIT, NAME = 
	N'bodb02-Full Database Backup', SKIP, NOREWIND, 
	NOUNLOAD, COMPRESSION, STATS = 10
GO
BACKUP DATABASE [MONDB] TO DISK = 
	N'F:\BACKUP_LOCAL\Daniel_migrate\DBDW.MonDB_20211007.dif'
WITH DIFFERENTIAL, NOFORMAT, NOINIT, NAME = 
	N'MONDB-Full Database Backup', SKIP, NOREWIND, 
	NOUNLOAD, COMPRESSION, STATS = 10
GO


-- 5. Copy the diff backup files on step 4 to TMPDBDW (In UM)


-- 6. Run on TMPDBDW: Restore diff DB from the files copied in step 5 (In UM)
RESTORE DATABASE bodb02 FROM DISK = N'G:\BACKUP\Daniel_Migrate\DBDW.bodb02_20211007.dif' 
WITH FILE = 1, NOUNLOAD, STATS = 10

----------------------------------------------------------------------------------------------------
RESTORE DATABASE MonDB FROM DISK = N'G:\BACKUP\Daniel_Migrate\DBDW.MonDB_20211007.dif' 
WITH FILE = 1, NOUNLOAD, STATS = 10