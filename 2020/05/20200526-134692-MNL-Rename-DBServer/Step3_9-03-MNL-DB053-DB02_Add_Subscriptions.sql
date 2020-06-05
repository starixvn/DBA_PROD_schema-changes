/*
	Creator:	20200605@vnLukas
	Task:		Replace DB053 to DB055 role - [Redmine: #134692]
	Server:		MNL - DB02 
*/
use master

GO
exec sp_addsubscriber @subscriber = N'DB055', @type = 0, @description = N''
GO
  
-- Adding the transactional subscriptions
GO
use [bodb02]
exec sp_addsubscription @publication = N'DB02_event14', @subscriber = N'DB055', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'DB02_event14', @subscriber = N'DB055', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO 
  

-- Adding the transactional subscriptions
GO
use [bodb02]
exec sp_addsubscription @publication = N'DB02_Odds_3rd', @subscriber = N'DB055', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'DB02_Odds_3rd', @subscriber = N'DB055', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
 
  
-- Adding the transactional subscriptions
GO
use [bodb02]
exec sp_addsubscription @publication = N'DB02_Odds_Info', @subscriber = N'DB055', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'DB02_Odds_Info', @subscriber = N'DB055', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
  
-- Adding the transactional subscriptions
GO
use [bodb02]
exec sp_addsubscription @publication = N'DB02_Odds_Odds', @subscriber = N'DB055', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'DB02_Odds_Odds', @subscriber = N'DB055', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
       