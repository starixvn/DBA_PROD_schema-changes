-- Drop existing jobs on DBGRP03N1/2 for updating new updated ones from DBTRANS
--Run DBGRP03N1/N2


select 'EXEC msdb.dbo.sp_delete_job @job_name=N''' + name + ''', @delete_unused_schedule=1;'
from msdb.dbo.sysjobs where name not like 'DBA_%' and name <> 'syspolicy_purge_history'

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
use msdb
go
EXEC msdb.dbo.sp_delete_job @job_name=N'Archive Credit Accounts - Stage 3: Clear Balance', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb_CustomerLog - Daily Delete the History Log Data', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb_CustomerLog: Checking Write Log failed', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 - auto void uus waiting ticket', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 - check GD History tickets on bettransG', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 - clean accpet and reject log', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 - daily check TempVariableNumber time out', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 - Daily Retrieve Exchange Rate History', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 - Lucky3rd - Freebets', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : clean MatchForecast', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : Game : ResetYesterday', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : Game : Task_BalanceUpd', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : IntgUserLog Monitor', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : LuckyDraw Candidate', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : NAP Parlay Settlement', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : NAP Settlement VS BetRadar', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : NAP Single Settlement', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : NAP Single Settlement 3rd', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : NetPosition tables Archive', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : Task FollowBet', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : Task Max Payout Per Match', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : Task Retry Max Payout', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : Task_BackupUserLog', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : Task_BalanceCheck', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : Task_BalanceCheck 2', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : Task_BalanceCheck 3', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : Task_BalanceCheck 4', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : Task_BalanceCheck 4 - Manually', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : Task_BalanceUpdCredit', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : Task_BalanceUpdCreditCasino', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : Task_BalanceUpdCreditOthers', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : Task_BalanceUpdCreditSports', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : Task_BalanceUpdDebitCasino', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : Task_BalanceUpdDebitOthers', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : Task_BalanceUpdDebitSports', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02 : TicketVoiding - VoidBets Automation - Disabled', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02: DailyBetStake_Cleanup', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02: DBA_Recover_7days_routineTasks', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02: NAP NG2 Delete bettrans_staging', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02: NAP NG2 Settlement', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02: NAP Task delete settled match in queue', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02: Task Clear balance all downlines', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02: Task_CleanUp_OrphanTransaction', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'bodb02: Ticket Voiding - Disabled', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'Check Casino data', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'CustDB : Task_Insert CN88 super to CS_CustSuper', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'DBTRANS : Balance Up (Background)', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'DBTRANS : Balance Up (Cal_Balance)', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'DBTRANS : check identity value', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'DBTRANS : CPU Check (for auto statistic update)', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'DBTRANS : DailySummary (Move Bet)', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'DBTRANS : recompile all', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'Intg_transDB : clear up Expired data', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'Joe : DBTRANS_bodb02 : Friday routine', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'Joe : DBTRANS_bodb02 : Thursday routine', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'MoveBet - Task Daily RptLicWinloss', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'vnDBA : Objects Monitoring - Collect Data', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'vnDBA : Wait Statistics Monitoring', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'vndba: Perfmonitor_CollectCounters', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'vndba:Check slowly BalanceUpdCreditSports process', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'vndba:Check slowly running or failed processes', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'vndba_monitor_whoisactive', @delete_unused_schedule=1;
EXEC msdb.dbo.sp_delete_job @job_name=N'vnDBA-update exchange rate on tickets', @delete_unused_schedule=1;