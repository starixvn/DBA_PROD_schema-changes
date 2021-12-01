/*
	Task: Add article
	Run script below @DBCUST
*/

-- Adding the transactional articles
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'LimitPTDailySetting', @source_owner = N'dbo', @source_object = N'LimitPTDailySetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LimitPTDailySetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLimitPTDailySetting]', @del_cmd = N'CALL [sp_MSdel_dboLimitPTDailySetting]', @upd_cmd = N'SCALL [sp_MSupd_dboLimitPTDailySetting]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CustLimitPTSetting', @source_owner = N'dbo', @source_object = N'CustLimitPTSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustLimitPTSetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustLimitPTSetting]', @del_cmd = N'CALL [sp_MSdel_dboCustLimitPTSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboCustLimitPTSetting]'
GO