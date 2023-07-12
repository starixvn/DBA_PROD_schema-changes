/*
	Task: Enable DBA Jobs (non-business jobs)
	Run on DBGRP03N1/DBGRP03N2
*/

-- Gen script to disable all jobs then copy & run commands
use msdb
go
select 'EXEC msdb.dbo.sp_update_job @job_name=''' + name + ''',@enabled = 1' from sysjobs where name like 'DBA[_]%'

-- commands generated:
EXEC msdb.dbo.sp_update_job @job_name='DBA_AG_Switch_Jobs',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_AG_Switch_Jobs_Monitor',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_Deadlock_Monitor',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_Diff_Backup',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_Full_Backup',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_Getlockinfo 5 Secs',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_Getwaitinfo 5 Secs',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_Mon_ClearUpData',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_MonDB_Reorg',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_Reorg_Index',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_Reset_Bet_Sequence',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_Reset_BetX_Sequence',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_Reset_Refno_Sequence',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_Script_Instance_Object',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_Switch_Errorlog',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_Txn_Backup',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_UM_Diff_backup',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_UM_REINDEX',@enabled = 1