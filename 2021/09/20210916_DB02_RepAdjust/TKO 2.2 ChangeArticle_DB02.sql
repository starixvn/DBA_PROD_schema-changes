/*
	Task: Change article from replication
	Using UI or run script below @AWS DB02
*/


-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DB02_Trans_Odds_Info', @article = N'SettlementResultTableSetting', @source_owner = N'dbo', @source_object = N'SettlementResultTableSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'SettlementResultTableSetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSettlementResultTableSetting]', @del_cmd = N'CALL [sp_MSdel_dboSettlementResultTableSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboSettlementResultTableSetting]'
GO
