

---444444444444444

go


declare @newlocation varchar(1000) = 'I:\Data\FPS_DB02\FPS_DeviceFingerprint\' --- end with \
select name, physical_name, CONCAT('ALTER DATABASE ', db_name(database_id),' MODIFY FILE ( NAME = ', name,', FILENAME = ''', @newlocation, REVERSE(left(REVERSE(physical_name), charindex('\', REVERSE(physical_name)) - 1)), ''')')

, charindex('\', REVERSE(physical_name)), REVERSE(physical_name)
, REVERSE(left(REVERSE(physical_name), charindex('\', REVERSE(physical_name)) - 1))
from sys.master_files
where db_name(database_id) = 'FPS_DeviceFingerprint'

go

Use master;

go 

select * 
from sys.sysaltfiles
where dbid = DB_ID('FPS_DeviceFingerprint')

GO
--I:\Data\FPS_DB02\FPS_DeviceFingerprint\DEVICE_INDEX_01.ndf
--D:\Data\FPS_DeviceFingerprint\DEVICE_INDEX_03.ndf
Use master;

go 

ALTER DATABASE FPS_DeviceFingerprint MODIFY FILE ( NAME = DEVICE_INDEX_01_BigINT, FILENAME = 'I:\Data\FPS_DB02\FPS_DeviceFingerprint\DEVICE_INDEX_01_BigINT.ndf')
ALTER DATABASE FPS_DeviceFingerprint MODIFY FILE ( NAME = DEVICE_INDEX_02_BigINT, FILENAME = 'I:\Data\FPS_DB02\FPS_DeviceFingerprint\DEVICE_INDEX_02_BigINT.ndf')
ALTER DATABASE FPS_DeviceFingerprint MODIFY FILE ( NAME = DEVICE_INDEX_03_BigINT, FILENAME = 'D:\Data\FPS_DeviceFingerprint\DEVICE_INDEX_03_BigINT.ndf')
ALTER DATABASE FPS_DeviceFingerprint MODIFY FILE ( NAME = DEVICE_TABLE_01_BigINT, FILENAME = 'I:\Data\FPS_DB02\FPS_DeviceFingerprint\DEVICE_TABLE_01_BigINT.ndf')
ALTER DATABASE FPS_DeviceFingerprint MODIFY FILE ( NAME = DEVICE_TABLE_02_BigINT, FILENAME = 'I:\Data\FPS_DB02\FPS_DeviceFingerprint\DEVICE_TABLE_02_BigINT.ndf')
ALTER DATABASE FPS_DeviceFingerprint MODIFY FILE ( NAME = DEVICE_TABLE_03_BigINT, FILENAME = 'I:\Data\FPS_DB02\FPS_DeviceFingerprint\DEVICE_TABLE_03_BigINT.ndf')

---### Take db OFFLINE to prepare moving physical files

use master;

GO

ALTER DATABASE FPS_DeviceFingerprint SET OFFLINE WITH ROLLBACK IMMEDIATE;

GO

---###Move files to new location: From disk F to disk I
---###Move files to new location: From disk F to disk I
---###Move files to new location: From disk F to disk I
---###Move files to new location: From disk F to disk I

---### when done - Take db ONLINE

use master;

GO

ALTER DATABASE FPS_DeviceFingerprint SET ONLINE;

GO

---### check current location

use master;

GO

select * 
from sys.sysaltfiles
where dbid = DB_ID('FPS_DeviceFingerprint')

GO

--####Verify data
--####Verify data
--####Verify data
--####Verify data

---###enable LS job
-- fps_db02 server
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_FPS_DeviceFingerprint', @enabled = 1;

-- .125 server
EXEC msdb.dbo.sp_update_job @job_name = N'LSCopy_FPS_DB02_FPS_DeviceFingerprint', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'LSRestore_FPS_DB02_FPS_DeviceFingerprint', @enabled = 1;

GO