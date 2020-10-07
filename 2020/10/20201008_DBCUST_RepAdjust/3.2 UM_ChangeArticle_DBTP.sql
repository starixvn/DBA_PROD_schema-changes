/*
	Task: Add article
	Run script below @DBTP
*/


-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'CustCommRate', @source_owner = N'dbo', @source_object = N'CustCommRate', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustCommRate', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustCommRate]', @del_cmd = N'CALL [sp_MSdel_dboCustCommRate]', @upd_cmd = N'SCALL [sp_MSupd_dboCustCommRate]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'AgentCommRate', @source_owner = N'dbo', @source_object = N'AgentCommRate', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'AgentCommRate', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAgentCommRate]', @del_cmd = N'CALL [sp_MSdel_dboAgentCommRate]', @upd_cmd = N'SCALL [sp_MSupd_dboAgentCommRate]'
GO

-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBTP_DR_sync', @article = N'Acc_SuperPrefix', @source_owner = N'dbo', @source_object = N'Acc_SuperPrefix', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Acc_SuperPrefix', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAcc_SuperPrefix]', @del_cmd = N'CALL [sp_MSdel_dboAcc_SuperPrefix]', @upd_cmd = N'SCALL [sp_MSupd_dboAcc_SuperPrefix]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_DR_sync', @article = N'ProductSettingSystemDisplay', @source_owner = N'dbo', @source_object = N'ProductSettingSystemDisplay', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'ProductSettingSystemDisplay', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProductSettingSystemDisplay]', @del_cmd = N'CALL [sp_MSdel_dboProductSettingSystemDisplay]', @upd_cmd = N'SCALL [sp_MSupd_dboProductSettingSystemDisplay]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_DR_sync', @article = N'EmailNotification', @source_owner = N'dbo', @source_object = N'EmailNotification', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'EmailNotification', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboEmailNotification]', @del_cmd = N'CALL [sp_MSdel_dboEmailNotification]', @upd_cmd = N'SCALL [sp_MSupd_dboEmailNotification]'
GO
