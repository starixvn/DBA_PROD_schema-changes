/***
	Created@20220314: bobby.nguyen
	Task: #169911 - FPS_DB02 - Move data files
	Database: FPS_DB02
***/
-- Step 1: Move FPS_DeviceFingerprint Log file
USE master;
ALTER DATABASE FPS_DeviceFingerprint SET OFFLINE;
GO
USE master;
alter database FPS_DeviceFingerprint
modify file (name=FPS_DeviceFingerprint_log, filename=N'I:\Data\FPS_DB02\FPS_DeviceFingerprint\FPS_DeviceFingerprint_log.ldf');
GO
USE master;
ALTER DATABASE FPS_DeviceFingerprint SET ONLINE;
GO


-- Step 2: Move tempdb data files
use master;
alter database tempdb
modify file (name=tempdev, filename=N'I:\SystemDB\tempDB\tempdb.mdf');
GO
alter database tempdb
modify file (name=templog, filename=N'I:\SystemDB\tempDB\templog.ldf');
GO
alter database tempdb
modify file (name=tempdev_02, filename=N'I:\SystemDB\tempDB\tempdev_02.ndf');
GO
alter database tempdb
modify file (name=tempdev_03, filename=N'I:\SystemDB\tempDB\tempdev_03.ndf');
GO
alter database tempdb
modify file (name=tempdev_04, filename=N'I:\SystemDB\tempDB\tempdev_04.ndf');
GO
alter database tempdb
modify file (name=tempdev_05, filename=N'I:\SystemDB\tempDB\tempdev_05.ndf');
GO
alter database tempdb
modify file (name=tempdev_06, filename=N'I:\SystemDB\tempDB\tempdev_06.ndf');
GO
alter database tempdb
modify file (name=tempdev_07, filename=N'I:\SystemDB\tempDB\tempdev_07.ndf');
GO
alter database tempdb
modify file (name=tempdev_08, filename=N'I:\SystemDB\tempDB\tempdev_08.ndf');
GO
alter database tempdb
modify file (name=tempdev_09, filename=N'I:\SystemDB\TempDB\tempdev_09.ndf');
GO
alter database tempdb
modify file (name=tempdev_10, filename=N'I:\SystemDB\TempDB\tempdev_10.ndf');
GO
alter database tempdb
modify file (name=tempdev_11, filename=N'I:\SystemDB\TempDB\tempdev_11.ndf');
GO
alter database tempdb
modify file (name=tempdev_12, filename=N'I:\SystemDB\TempDB\tempdev_12.ndf');
GO
alter database tempdb
modify file (name=tempdev_13, filename=N'I:\SystemDB\TempDB\tempdev_13.ndf');
GO
alter database tempdb
modify file (name=tempdev_14, filename=N'I:\SystemDB\TempDB\tempdev_14.ndf');
GO
alter database tempdb
modify file (name=tempdev_15, filename=N'I:\SystemDB\TempDB\tempdev_15.ndf');
GO
alter database tempdb
modify file (name=tempdev_16, filename=N'I:\SystemDB\TempDB\tempdev_16.ndf');
GO

-- Step 3: Restart SQL Server to check tempdb
-- Step 4: Inform SE team to extend T$ disk
