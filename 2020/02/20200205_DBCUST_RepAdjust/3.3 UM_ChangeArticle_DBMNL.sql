/*
	Task: Change article from replication
	Using UI or run script below @ DBMNL
*/


-- Add article
use [bodb02]
exec sp_addarticle @publication = N'DBMNL_Odds_Info_C', @article = N'CurrencyModifier_History', @source_owner = N'dbo', @source_object = N'CurrencyModifier_History', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CurrencyModifier_History', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCurrencyModifier_History]', @del_cmd = N'CALL [sp_MSdel_dboCurrencyModifier_History]', @upd_cmd = N'SCALL [sp_MSupd_dboCurrencyModifier_History]'
GO