/*
	Task: Add DBBAL's transactional subscriptions
	Run scripts under @DBTP
*/

-- 1.Adding the transactional subscriptions push DBTP_API_Data_AWS
use [bodb02]
exec sp_addsubscription @publication = N'DBTP_API_Data_AWS', @subscriber = N'DBBAL', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'DBTP_API_Data_AWS', @subscriber = N'DBBAL', @subscriber_db = N'bodb02', @job_login = null, @job_password = null,	@frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
	--, @subscriber_security_mode = 1
	, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = N'xxx'
GO
 

-- 2.Adding the transactional subscriptions push DBTP_Odds_Odds_AWS
use [bodb02]
exec sp_addsubscription @publication = N'DBTP_Odds_Odds_AWS', @subscriber = N'DBBAL', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'DBTP_Odds_Odds_AWS', @subscriber = N'DBBAL', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
	--, @subscriber_security_mode = 1
	, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = N'xxx'
GO

-- 3.Adding the transactional subscriptions pull DBTP_Bet_n_ExecRep_AWS
use [bodb02]
exec sp_addsubscription @publication = N'DBTP_Bet_n_ExecRep_AWS', @subscriber = N'DBBAL', @destination_db = N'bodb02', @subscription_type = N'Pull', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
GO

 