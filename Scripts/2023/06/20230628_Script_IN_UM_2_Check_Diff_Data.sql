




---UM FIRSTTTTTTTTTTTTTTTTTTTTTTTTTT


USE [FPS_DeviceFingerprint]
GO

---check random some data range using below script
select CHECKSUM_AGG(checksum(*)) from Device d with(nolock) where d.Increment between 5000 and 10000
select CHECKSUM_AGG(checksum(*)) from Device_bigint d with(nolock) where d.Increment between 5000 and 10000

GO

--disable job UM

--Disable job fps_db02
EXEC msdb.dbo.sp_update_job @job_name = N'LSAlert_FPS_DB02', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_FPS_DeviceFingerprint', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA: SyncData_ToDeviceBigInt', @enabled = 0;
-> stop job N'DBA: SyncData_ToDeviceBigInt'

--disable job fps_02\fps_01
EXEC msdb.dbo.sp_update_job @job_name = N'[FPS] Backup Databases', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Reorg_Index', @enabled = 0;

--
EXEC msdb.dbo.sp_update_job @job_name = N'LSAlert_FPS_DB02\FPS_01', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_FPS_ADMIN', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_FPS_DEV', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_FPS_EVI', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_FPS_MiddleService', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_FPS_RPT', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_FPS_SUB_12BET', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_FPS_SUB_AgentVelki', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_FPS_SUB_Goal123', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_FPS_SUB_Velki', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_FPS_SUB_W88', @enabled = 0;



--disable job fps_01\mssqlserverweb
EXEC msdb.dbo.sp_update_job @job_name = N'[FPS] Backup Databases', @enabled = 0;

--
EXEC msdb.dbo.sp_update_job @job_name = N'LSAlert_FPS_DB01\MSSQLSERVERWEB', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_FPS_SUB_AgentCTMax', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_FPS_SUB_AgentSky', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_FPS_SUB_CTMax', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_FPS_SUB_FPS', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_FPS_SUB_N88', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_FPS_SUB_N8B', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_FPS_SUB_N8G', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_FPS_SUB_Sky', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_FPS_SUB_Soon88', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_FPS_SUB_SUBTEST', @enabled = 0;


