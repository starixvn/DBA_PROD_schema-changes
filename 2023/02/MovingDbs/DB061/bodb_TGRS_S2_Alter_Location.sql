/*<info serverAlias="DB061-bodb_TGRS"></info>*/
/*
	Created: 20230217@Sol
	Task: alter location of bodb_TGRS to new location
	DB: DB061-bodb_TGRS
*/

GO

---check current location
SELECT name, physical_name AS CurrentLocation, state_desc  , *
FROM sys.master_files  
WHERE db_name(database_id) like 'bodb_TGRS'

GO

USE master;

GO

---run script to alter location
ALTER DATABASE bodb_TGRS  MODIFY FILE ( NAME = bodb_TGRS, FILENAME = 'F:\USER_DB\bodb_TGRS\bodb_TGRS.mdf ');
ALTER DATABASE bodb_TGRS  MODIFY FILE ( NAME = bodb_TGRS_log, FILENAME = 'F:\USER_DB\bodb_TGRS\bodb_TGRS_log.ldf ');
ALTER DATABASE bodb_TGRS  MODIFY FILE ( NAME = [Data], FILENAME = 'F:\USER_DB\bodb_TGRS\Data.ndf ');
ALTER DATABASE bodb_TGRS  MODIFY FILE ( NAME = [Index], FILENAME = 'F:\USER_DB\bodb_TGRS\Index.ndf ');
ALTER DATABASE bodb_TGRS  MODIFY FILE ( NAME = Trader_StagingDB, FILENAME = 'F:\USER_DB\bodb_TGRS\Trader_StagingDB.ndf ');
ALTER DATABASE bodb_TGRS  MODIFY FILE ( NAME = TraderInfo_Index, FILENAME = 'F:\USER_DB\bodb_TGRS\TraderInfo_Index.ndf ');
ALTER DATABASE bodb_TGRS  MODIFY FILE ( NAME = TraderInfo_Table, FILENAME = 'F:\USER_DB\bodb_TGRS\TraderInfo_Table.ndf ');
ALTER DATABASE bodb_TGRS  MODIFY FILE ( NAME = TraderPerformanceDetail_Index, FILENAME = 'F:\USER_DB\bodb_TGRS\TraderPerformanceDetail_Index.ndf ');
ALTER DATABASE bodb_TGRS  MODIFY FILE ( NAME = TraderPerformanceDetail_Table, FILENAME = 'F:\USER_DB\bodb_TGRS\TraderPerformanceDetail_Table.ndf ');
ALTER DATABASE bodb_TGRS  MODIFY FILE ( NAME = TraderPerformanceSummary_Index, FILENAME = 'F:\USER_DB\bodb_TGRS\TraderPerformanceSummary_Index.ndf ');
ALTER DATABASE bodb_TGRS  MODIFY FILE ( NAME = TraderPerformanceSummary_Table, FILENAME = 'F:\USER_DB\bodb_TGRS\TraderPerformanceSummary_Table.ndf ');
ALTER DATABASE bodb_TGRS  MODIFY FILE ( NAME = UserLog_RunSp, FILENAME = 'F:\USER_DB\bodb_TGRS\UserLog_RunSp.ndf ');

GO