 

-- Adding the transactional articles
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'Aff_LicenseeUser', @source_owner = N'dbo', @source_object = N'Aff_LicenseeUser', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Aff_LicenseeUser', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAff_LicenseeUser]', @del_cmd = N'CALL [sp_MSdel_dboAff_LicenseeUser]', @upd_cmd = N'SCALL [sp_MSupd_dboAff_LicenseeUser]'
GO
 

-- Adding the transactional subscriptions
use [bodb_Licensee]
exec sp_addsubscription @publication = N'CustDB_bodb_licensee_DR_Sync', @subscriber = N'DBMNL', @destination_db = N'bodb_licensee', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_bodb_licensee_DR_Sync', @subscriber = N'DBMNL', @subscriber_db = N'bodb_licensee', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = null, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO 
/****** Begin: Script to be run at Publisher ******/
use [bodb_licensee]
-- Parameter @sync_type is scripted as 'automatic', please adjust when appropriate.
exec sp_addsubscription @publication = N'CustDB_bodb_licensee_DR_Sync', @subscriber = N'DBTKO', @destination_db = N'bodb_Licensee', @sync_type = N'replication support only', @subscription_type = N'pull', @update_mode = N'read only'
GO
use [bodb_licensee]
-- Parameter @sync_type is scripted as 'automatic', please adjust when appropriate.
exec sp_addsubscription @publication = N'CustDB_bodb_licensee_DR_Sync', @subscriber = N'DBBAL', @destination_db = N'bodb_licensee', @sync_type = N'replication support only', @subscription_type = N'pull', @update_mode = N'read only'
GO


-- Adding the transactional articles
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'DBTP_bodb_licensee', @article = N'LA_ChargeRateByCurrency', @source_owner = N'dbo', @source_object = N'LA_ChargeRateByCurrency', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LA_ChargeRateByCurrency', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_ChargeRateByCurrency]', @del_cmd = N'CALL [sp_MSdel_dboLA_ChargeRateByCurrency]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_ChargeRateByCurrency]'
GO
 

-- Adding the transactional subscriptions
use [bodb_Licensee]
exec sp_addsubscription @publication = N'DBTP_bodb_licensee', @subscriber = N'DBMNL', @destination_db = N'bodb_licensee', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'DBTP_bodb_licensee', @subscriber = N'DBMNL', @subscriber_db = N'bodb_licensee', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = null, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO


/****** Begin: Script to be run at Publisher ******/
use [bodb_Licensee]
-- Parameter @sync_type is scripted as 'automatic', please adjust when appropriate.
exec sp_addsubscription @publication = N'DBTP_bodb_licensee', @subscriber = N'DBTKO', @destination_db = N'bodb_Licensee', @sync_type = N'replication support only', @subscription_type = N'pull', @update_mode = N'read only'
GO
 
use [bodb_licensee]
-- Parameter @sync_type is scripted as 'automatic', please adjust when appropriate.
exec sp_addsubscription @publication = N'DBTP_bodb_licensee', @subscriber = N'DBBAL', @destination_db = N'bodb_licensee', @sync_type = N'replication support only', @subscription_type = N'pull', @update_mode = N'read only'
GO