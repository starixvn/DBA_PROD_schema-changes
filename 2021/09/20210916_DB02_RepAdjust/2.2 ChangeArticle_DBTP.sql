/*
	Task: Add article
	Run script below @DBTP
*/

-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Sync_DR', @article = N'AutoPayoutResultOS', @source_owner = N'dbo', @source_object = N'AutoPayoutResultOS', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'AutoPayoutResultOS', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAutoPayoutResultOS]', @del_cmd = N'CALL [sp_MSdel_dboAutoPayoutResultOS]', @upd_cmd = N'SCALL [sp_MSupd_dboAutoPayoutResultOS]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Sync_DR', @article = N'SettlementResultTableSetting', @source_owner = N'dbo', @source_object = N'SettlementResultTableSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'SettlementResultTableSetting', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSettlementResultTableSetting]', @del_cmd = N'CALL [sp_MSdel_dboSettlementResultTableSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboSettlementResultTableSetting]'
GO