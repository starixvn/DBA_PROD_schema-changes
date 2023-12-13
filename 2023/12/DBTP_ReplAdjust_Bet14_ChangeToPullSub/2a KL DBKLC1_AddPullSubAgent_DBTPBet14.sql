/*
	Task: Add pull agent at subscriber
	Created: Daniel@20231212
	Run on KL DBKLC1, need change xxx to correct sa's passw of dist

*/

-- cleanup phantom push sub if any
use [bodb02]
go
exec sp_subscription_cleanup @publisher = N'DBTP10C', @publisher_db = N'bodb02', @publication = N'DBTP_Bet14'
go

/****** Begin: Script to be run at Subscriber ******/
use [bodb02]
exec sp_addpullsubscription @publisher = N'DBTP10C', @publication = N'DBTP_Bet14', @publisher_db = N'bodb02', @independent_agent = N'True', @subscription_type = N'pull', @description = N'', @update_mode = N'read only', @immediate_sync = 0
go
exec sp_addpullsubscription_agent @publisher = N'DBTP10C', @publisher_db = N'bodb02', @publication = N'DBTP_Bet14', @distributor = N'DBTP03C\INST2', @distributor_security_mode = 0, @distributor_login = N'sa', @distributor_password = xxx, @enabled_for_syncmgr = N'False', @frequency_type = 64, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @alt_snapshot_folder = N'', @working_directory = N'', @use_ftp = N'False', @job_login = null, @job_password = null, @publication_type = 0
GO
