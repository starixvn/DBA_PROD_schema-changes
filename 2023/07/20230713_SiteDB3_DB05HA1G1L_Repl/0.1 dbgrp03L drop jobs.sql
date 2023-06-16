-- Drop existing jobs on DBGRP03N1/2 for updating new updated ones from DBTRANS


select 'EXEC msdb.dbo.sp_delete_job @job_name=N''' + name + ''', @delete_unused_schedule=1
GO' from msdb.dbo.sysjobs where name not like 'DBA_%' and name <> 'syspolicy_purge_history'

use msdb
go
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : Game : Task_BalanceUpd', @delete_unused_schedule=1
GO
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : IntgUserLog Monitor', @delete_unused_schedule=1
GO
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : NAP Parlay Settlement', @delete_unused_schedule=1
GO
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : NAP Settlement VS BetRadar', @delete_unused_schedule=1
GO
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : NAP Single Settlement', @delete_unused_schedule=1
GO
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : NAP Single Settlement 3rd', @delete_unused_schedule=1
GO
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : Task Max Payout Per Match', @delete_unused_schedule=1
GO
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : Task Retry Max Payout', @delete_unused_schedule=1
GO
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : Task_BalanceCheck 4', @delete_unused_schedule=1
GO
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : Task_BalanceCheck 4 - Manually', @delete_unused_schedule=1
GO
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : Task_BalanceUpdCreditCasino', @delete_unused_schedule=1
GO
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : Task_BalanceUpdCreditOthers', @delete_unused_schedule=1
GO
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : Task_BalanceUpdCreditSports', @delete_unused_schedule=1
GO
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : Task_BalanceUpdDebitCasino', @delete_unused_schedule=1
GO
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : Task_BalanceUpdDebitOthers', @delete_unused_schedule=1
GO
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : Task_BalanceUpdDebitSports', @delete_unused_schedule=1
GO
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02: DBA_Recover_7days_routineTasks', @delete_unused_schedule=1
GO
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02: Licensee Winloss AG GD VG', @delete_unused_schedule=1
GO
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02: NAP Task delete settled match in queue', @delete_unused_schedule=1
GO
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02: Task_BalanceNegative', @delete_unused_schedule=1
GO
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02: Task_CleanUp_OrphanTransaction', @delete_unused_schedule=1
GO
EXEC msdb.dbo.sp_delete_job @job_name=N'DBTRANS : Balance Up (Background)', @delete_unused_schedule=1
GO
EXEC msdb.dbo.sp_delete_job @job_name=N'DBTRANS : Balance Up (Cal_Balance)', @delete_unused_schedule=1
GO
EXEC msdb.dbo.sp_delete_job @job_name=N'DBTRANS : DailySummary (Move Bet)', @delete_unused_schedule=1
GO
EXEC msdb.dbo.sp_delete_job @job_name=N'DBTRANS : recompile all', @delete_unused_schedule=1
GO
EXEC msdb.dbo.sp_delete_job @job_name=N'Intg_transDB : clear up Expired data', @delete_unused_schedule=1
GO
EXEC msdb.dbo.sp_delete_job @job_name=N'Joe : DBTRANS_bodb02 : Friday routine', @delete_unused_schedule=1
GO
EXEC msdb.dbo.sp_delete_job @job_name=N'SiteDB bodb02: Remove data BA Transaction after MoveBets day', @delete_unused_schedule=1
GO
EXEC msdb.dbo.sp_delete_job @job_name=N'SiteDB bodb02: Retrieve BA Transaction', @delete_unused_schedule=1
GO
EXEC msdb.dbo.sp_delete_job @job_name=N'SiteDB bodb02: Verify BA Tickets', @delete_unused_schedule=1
GO
EXEC msdb.dbo.sp_delete_job @job_name=N'vndba:Check slowly BalanceUpdCreditSports process', @delete_unused_schedule=1
GO
EXEC msdb.dbo.sp_delete_job @job_name=N'vndba:Check slowly running or failed processes', @delete_unused_schedule=1
GO
EXEC msdb.dbo.sp_delete_job @job_name=N'vndba_monitor_whoisactive', @delete_unused_schedule=1
GO