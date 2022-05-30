/*
	Task: Stop & Disable ALL Jobs
	Run on old DBCUST
*/


-- Disable All jobs
--select 'EXEC msdb.dbo.sp_update_job @job_name=''' + name + ''',@enabled = 0' from sysjobs
EXEC msdb.dbo.sp_update_job @job_name='Archive Credit Accounts',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='Archive Deposit Member - Get Affiliate Account',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='Archive Deposit Member - Step 1: Collect Dormant Member',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='BalanceUPBackground_BackupFull_Cust',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='bodb_CustomerLog: Checking Write Log failed',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='bodb_Licensee: Check Missing BA Member',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='Clear login (On_user) for bodb_licensee',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='CUSTDB: Daily auto adjust VR setting for Robot accounts',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='CustDB: Daily Auto Clean Up Headline Group Mapping',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='CustDB: Daily auto clear credit inactive accounts',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='CustDB: Daily Auto Migrate Data ProblemAccount',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='CustDB: Delete old CustDangerLevel info weekly',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='CustDB: Initial Setting Process - Credit',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='CustDB: TOControl ProcessData',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA : MonDB Get DB Info',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA : Monitor Job Fail',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA : Send SQL Service Restart Alert Mail',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA: update stats',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA_BCP_OUT_TO_MNL',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA_ClearData',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA_ClearSiteconfigData',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA_Deadlock_Monitor',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA_Diff_Backup',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA_Diff_Backup_Tmp',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA_Full_Backup',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA_Full_Backup_Daily',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA_Getlockinfo 5 Secs',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA_Getwaitinfo 5 Secs',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA_MonDB_Reorg',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA_Reorg_Index',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA_Restore_VerifyOnly',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA_Script_Instance_Object',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA_UM_Diff_backup',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA_UM_REINDEX',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBCUST - CUSTDB - Soccer - VR Setting Auto Update',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBCUST - CUSTDB - SuspiciousAccountNotify',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='dbcust - Winlimit Game - Task_block_member',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='dbcust - Winlimit Game - Task_block_member - xtest',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='dbcust - Winlimit Game - Update Max Winlimit by Currency',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBCUST: Scan Abnormal Member',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBCUST: SyncPT - CN88',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBCust_CustDB : backup full',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='Expired subscription clean up',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='LSAlert_DBCUST',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='LSBackup_AUTHDB',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='LSBackup_IPDB',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='LSBackup_NAP_UserControl',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='NAP_UserControl: Clear Login (eaOn_User)',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='syspolicy_purge_history',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='vnDBA : Objects Monitoring - Collect Data',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='vnDBA : Wait Statistics Monitoring',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='vnDBA: Monitor_dba_tasks',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='vndba: Perfmonitor_CollectCounter',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='vndba: Perfmonitor_DailyReport',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='vndba_monitor_whoisactive',@enabled = 0


--Stop ALL jobs
--SELECT 'EXEC msdb.dbo.sp_stop_job ''' + name +'''' [Script] ,Enabled FROM msdb.dbo.sysjobs ORDER BY 1
EXEC msdb.dbo.sp_stop_job 'Archive Credit Accounts'
EXEC msdb.dbo.sp_stop_job 'Archive Deposit Member - Get Affiliate Account'
EXEC msdb.dbo.sp_stop_job 'Archive Deposit Member - Step 1: Collect Dormant Member'
EXEC msdb.dbo.sp_stop_job 'BalanceUPBackground_BackupFull_Cust'
EXEC msdb.dbo.sp_stop_job 'bodb_CustomerLog: Checking Write Log failed'
EXEC msdb.dbo.sp_stop_job 'bodb_Licensee: Check Missing BA Member'
EXEC msdb.dbo.sp_stop_job 'Clear login (On_user) for bodb_licensee'
EXEC msdb.dbo.sp_stop_job 'CUSTDB: Daily auto adjust VR setting for Robot accounts'
EXEC msdb.dbo.sp_stop_job 'CustDB: Daily Auto Clean Up Headline Group Mapping'
EXEC msdb.dbo.sp_stop_job 'CustDB: Daily auto clear credit inactive accounts'
EXEC msdb.dbo.sp_stop_job 'CustDB: Daily Auto Migrate Data ProblemAccount'
EXEC msdb.dbo.sp_stop_job 'CustDB: Delete old CustDangerLevel info weekly'
EXEC msdb.dbo.sp_stop_job 'CustDB: Initial Setting Process - Credit'
EXEC msdb.dbo.sp_stop_job 'CustDB: TOControl ProcessData'
EXEC msdb.dbo.sp_stop_job 'DBA : MonDB Get DB Info'
EXEC msdb.dbo.sp_stop_job 'DBA : Monitor Job Fail'
EXEC msdb.dbo.sp_stop_job 'DBA : Send SQL Service Restart Alert Mail'
EXEC msdb.dbo.sp_stop_job 'DBA: update stats'
EXEC msdb.dbo.sp_stop_job 'DBA_BCP_OUT_TO_MNL'
EXEC msdb.dbo.sp_stop_job 'DBA_ClearData'
EXEC msdb.dbo.sp_stop_job 'DBA_ClearSiteconfigData'
EXEC msdb.dbo.sp_stop_job 'DBA_Deadlock_Monitor'
EXEC msdb.dbo.sp_stop_job 'DBA_Diff_Backup'
EXEC msdb.dbo.sp_stop_job 'DBA_Diff_Backup_Tmp'
EXEC msdb.dbo.sp_stop_job 'DBA_Full_Backup'
EXEC msdb.dbo.sp_stop_job 'DBA_Full_Backup_Daily'
EXEC msdb.dbo.sp_stop_job 'DBA_Getlockinfo 5 Secs'
EXEC msdb.dbo.sp_stop_job 'DBA_Getwaitinfo 5 Secs'
EXEC msdb.dbo.sp_stop_job 'DBA_MonDB_Reorg'
EXEC msdb.dbo.sp_stop_job 'DBA_Reorg_Index'
EXEC msdb.dbo.sp_stop_job 'DBA_Restore_VerifyOnly'
EXEC msdb.dbo.sp_stop_job 'DBA_Script_Instance_Object'
EXEC msdb.dbo.sp_stop_job 'DBA_UM_Diff_backup'
EXEC msdb.dbo.sp_stop_job 'DBA_UM_REINDEX'
EXEC msdb.dbo.sp_stop_job 'DBCUST - CUSTDB - Soccer - VR Setting Auto Update'
EXEC msdb.dbo.sp_stop_job 'DBCUST - CUSTDB - SuspiciousAccountNotify'
EXEC msdb.dbo.sp_stop_job 'dbcust - Winlimit Game - Task_block_member'
EXEC msdb.dbo.sp_stop_job 'dbcust - Winlimit Game - Task_block_member - xtest'
EXEC msdb.dbo.sp_stop_job 'dbcust - Winlimit Game - Update Max Winlimit by Currency'
EXEC msdb.dbo.sp_stop_job 'DBCUST: Scan Abnormal Member'
EXEC msdb.dbo.sp_stop_job 'DBCUST: SyncPT - CN88'
EXEC msdb.dbo.sp_stop_job 'DBCust_CustDB : backup full'
EXEC msdb.dbo.sp_stop_job 'Expired subscription clean up'
--EXEC msdb.dbo.sp_stop_job 'LSAlert_DBCUST'
--EXEC msdb.dbo.sp_stop_job 'LSBackup_AUTHDB'
--EXEC msdb.dbo.sp_stop_job 'LSBackup_IPDB'
--EXEC msdb.dbo.sp_stop_job 'LSBackup_NAP_UserControl'
EXEC msdb.dbo.sp_stop_job 'NAP_UserControl: Clear Login (eaOn_User)'
--EXEC msdb.dbo.sp_stop_job 'syspolicy_purge_history'
EXEC msdb.dbo.sp_stop_job 'vnDBA : Objects Monitoring - Collect Data'
EXEC msdb.dbo.sp_stop_job 'vnDBA : Wait Statistics Monitoring'
EXEC msdb.dbo.sp_stop_job 'vnDBA: Monitor_dba_tasks'
EXEC msdb.dbo.sp_stop_job 'vndba: Perfmonitor_CollectCounter'
EXEC msdb.dbo.sp_stop_job 'vndba: Perfmonitor_DailyReport'
EXEC msdb.dbo.sp_stop_job 'vndba_monitor_whoisactive'