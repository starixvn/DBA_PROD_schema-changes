/*
	Task: Add article
	Run script below @DBTP
*/

-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'CustBetSetting_Agent', @source_owner = N'dbo', @source_object = N'CustBetSetting_Agent', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustBetSetting_Agent', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustBetSetting_Agent]', @del_cmd = N'CALL [sp_MSdel_dboCustBetSetting_Agent]', @upd_cmd = N'SCALL [sp_MSupd_dboCustBetSetting_Agent]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'CustBetSetting_Member', @source_owner = N'dbo', @source_object = N'CustBetSetting_Member', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustBetSetting_Member', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustBetSetting_Member]', @del_cmd = N'CALL [sp_MSdel_dboCustBetSetting_Member]', @upd_cmd = N'SCALL [sp_MSupd_dboCustBetSetting_Member]'
GO

------------
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'Acc_DynamicCustSetting3rd_10', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustSetting3rd_10', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustSetting3rd_10', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'Acc_DynamicCustSetting3rd_11', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustSetting3rd_11', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustSetting3rd_11', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'Acc_DynamicCustSetting3rd_12', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustSetting3rd_12', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustSetting3rd_12', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'Acc_DynamicCustSetting3rd_13', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustSetting3rd_13', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustSetting3rd_13', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'Acc_DynamicCustSetting3rd_14', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustSetting3rd_14', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustSetting3rd_14', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'Acc_DynamicCustSetting3rd_15', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustSetting3rd_15', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustSetting3rd_15', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'Acc_DynamicCustSetting3rd_16', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustSetting3rd_16', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustSetting3rd_16', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'Acc_DynamicCustSetting3rd_17', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustSetting3rd_17', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustSetting3rd_17', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'Acc_DynamicCustSetting3rd_18', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustSetting3rd_18', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustSetting3rd_18', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'Acc_DynamicCustSetting3rd_19', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustSetting3rd_19', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustSetting3rd_19', @destination_owner = N'dbo', @status = 0
GO