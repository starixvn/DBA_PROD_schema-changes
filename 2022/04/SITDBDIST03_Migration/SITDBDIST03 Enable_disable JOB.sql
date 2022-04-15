/*
	Task: Disable / enable Jobs
	Run on SITDBDIST03/SITDBDIST03N
*/

-- Gen script to disable all jobs then copy & run commands
use msdb
go
select 'EXEC msdb.dbo.sp_update_job @job_name=''' + name + ''',@enabled = 0' from sysjobs
--EXEC msdb.dbo.sp_update_job @job_name='Agent history clean up: dist_dbcust',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA : MonDB Get DB Info',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA : Monitor Job Fail',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA : Monitor Replication Latency',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA : Monitor Replication Latency NightScan',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA : Repl_Monitor [dist_dbcust]',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA : RepMonitor monthly purge',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA : Send SQL Service Restart Alert Mail',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA:DBA_GrantDBPermissionDaily',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA_Deadlock_Monitor',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA_Diff_Backup',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA_Full_Backup',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA_Repl_Check_Dist_Agent',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA_Replication_Err_Monitor',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA_Script_Instance_Object',@enabled = 0
EXEC msdb.dbo.sp_update_job @job_name='DBA_Txn_Backup',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='Distribution clean up: dist_dbcust',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='Expired subscription clean up',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='Reinitialize subscriptions having data validation failures',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='Replication agents checkup',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='Replication monitoring refresher for dist_dbcust.',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-bodb_Licensee-4',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-bodb_Licensee-CustDB_bodb_Licensee_BA-25',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-bodb_Licensee-CustDB_bodb_Licensee_-SITDB052-404',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-bodb_Licensee-CustDB_bodb_Licensee_-SITDB055-410',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-bodb_Licensee-CustDB_bodb_Licensee_-SITDB06-417',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-bodb_Licensee-Custdb_bodb_licensee-23',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-bodb_Licensee-Custdb_bodb_licensee-SITDB052-403',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-bodb_Licensee-Custdb_bodb_licensee-SITDB055-409',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-bodb_Licensee-Custdb_bodb_licensee-SITDB06-416',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-CustDB-2',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-CustDB-CustDB_CustInfo-9',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-CustDB-CustDB_CustInfo-SITDB02-240',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-CustDB-CustDB_Customer_Info-SITDB042-390',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-CustDB-CustDB_Customer_Info-SITDB044-393',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-CustDB-CustDB_Customer_Info-SITDB052-405',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-CustDB-CustDB_Customer_Info-SITDB05-399',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-CustDB-CustDB_Customer_Info-SITDB055-411',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-CustDB-CustDB_Customer_Info-SITDB05BK1-396',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-CustDB-CustDB_Customer_Info-SITDB06-418',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-CustDB-CustDB_CustSetting-SITDB06-427',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-CustDB-CustDB_DBTrans_CustInfo-12',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-CustDB-CustDB_DBTrans_CustIn-SITDBTRANS-425',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-CustDB-CustDB_DBTrans_Exchange-13',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-CustDB-CustDB_DBTrans_Exchan-SITDBTRANS-426',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-CustDB-CustDB_DR_sync-18',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-CustDB-CustDB_DR_sync-SITDB06-420',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-CustDB-CustDB_ExchangeDaily-SITDB052-406',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-CustDB-CustDB_ExchangeDaily-SITDB055-412',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-CustDB-CustDB_ExchangeDaily-SITDB06-421',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-CustDB-CustDB_ExecRepAcc_Cus-SITDB042-391',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-CustDB-CustDB_ExecRepAcc_Cus-SITDB044-394',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-CustDB-CustDB_ExecRepAcc_Cus-SITDB052-407',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-CustDB-CustDB_ExecRepAcc_Cus-SITDB05-400',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-CustDB-CustDB_ExecRepAcc_Cus-SITDB055-413',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-CustDB-CustDB_ExecRepAcc_Cus-SITDB05BK1-397',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-CustDB-CustDB_ExecRepAcc_Cus-SITDB06-422',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-CustDB-CustDB_Login_Exchange-SITDB02-326',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-CustDB-CustDB_Login_Exchange-SITDB042-392',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-CustDB-CustDB_Login_Exchange-SITDB044-395',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-CustDB-CustDB_Login_Exchange-SITDB052-408',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-CustDB-CustDB_Login_Exchange-SITDB05-401',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-CustDB-CustDB_Login_Exchange-SITDB055-414',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-CustDB-CustDB_Login_Exchange-SITDB05BK1-398',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-CustDB-CustDB_Login_Exchange-SITDB06-423',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='SITDBCUST-CustDB-CustDB_Login_Exchange-SITDBODDS163-415',@enabled = 0
--EXEC msdb.dbo.sp_update_job @job_name='syspolicy_purge_history',@enabled = 0

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
select 'EXEC msdb.dbo.sp_update_job @job_name=''' + name + ''',@enabled = 1' from sysjobs where enabled = 1 order by name
--Run on new servers to enable the jobs (for jobs that previously disabled during setup):
EXEC msdb.dbo.sp_update_job @job_name='DBA : MonDB Get DB Info',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA : Monitor Job Fail',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA : Repl_Monitor [dist_dbcust]',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA : RepMonitor monthly purge',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA : Send SQL Service Restart Alert Mail',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA:DBA_GrantDBPermissionDaily',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_Deadlock_Monitor',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_Full_Backup',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_Repl_Check_Dist_Agent',@enabled = 1
--EXEC msdb.dbo.sp_update_job @job_name='DBA_Replication_Err_Monitor',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_Script_Instance_Object',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_Txn_Backup',@enabled = 1
EXEC msdb.dbo.sp_update_job @job_name='DBA_Replication_Err_Monitor',@enabled = 1