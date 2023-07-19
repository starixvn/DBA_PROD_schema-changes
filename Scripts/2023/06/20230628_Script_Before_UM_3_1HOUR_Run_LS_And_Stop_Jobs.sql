--in fps_db02

--1. start backup job
USE msdb ;  
GO  
  
EXEC msdb.dbo.sp_start_job N'LSBackup_FPS_DeviceFingerprint' ;  

--Disable job
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_FPS_DeviceFingerprint', @enabled = 0;

GO

--2. wait 1 done, switch to server .125

--in .125
--start copy job
EXEC msdb.dbo.sp_start_job N'LSCopy_FPS_DB02_FPS_DeviceFingerprint' ;  

--start restore job
EXEC msdb.dbo.sp_start_job N'LSRestore_FPS_DB02_FPS_DeviceFingerprint' ;  

GO

--Disable job
EXEC msdb.dbo.sp_update_job @job_name = N'LSCopy_FPS_DB02_FPS_DeviceFingerprint', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'LSRestore_FPS_DB02_FPS_DeviceFingerprint', @enabled = 0;