/*
	Task: Add back subscribers to publication
	Run on CASINOADMINCS, replace xxx with correct sa's password on subs
*/

-- Adding the transactional subscriptions
use [LiveCasinoAdmin]
exec sp_addsubscription @publication = N'A2Archive_Table', @subscriber = N'DBCASINOARV', @destination_db = N'LiveCasinoArchive', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'A2Archive_Table', @subscriber = N'DBCASINOARV', @subscriber_db = N'LiveCasinoArchive', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO

-- Adding the transactional subscriptions
use [LiveCasinoAdmin]
exec sp_addsubscription @publication = N'A2C_CustInfo', @subscriber = N'CASINOMAIN\MAIN', @destination_db = N'LiveCasino', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'A2C_CustInfo', @subscriber = N'CASINOMAIN\MAIN', @subscriber_db = N'LiveCasino', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO

-- Adding the transactional subscriptions
use [LiveCasinoAdmin]
exec sp_addsubscription @publication = N'A2Q_Custinfo', @subscriber = N'CASINOQAVMN2', @destination_db = N'LiveCasinoAdmin', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'A2Q_Custinfo', @subscriber = N'CASINOQAVMN2', @subscriber_db = N'LiveCasinoAdmin', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
