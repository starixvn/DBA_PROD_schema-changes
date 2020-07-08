/*
    Task: Move DBFRAUD to new Server
		+ Disable sql job
    Server: DBFRAUD
	
	If job are running, please stop sql job as well
*/

EXEC msdb.dbo.sp_update_job @job_name = N'Job to collect the space-used of each FPS database', @enabled = 0
EXEC msdb.dbo.sp_update_job @job_name = N'Testing Backup', @enabled = 0
EXEC msdb.dbo.sp_update_job @job_name = N'DBA : Send SQL Service Restart Alert Mail', @enabled = 0
EXEC msdb.dbo.sp_update_job @job_name = N'syspolicy_purge_history', @enabled = 0
EXEC msdb.dbo.sp_update_job @job_name = N'vndba_monitor_whoisactive', @enabled = 0
EXEC msdb.dbo.sp_update_job @job_name = N'DBA : Monitor Job Fail', @enabled = 0
EXEC msdb.dbo.sp_update_job @job_name = N'dba_deletedata', @enabled = 0
EXEC msdb.dbo.sp_update_job @job_name = N'Test move file', @enabled = 0
EXEC msdb.dbo.sp_update_job @job_name = N'[FPS] Backup Databases', @enabled = 0
EXEC msdb.dbo.sp_update_job @job_name = N'FPSMS - Associated Account Monitoring', @enabled = 0
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_MonDB_Reorg', @enabled = 0
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Reorg_Index', @enabled = 0
EXEC msdb.dbo.sp_update_job @job_name = N'DBA : MonDB Get DB Info', @enabled = 0
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Task_Archive_UnusedDevice', @enabled = 0
EXEC msdb.dbo.sp_update_job @job_name = N'DBA: Check missing backup file', @enabled = 0
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Getwaitinfo 5 Secs', @enabled = 0
EXEC msdb.dbo.sp_update_job @job_name = N'[IPDB] - Import IP2Location', @enabled = 0
EXEC msdb.dbo.sp_update_job @job_name = N'DBA_Getlockinfo 5 Secs', @enabled = 0
EXEC msdb.dbo.sp_update_job @job_name = N'DBA: update stats', @enabled = 0

