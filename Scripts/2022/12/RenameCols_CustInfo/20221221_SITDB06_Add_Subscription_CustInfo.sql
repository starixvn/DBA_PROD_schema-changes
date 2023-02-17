/*<info serverAlias="SITDB06-bodb02"></info>*/
/*
	Created: 20230103@Daniel
	Task: add back subscriptions
	DB: SITDB06-bodb02
*/


-- Adding the transactional subscriptions
use [bodb02]
exec sp_addsubscription @publication = N'DB06_Customer_Info_Casino', @subscriber = N'SITCASINOQA2', @destination_db = N'LiveCasinoAdmin', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'DB06_Customer_Info_Casino', @subscriber = N'SITCASINOQA2', @subscriber_db = N'LiveCasinoAdmin', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = null, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO