/*
	Task: Disable / enable Jobs
	Run on SITDBCUST/SITDBCUSTN
*/

-- Gen script to disable all jobs then copy & run commands
use msdb
go
select 'EXEC msdb.dbo.sp_update_job @job_name=''' + name + ''',@enabled = 0' from sysjobs
EXEC msdb.dbo.sp_update_job @job_name='BalanceUPBackground_BackupFull_Cust',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='bodb_CustomerLog: Checking Write Log failed',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='CustDB: Daily Auto Clean Up Headline Group Mapping',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='CustDB: Daily auto clear credit inactive accounts',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='CustDB: Initial Setting Process - Credit',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='CustDB: TOControl ProcessData',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA : MonDB Get DB Info',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA : Monitor Job Fail',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA : Send SQL Service Restart Alert Mail',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA : System Database Backup',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA: Task - Init data for SIT',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA:DBA_GrantDBPermissionDaily',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA_B4UM_Full_backup',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA_ClearData',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA_Deadlock_Monitor',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA_Diff_Backup',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA_Full_Backup',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA_Reorg_Index',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA_Script_Instance_Object',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA_Txn_Backup',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA_UM_Diff_backup',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA_UM_REINDEX',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='dbcust - Winlimit Game - Task_block_member',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBCUST: SyncPT - CN88',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBCust_CustDB : backup full',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='Expired subscription clean up',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='NAP_UserControl: Clear Login (eaOn_User)',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='syspolicy_purge_history',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='test1',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='vnDBA : Objects Monitoring - Collect Data',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='vnDBA : Wait Statistics Monitoring',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='vnDBA: CWL data support',@enabled = 0

-- Gen script stop jobs
SELECT 'EXEC msdb.dbo.sp_stop_job ''' + name +'''' [Script] ,Enabled
FROM msdb.dbo.sysjobs
--WHERE name IN ('DBA_Task : LogDB CopyUserLog from DBTrans')
ORDER BY 1
GO
----------------------------------------------------------------------------------------------------------------------


-- Gen script to enable relevant jobs on old servers then copy & run commands on new servers
use msdb
go
select 'EXEC msdb.dbo.sp_update_job @job_name=''' + name + ''',@enabled = 1' from sysjobs where enabled = 1
--Run on new servers to enable the jobs (for jobs that previously disabled during setup):
EXEC msdb.dbo.sp_update_job @job_name='CustDB: Daily Auto Clean Up Headline Group Mapping',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='BalanceUPBackground_BackupFull_Cust',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='vnDBA: CWL data support',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='CustDB: Initial Setting Process - Credit',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA:DBA_GrantDBPermissionDaily',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA: Task - Init data for SIT',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='dbcust - Winlimit Game - Task_block_member',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_Deadlock_Monitor',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_Script_Instance_Object',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='NAP_UserControl: Clear Login (eaOn_User)',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='test1',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA : Send SQL Service Restart Alert Mail',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='CustDB: TOControl ProcessData',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA : MonDB Get DB Info',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBCUST: SyncPT - CN88',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_UM_REINDEX',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_ClearData',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_Full_Backup',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='syspolicy_purge_history',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA : Monitor Job Fail',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='CustDB: Daily auto clear credit inactive accounts',@enabled = 1