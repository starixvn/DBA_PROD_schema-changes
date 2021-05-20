/*
	Task: Add article
	Run script below @DBTP
*/

-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'ProblemAccountClassification', @source_owner = N'dbo', @source_object = N'ProblemAccountClassification', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'ProblemAccountClassification', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProblemAccountClassification]', @del_cmd = N'CALL [sp_MSdel_dboProblemAccountClassification]', @upd_cmd = N'SCALL [sp_MSupd_dboProblemAccountClassification]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'CategoryConfig', @source_owner = N'dbo', @source_object = N'CategoryConfig', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CategoryConfig', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCategoryConfig]', @del_cmd = N'CALL [sp_MSdel_dboCategoryConfig]', @upd_cmd = N'SCALL [sp_MSupd_dboCategoryConfig]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'CustMaxPayoutSetting_Member', @source_owner = N'dbo', @source_object = N'CustMaxPayoutSetting_Member', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustMaxPayoutSetting_Member', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustMaxPayoutSetting_Member]', @del_cmd = N'CALL [sp_MSdel_dboCustMaxPayoutSetting_Member]', @upd_cmd = N'SCALL [sp_MSupd_dboCustMaxPayoutSetting_Member]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'CustMaxPayoutSetting_Agent', @source_owner = N'dbo', @source_object = N'CustMaxPayoutSetting_Agent', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustMaxPayoutSetting_Agent', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustMaxPayoutSetting_Agent]', @del_cmd = N'CALL [sp_MSdel_dboCustMaxPayoutSetting_Agent]', @upd_cmd = N'SCALL [sp_MSupd_dboCustMaxPayoutSetting_Agent]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'MaxPayoutGlobalSetting', @source_owner = N'dbo', @source_object = N'MaxPayoutGlobalSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'MaxPayoutGlobalSetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboMaxPayoutGlobalSetting]', @del_cmd = N'CALL [sp_MSdel_dboMaxPayoutGlobalSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboMaxPayoutGlobalSetting]'
GO