/*
	Task: Add back subscriptions to indicated publication
	Run @ DBTP
	** ATTENTION!! Must change xxx to sa subs password and Remote to DBDIST02C and connect DBTP to run script
*/


-- Adding the transactional subscriptions
use [bodb02]
exec sp_addsubscription @publication = N'DBTP_Customer_n_Setting', @subscriber = N'DBMNL', @destination_db = N'bodb02', @subscription_type = N'Pull', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
GO

-- Adding the transactional subscriptions
use [bodb02]
exec sp_addsubscription @publication = N'DBTP_DR_sync', @subscriber = N'DBMNL', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'DBTP_DR_sync', @subscriber = N'DBMNL', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO