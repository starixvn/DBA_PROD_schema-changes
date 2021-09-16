 

-- 4.Adding the transactional subscriptions pull DBTP_CustInfo_AWS
use [bodb02]
exec sp_addpullsubscription @publisher = N'DBTP', @publication = N'DBTP_CustInfo_AWS', @publisher_db = N'bodb02', @independent_agent = N'True', @subscription_type = N'pull', @description = N'', @update_mode = N'read only', @immediate_sync = 0

EXEC sp_addpullsubscription_agent @publisher = N'DBTP' ,@publisher_db = N'bodb02' ,@publication = N'DBTP_CustInfo_AWS' ,@distributor = N'DBTP02C\INST2', @distributor_security_mode = 0 ,@distributor_login = N'sa' ,@distributor_password = N'xxxx' ,@enabled_for_syncmgr = N'False' ,@frequency_type = 64 ,@frequency_interval = 0 ,@frequency_relative_interval = 0 ,@frequency_recurrence_factor = 0 ,@frequency_subday = 0 ,@frequency_subday_interval = 0 ,@active_start_time_of_day = 0 ,@active_end_time_of_day = 235959 ,@active_start_date = 0 ,@active_end_date = 0 ,@alt_snapshot_folder = N'\\10.1.1.12\G$\MSSQL\ReplData' ,@working_directory = N'' ,@use_ftp = N'False' ,@job_login = NULL ,@job_password = NULL ,@publication_type = 0 
GO



-- 5.Adding the transactional subscriptions pull DBTP_Bet14_AWS
use [bodb02]
exec sp_addpullsubscription @publisher = N'DBTP', @publication = N'DBTP_Bet14_AWS', @publisher_db = N'bodb02', @independent_agent = N'True', @subscription_type = N'pull', @description = N'', @update_mode = N'read only', @immediate_sync = 0

EXEC sp_addpullsubscription_agent @publisher = N'DBTP',@publisher_db = N'bodb02',@publication = N'DBTP_Bet14_AWS',@distributor = N'DBTP02C\INST2', @distributor_security_mode = 0, @distributor_login = N'sa', @distributor_password = N'xxx', @enabled_for_syncmgr = N'False',@frequency_type = 64, @frequency_interval = 0,   @frequency_relative_interval = 0,  @frequency_recurrence_factor = 0,@frequency_subday = 0,@frequency_subday_interval = 0,@active_start_time_of_day = 0,@active_end_time_of_day = 235959,@active_start_date = 0,@active_end_date = 0,@alt_snapshot_folder = N'\\10.1.1.12\G$\MSSQL\ReplData',@working_directory = N'',@use_ftp = N'False',@job_login = NULL,@job_password = NULL,@publication_type = 0
GO

