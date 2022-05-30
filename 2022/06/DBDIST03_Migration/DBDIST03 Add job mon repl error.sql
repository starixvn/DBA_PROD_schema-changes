/*
	Task: Add SP & job monitor replication error after setup replication
	Run on DBDIST03N
*/

USE [distribution]
GO
CREATE PROCEDURE [dbo].[DBA_Replication_Err_Monitor]
	@Min int=5
AS
/*
	20150529 @JoyChen(DistX):Create
*/
BEGIN

		
	declare @Datetime datetime,
			@TableHTML VARCHAR(max) = ''
	set @Datetime= convert(varchar(16),DATEADD(MI,-@Min,GETDATE()),120)	+':00'

	SELECT  id,
			msre.time,
			msre.error_text
	into #tmp 	        
	FROM dbo.MSrepl_errors msre with(nolock,index(IX_error_time) )
	where msre.time >=@Datetime
	  --and error_text not like'The row was not found at the Subscriber when applying the replicated command.%'
	  and error_text not like'The row was not found%'
	  and error_text not like'Transaction (Process ID%'
	  and error_text not like'Cannot insert duplicate key row%'
	  and error_text not like'Violation of%'
  	  and error_text not like'A DDL change has been replicated%'
    option (MAXDOP 1)
    
    SELECT  ma.[publisher],
		    ma.publication, 
			ma.publisher_db,
			replace(replace(substring(ma.[agent_name],CHARINDEX( left(ma.publication,21)+'-',ma.[agent_name]),LEN(ma.[agent_name])),left(ma.publication,21)+'-',''),('-'+cast (ma.agent_id as varchar)),'') as sub,
			msre.time as [time], 
			msre.error_text		
	 into #tmp_mail					
	 FROM #tmp msre
	 INNER JOIN dbo.MSdistribution_history msh ON (msre.id = msh.error_id)
	 INNER JOIN  [dbo].[MSreplication_monitordata] ma ON(ma.agent_id = msh.agent_id) and  ma.agent_type<>1

    
	if (select COUNT(1) FROM #tmp_mail )>=1
	begin 
		
	       SET @TableHTML =
					N'<H4>Event Log Replication Error  </H4>' +
					N'<table border="1">' +
					N'<tr><th>Publisher</th>' +
					N'<th>Publication</th>' +
					N'<th>Publisher_DB</th>' +
					N'<th>Subscriber</th>' +
					N'<th>Time</th>' +
					N'<th>ErrorMsg</th>' +					
						CAST ( ( SELECT td = publisher, '',
										td = publication, '',
										td = publisher_db, '',
										td = sub, '',
										td = [time], '',
										td = error_text					
								 FROM #tmp_mail
								 ORDER BY [time] DESC
								 FOR XML PATH('tr'), TYPE 
						) AS NVARCHAR(MAX) ) +
					N'</table>' ;	
	 				
	    EXEC msdb..sp_send_dbmail
			@recipients = 'dbaadmin@onelab.tw',
			--@recipients = 'Joy.chen@onelab.tw',
			@copy_recipients ='',
			@query = 'SELECT getdate()',
			@body = @TableHTML,
			@body_format = 'HTML',
			@subject = 'Replication Error, Please Check!!'	

	End

	
		
	drop table #tmp
		

END


GO



/****** Object:  Job [DBA_Replication_Err_Monitor]    Script Date: 5/29/2022 11:33:54 PM ******/
BEGIN TRANSACTION
DECLARE @ReturnCode INT
SELECT @ReturnCode = 0
/****** Object:  JobCategory [[Uncategorized (Local)]]    Script Date: 5/29/2022 11:33:54 PM ******/
IF NOT EXISTS (SELECT name FROM msdb.dbo.syscategories WHERE name=N'[Uncategorized (Local)]' AND category_class=1)
BEGIN
EXEC @ReturnCode = msdb.dbo.sp_add_category @class=N'JOB', @type=N'LOCAL', @name=N'[Uncategorized (Local)]'
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback

END

DECLARE @jobId BINARY(16)
EXEC @ReturnCode =  msdb.dbo.sp_add_job @job_name=N'DBA_Replication_Err_Monitor', 
		@enabled=0, 
		@notify_level_eventlog=0, 
		@notify_level_email=0, 
		@notify_level_netsend=0, 
		@notify_level_page=0, 
		@delete_level=0, 
		@description=N'No description available.', 
		@category_name=N'[Uncategorized (Local)]', 
		@owner_login_name=N'sa', @job_id = @jobId OUTPUT
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback
/****** Object:  Step [DBA_Replication_Err_Monitor]    Script Date: 5/29/2022 11:33:54 PM ******/
EXEC @ReturnCode = msdb.dbo.sp_add_jobstep @job_id=@jobId, @step_name=N'DBA_Replication_Err_Monitor', 
		@step_id=1, 
		@cmdexec_success_code=0, 
		@on_success_action=1, 
		@on_success_step_id=0, 
		@on_fail_action=2, 
		@on_fail_step_id=0, 
		@retry_attempts=0, 
		@retry_interval=0, 
		@os_run_priority=0, @subsystem=N'TSQL', 
		@command=N'exec dbo.DBA_Replication_Err_Monitor', 
		@database_name=N'distribution', 
		@flags=0
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback
EXEC @ReturnCode = msdb.dbo.sp_update_job @job_id = @jobId, @start_step_id = 1
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback
EXEC @ReturnCode = msdb.dbo.sp_add_jobschedule @job_id=@jobId, @name=N'DBA_Replication_Err_Monitor', 
		@enabled=1, 
		@freq_type=4, 
		@freq_interval=1, 
		@freq_subday_type=4, 
		@freq_subday_interval=5, 
		@freq_relative_interval=0, 
		@freq_recurrence_factor=0, 
		@active_start_date=20150601, 
		@active_end_date=99991231, 
		@active_start_time=0, 
		@active_end_time=235959, 
		@schedule_uid=N'77cec321-1e80-4143-b070-c26233d787e2'
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback
EXEC @ReturnCode = msdb.dbo.sp_add_jobserver @job_id = @jobId, @server_name = N'(local)'
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback
COMMIT TRANSACTION
GOTO EndSave
QuitWithRollback:
    IF (@@TRANCOUNT > 0) ROLLBACK TRANSACTION
EndSave:
GO