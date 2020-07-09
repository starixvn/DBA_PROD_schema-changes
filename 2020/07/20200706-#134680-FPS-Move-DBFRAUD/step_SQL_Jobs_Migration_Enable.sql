USE [msdb]
GO
EXEC msdb.dbo.sp_update_job @job_name=N'DBA: update stats - DBFRAUD', @enabled=1;

GO
EXEC msdb.dbo.sp_update_job @job_name=N'Job to collect the space-used of each FPS database - DBFRAUD', @enabled=1

GO
EXEC msdb.dbo.sp_update_job @job_name=N'[IPDB] - Import IP2Location', @enabled=1;

GO
EXEC msdb.dbo.sp_update_job @job_name=N'DBA : Send SQL Service Restart Alert Mail', @enabled=1;

GO
EXEC msdb.dbo.sp_update_job @job_name=N'dba_deletedata', @enabled=1

GO
EXEC msdb.dbo.sp_update_job @job_name=N'DBA_MonDB_Reorg', @enabled=1

GO
EXEC msdb.dbo.sp_update_job @job_name=N'DBA_Reorg_Index', @enabled=1

GO
EXEC msdb.dbo.sp_update_job @job_name=N'DBA_Task_Archive_UnusedDevice', @enabled=1

GO
EXEC msdb.dbo.sp_update_job @job_name=N'FPSMS - Associated Account Monitoring', @enabled=1