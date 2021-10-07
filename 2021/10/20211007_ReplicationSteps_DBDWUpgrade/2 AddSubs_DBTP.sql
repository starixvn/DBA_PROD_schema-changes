/*
	Task: Add subscriber/subscription DBDW to indicated publication
	** ATTENTION!! Must replace xxx, yyy for @subscriber_password with correct sa password of subscriber servers
	Run @ DBTP
*/

-- Installing the server as a Distributor.
use master
GO 
exec sp_addsubscriber @subscriber = N'DBDW', @type = 0, @description = N''
GO


-- Adding the transactional subscriptions
use [bodb02]
exec sp_addsubscription @publication = N'DBTP_Customer_Info', @subscriber = N'DBDW', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'DBTP_Customer_Info', @subscriber = N'DBDW', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [bodb02]
exec sp_addsubscription @publication = N'DBTP_Dot_n_Login', @subscriber = N'DBDW', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'DBTP_Dot_n_Login', @subscriber = N'DBDW', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [bodb02]
exec sp_addsubscription @publication = N'DBTP_ExecRepAcc', @subscriber = N'DBDW', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'DBTP_ExecRepAcc', @subscriber = N'DBDW', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [bodb02]
exec sp_addsubscription @publication = N'DBTP_ExecRepAcc_Cust', @subscriber = N'DBDW', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'DBTP_ExecRepAcc_Cust', @subscriber = N'DBDW', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [bodb02]
exec sp_addsubscription @publication = N'DBTP_Odds_3rd', @subscriber = N'DBDW', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'DBTP_Odds_3rd', @subscriber = N'DBDW', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [bodb02]
exec sp_addsubscription @publication = N'DBTP_Odds_Info', @subscriber = N'DBDW', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'DBTP_Odds_Info', @subscriber = N'DBDW', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [bodb02]
exec sp_addsubscription @publication = N'DBTP_Odds_Odds', @subscriber = N'DBDW', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'DBTP_Odds_Odds', @subscriber = N'DBDW', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO