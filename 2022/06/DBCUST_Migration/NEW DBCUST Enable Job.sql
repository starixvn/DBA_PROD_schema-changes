/*
	Task: Enable Jobs
	Run on new DBCUST
*/

EXEC msdb.dbo.sp_update_job @job_name='dbcust - Winlimit Game - Update Max Winlimit by Currency',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA: update stats',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='LSAlert_DBCUST',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='vndba_monitor_whoisactive',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='Expired subscription clean up',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='CustDB: Initial Setting Process - Credit',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='LSBackup_NAP_UserControl',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_Diff_Backup',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_Deadlock_Monitor',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_Full_Backup',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='Archive Credit Accounts',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA : Send SQL Service Restart Alert Mail',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_ClearData',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='CustDB: Daily auto clear credit inactive accounts',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='BalanceUPBackground_BackupFull_Cust',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='vnDBA : Objects Monitoring - Collect Data',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBCUST - CUSTDB - Soccer - VR Setting Auto Update',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBCUST: SyncPT - CN88',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='syspolicy_purge_history',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA : Monitor Job Fail',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA : MonDB Get DB Info',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='bodb_CustomerLog: Checking Write Log failed',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_MonDB_Reorg',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBCUST - CUSTDB - SuspiciousAccountNotify',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='Archive Deposit Member - Get Affiliate Account',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_BCP_OUT_TO_MNL',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='dbcust - Winlimit Game - Task_block_member',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_Getlockinfo 5 Secs',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='LSBackup_IPDB',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_Full_Backup_Daily',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='CUSTDB: Daily auto adjust VR setting for Robot accounts',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_ClearSiteconfigData',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='bodb_Licensee: Check Missing BA Member',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='CustDB: Daily Auto Migrate Data ProblemAccount',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_Reorg_Index',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_Getwaitinfo 5 Secs',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='Clear login (On_user) for bodb_licensee',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='LSBackup_AUTHDB',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_Script_Instance_Object',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='Archive Deposit Member - Step 1: Collect Dormant Member',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='CustDB: Delete old CustDangerLevel info weekly',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='CustDB: TOControl ProcessData',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_UM_REINDEX',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_Restore_VerifyOnly',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='CustDB: Daily Auto Clean Up Headline Group Mapping',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBCUST: Scan Abnormal Member',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='NAP_UserControl: Clear Login (eaOn_User)',@enabled = 1