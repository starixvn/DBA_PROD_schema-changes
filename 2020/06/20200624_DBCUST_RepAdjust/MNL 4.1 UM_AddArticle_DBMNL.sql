/*
	Task: Change article from replication
	Using UI or run script below @ DBMNL
*/

-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBMNL_Customer_Setting_C', @article = N'CustSettingAutoSuspend', @source_owner = N'dbo', @source_object = N'CustSettingAutoSuspend', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustSettingAutoSuspend', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustSettingAutoSuspend]', @del_cmd = N'CALL [sp_MSdel_dboCustSettingAutoSuspend]', @upd_cmd = N'SCALL [sp_MSupd_dboCustSettingAutoSuspend]'
GO