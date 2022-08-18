/*
	Task: Enable Jobs
	Run on DBDIST03N
*/

EXEC msdb.dbo.sp_update_job @job_name='DBA : MonDB Get DB Info',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA : Monitor Job Fail',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA : Repl_Check_Dist_Agent',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA : Send SQL Service Restart Alert Mail',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_Deadlock_Monitor',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_Diff_Backup',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_Full_Backup',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_MonDB_Reorg',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_Monitor Replication Latency',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_Monitor Replication Latency NightScan',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_Repl_Monitor',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_RepMonitor Monthly Purge',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_Script_Instance_Object',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_UM_REINDEX_EXEC',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_UM_REINDEX_GEN',@enabled = 1
