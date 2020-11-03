/*
	Task: Add article
	Run script below @DBMNL
*/


-- Adding the transactional articles
Use [bodb02]
exec sp_addarticle @publication = N'DBMNL_Customer_Setting_C', @article = N'CustPTSetting3rd_Agent', @source_owner = N'dbo', @source_object = N'CustPTSetting3rd_Agent', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustPTSetting3rd_Agent', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustPTSetting3rd_Agent]', @del_cmd = N'CALL [sp_MSdel_dboCustPTSetting3rd_Agent]', @upd_cmd = N'SCALL [sp_MSupd_dboCustPTSetting3rd_Agent]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBMNL_Customer_Setting_C', @article = N'CustPTSetting3rd_Member', @source_owner = N'dbo', @source_object = N'CustPTSetting3rd_Member', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustPTSetting3rd_Member', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustPTSetting3rd_Member]', @del_cmd = N'CALL [sp_MSdel_dboCustPTSetting3rd_Member]', @upd_cmd = N'SCALL [sp_MSupd_dboCustPTSetting3rd_Member]'
GO
