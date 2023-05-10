/*<info serverAlias="FPS_DB02-tempdb"></info>*/
/*
	Created: 20230509@Sol
	Task: move db file to new location
	DB: FPS_DB02-tempdb
*/

---### Run script to change to new location DISK I
---### FPS_DB02\FPS_01 instance

use master;

GO

ALTER DATABASE tempdb MODIFY FILE ( NAME = tempdev, FILENAME = 'I:\SystemDB\TempDB_FPS_01\tempdb.mdf')
ALTER DATABASE tempdb MODIFY FILE ( NAME = templog, FILENAME = 'I:\SystemDB\TempDB_FPS_01\templog.ldf')
ALTER DATABASE tempdb MODIFY FILE ( NAME = tempdev_02, FILENAME = 'I:\SystemDB\TempDB_FPS_01\tempdev_02.ndf')
ALTER DATABASE tempdb MODIFY FILE ( NAME = tempdev_03, FILENAME = 'I:\SystemDB\TempDB_FPS_01\tempdev_03.ndf')
ALTER DATABASE tempdb MODIFY FILE ( NAME = tempdev_04, FILENAME = 'I:\SystemDB\TempDB_FPS_01\tempdev_04.ndf')
ALTER DATABASE tempdb MODIFY FILE ( NAME = tempdev_05, FILENAME = 'I:\SystemDB\TempDB_FPS_01\tempdev_05.ndf')
ALTER DATABASE tempdb MODIFY FILE ( NAME = tempdev_06, FILENAME = 'I:\SystemDB\TempDB_FPS_01\tempdev_06.ndf')
ALTER DATABASE tempdb MODIFY FILE ( NAME = tempdev_07, FILENAME = 'I:\SystemDB\TempDB_FPS_01\tempdev_07.ndf')
ALTER DATABASE tempdb MODIFY FILE ( NAME = tempdev_08, FILENAME = 'I:\SystemDB\TempDB_FPS_01\tempdev_08.ndf')
ALTER DATABASE tempdb MODIFY FILE ( NAME = tempdev_09, FILENAME = 'I:\SystemDB\TempDB_FPS_01\tempdev_09.ndf')
ALTER DATABASE tempdb MODIFY FILE ( NAME = tempdev_10, FILENAME = 'I:\SystemDB\TempDB_FPS_01\tempdev_10.ndf')
ALTER DATABASE tempdb MODIFY FILE ( NAME = tempdev_11, FILENAME = 'I:\SystemDB\TempDB_FPS_01\tempdev_11.ndf')
ALTER DATABASE tempdb MODIFY FILE ( NAME = tempdev_12, FILENAME = 'I:\SystemDB\TempDB_FPS_01\tempdev_12.ndf')
ALTER DATABASE tempdb MODIFY FILE ( NAME = tempdev_13, FILENAME = 'I:\SystemDB\TempDB_FPS_01\tempdev_13.ndf')
ALTER DATABASE tempdb MODIFY FILE ( NAME = tempdev_14, FILENAME = 'I:\SystemDB\TempDB_FPS_01\tempdev_14.ndf')
ALTER DATABASE tempdb MODIFY FILE ( NAME = tempdev_15, FILENAME = 'I:\SystemDB\TempDB_FPS_01\tempdev_15.ndf')
ALTER DATABASE tempdb MODIFY FILE ( NAME = tempdev_16, FILENAME = 'I:\SystemDB\TempDB_FPS_01\tempdev_16.ndf')

GO