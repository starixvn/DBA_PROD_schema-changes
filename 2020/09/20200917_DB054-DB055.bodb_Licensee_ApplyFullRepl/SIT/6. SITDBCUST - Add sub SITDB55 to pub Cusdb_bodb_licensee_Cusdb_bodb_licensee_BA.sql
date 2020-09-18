/*
	Task: add sub SITDB055 to pub bodb_Licensee, bodb_Licensee_BA for applying full replication to SITDB055
	Run on SIT Env - SITDBCUST
	
*/

-- Adding the transactional subscriptions
use [bodb_Licensee]
exec sp_addsubscription @publication = N'bodb_Licensee', @subscriber = N'SITDB055', @destination_db = N'bodb_Licensee', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'bodb_Licensee', @subscriber = N'SITDB055', @subscriber_db = N'bodb_Licensee', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO

-- Adding the transactional subscriptions
use [bodb_Licensee]
exec sp_addsubscription @publication = N'bodb_Licensee_BA', @subscriber = N'SITDB055', @destination_db = N'bodb_Licensee', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'bodb_Licensee_BA', @subscriber = N'SITDB055', @subscriber_db = N'bodb_Licensee', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO