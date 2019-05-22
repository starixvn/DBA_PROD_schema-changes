/*
	Tasks: Alter job CustDB: Daily auto clear credit inactive accounts, add steps 4,5 to process members
	Run at DBCUST
*/


USE [msdb]
GO
/****** Object:  Step [Send messages for SMAs upline]    Script Date: 5/21/2019 9:54:56 PM ******/
EXEC msdb.dbo.sp_delete_jobstep @job_id=N'2acdc64b-aa08-42b5-8967-415b47157495', @step_id=3
GO
USE [msdb]
GO
/****** Object:  Step [Clear credit SMAs]    Script Date: 5/21/2019 9:54:56 PM ******/
EXEC msdb.dbo.sp_delete_jobstep @job_id=N'2acdc64b-aa08-42b5-8967-415b47157495', @step_id=2
GO
USE [msdb]
GO
/****** Object:  Step [Clear Temp Data]    Script Date: 5/21/2019 9:54:56 PM ******/
EXEC msdb.dbo.sp_delete_jobstep @job_id=N'2acdc64b-aa08-42b5-8967-415b47157495', @step_id=1
GO
USE [msdb]
GO
EXEC msdb.dbo.sp_add_jobstep @job_id=N'2acdc64b-aa08-42b5-8967-415b47157495', @step_name=N'Clear Temp Data', 
		@step_id=1, 
		@cmdexec_success_code=0, 
		@on_success_action=3, 
		@on_fail_action=2, 
		@retry_attempts=0, 
		@retry_interval=0, 
		@os_run_priority=0, @subsystem=N'TSQL', 
		@command=N'EXEC dbo.Task_ClearCredit_ClearData', 
		@database_name=N'CustDB', 
		@flags=0
GO
USE [msdb]
GO
EXEC msdb.dbo.sp_add_jobstep @job_id=N'2acdc64b-aa08-42b5-8967-415b47157495', @step_name=N'Clear credit SMAs', 
		@step_id=2, 
		@cmdexec_success_code=0, 
		@on_success_action=3, 
		@on_fail_action=2, 
		@retry_attempts=0, 
		@retry_interval=0, 
		@os_run_priority=0, @subsystem=N'TSQL', 
		@command=N'EXEC DBACC.bodb02.dbo.DBA_ArchiveAccount_UpdateAcception
GO
EXEC dbo.Task_ClearCredit_CustomerClearCredit', 
		@database_name=N'CustDB', 
		@flags=0
GO
USE [msdb]
GO
EXEC msdb.dbo.sp_add_jobstep @job_id=N'2acdc64b-aa08-42b5-8967-415b47157495', @step_name=N'Send messages for SMAs upline', 
		@step_id=3, 
		@cmdexec_success_code=0, 
		@on_success_action=3, 
		@on_fail_action=2, 
		@retry_attempts=0, 
		@retry_interval=0, 
		@os_run_priority=0, @subsystem=N'TSQL', 
		@command=N'EXEC dbo.Task_ClearCredit_SendPersonalMsg', 
		@database_name=N'CustDB', 
		@flags=0
GO
USE [msdb]
GO
EXEC msdb.dbo.sp_add_jobstep @job_id=N'2acdc64b-aa08-42b5-8967-415b47157495', @step_name=N'Clear credit Members', 
		@step_id=4, 
		@cmdexec_success_code=0, 
		@on_success_action=3, 
		@on_fail_action=2, 
		@retry_attempts=0, 
		@retry_interval=0, 
		@os_run_priority=0, @subsystem=N'TSQL', 
		@command=N'exec dbo.Task_ClearCredit_CustomerClearCredit_Member', 
		@database_name=N'CustDB', 
		@flags=0
GO
USE [msdb]
GO
EXEC msdb.dbo.sp_add_jobstep @job_id=N'2acdc64b-aa08-42b5-8967-415b47157495', @step_name=N'Send messages for Members upline', 
		@step_id=5, 
		@cmdexec_success_code=0, 
		@on_success_action=1, 
		@on_fail_action=2, 
		@retry_attempts=0, 
		@retry_interval=0, 
		@os_run_priority=0, @subsystem=N'TSQL', 
		@command=N'exec dbo.Task_ClearCredit_SendPersonalMsg_Member', 
		@database_name=N'CustDB', 
		@flags=0
GO
