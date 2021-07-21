

--- run on DBTKO
go
use [bodb_Licensee]
exec sp_addpullsubscription @publisher = N'DBTP', @publication = N'CustDB_bodb_licensee_DR_Sync', @publisher_db = N'bodb_licensee', @independent_agent = N'True', @subscription_type = N'pull', @description = N'', @update_mode = N'read only', @immediate_sync = 0

exec sp_addpullsubscription_agent @publisher = N'DBTP', @publisher_db = N'bodb_licensee', @publication = N'CustDB_bodb_licensee_DR_Sync', @distributor = N'DBTP02C\INST2', @distributor_security_mode = 0, @distributor_login = N'sa', @distributor_password = N'', @enabled_for_syncmgr = N'False', @frequency_type = 64, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @alt_snapshot_folder = N'\\10.1.1.12\G$\MSSQL\ReplData', @working_directory = N'', @use_ftp = N'False', @job_login = null, @job_password = null, @publication_type = 0
GO
 
use [bodb_Licensee]
exec sp_addpullsubscription @publisher = N'DBTP', @publication = N'DBTP_bodb_licensee', @publisher_db = N'bodb_Licensee', @independent_agent = N'True', @subscription_type = N'pull', @description = N'', @update_mode = N'read only', @immediate_sync = 0

exec sp_addpullsubscription_agent @publisher = N'DBTP', @publisher_db = N'bodb_Licensee', @publication = N'DBTP_bodb_licensee', @distributor = N'DBTP02C\INST2', @distributor_security_mode = 0, @distributor_login = N'sa', @distributor_password = N'', @enabled_for_syncmgr = N'False', @frequency_type = 64, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @alt_snapshot_folder = N'', @working_directory = N'', @use_ftp = N'False', @job_login = null, @job_password = null, @publication_type = 0
GO
 