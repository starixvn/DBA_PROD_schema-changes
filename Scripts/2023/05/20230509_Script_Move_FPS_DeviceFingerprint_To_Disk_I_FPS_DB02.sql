/*<info serverAlias="FPS_DB02-FPS_DeviceFingerprint"></info>*/
/*
	Created: 20230509@Sol
	Task: move db file to new location
	DB: FPS_DB02-FPS_DeviceFingerprint
*/

---### Disable jobs related to bodb_Ploutos

use msdb;

GO

EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_FPS_DeviceFingerprint', @enabled = 0;

GO

---### check current location

use master;

GO

select * 
from sys.sysaltfiles
where dbid = DB_ID('FPS_DeviceFingerprint')

select * from sys.master_files where database_id = db_id('FPS_DeviceFingerprint')

select * from FPS_DeviceFingerprint.sys.database_files

GO

---### Run script to change to new location DISK I - 9 files

use master;

GO

ALTER DATABASE FPS_DeviceFingerprint MODIFY FILE ( NAME = FPS_DeviceFingerprint, FILENAME = 'I:\Data\FPS_DB02\FPS_DeviceFingerprint\FPS_DeviceFingerprint.mdf')
ALTER DATABASE FPS_DeviceFingerprint MODIFY FILE ( NAME = FPS_DeviceFingerprint_log, FILENAME = 'I:\Data\FPS_DB02\FPS_DeviceFingerprint\FPS_DeviceFingerprint_log.ldf')
ALTER DATABASE FPS_DeviceFingerprint MODIFY FILE ( NAME = DEVICE_TABLE_01, FILENAME = 'I:\Data\FPS_DB02\FPS_DeviceFingerprint\DEVICE_TABLE_01.ndf')
ALTER DATABASE FPS_DeviceFingerprint MODIFY FILE ( NAME = DEVICE_TABLE_02, FILENAME = 'I:\Data\FPS_DB02\FPS_DeviceFingerprint\DEVICE_TABLE_02.ndf')
ALTER DATABASE FPS_DeviceFingerprint MODIFY FILE ( NAME = DEVICE_TABLE_03, FILENAME = 'I:\Data\FPS_DB02\FPS_DeviceFingerprint\DEVICE_TABLE_03.ndf')
ALTER DATABASE FPS_DeviceFingerprint MODIFY FILE ( NAME = DF_INDEX_01, FILENAME = 'I:\Data\FPS_DB02\FPS_DeviceFingerprint\DF_INDEX_01.ndf')
ALTER DATABASE FPS_DeviceFingerprint MODIFY FILE ( NAME = DEVICE_INDEX_01, FILENAME = 'I:\Data\FPS_DB02\FPS_DeviceFingerprint\DEVICE_INDEX_01.ndf')
ALTER DATABASE FPS_DeviceFingerprint MODIFY FILE ( NAME = DEVICE_INDEX_02, FILENAME = 'I:\Data\FPS_DB02\FPS_DeviceFingerprint\DEVICE_INDEX_02.ndf')
ALTER DATABASE FPS_DeviceFingerprint MODIFY FILE ( NAME = DF_INDEX_02, FILENAME = 'I:\Data\FPS_DB02\FPS_DeviceFingerprint\DF_INDEX_02.ndf')

GO

---server services is disabled
---server services is disabled
---server services is disabled
---server services is disabled
---server services is disabled

GO

---###Move files to new location: From disk H to disk I
---###Move files to new location: From disk H to disk I
---###Move files to new location: From disk H to disk I
---###Move files to new location: From disk H to disk I

GO

---### check current location

use master;

GO

select * 
from sys.sysaltfiles
where dbid = DB_ID('FPS_DeviceFingerprint')

select * from sys.master_files where database_id = db_id('FPS_DeviceFingerprint')

select * from FPS_DeviceFingerprint.sys.database_files

GO

---### Enable jobs related to bodb_Ploutos

use msdb;

GO

EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_FPS_DeviceFingerprint', @enabled = 1;

GO