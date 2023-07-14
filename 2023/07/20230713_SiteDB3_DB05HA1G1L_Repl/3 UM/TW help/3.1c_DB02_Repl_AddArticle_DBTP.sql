/*
	Task: Add article to related publication
	Run on DBTP10C
*/

-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Sync_DR', @article = N'ProviderGameTypeMapping', @source_owner = N'dbo', @source_object = N'ProviderGameTypeMapping', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'ProviderGameTypeMapping', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProviderGameTypeMapping]', @del_cmd = N'CALL [sp_MSdel_dboProviderGameTypeMapping]', @upd_cmd = N'SCALL [sp_MSupd_dboProviderGameTypeMapping]'
GO