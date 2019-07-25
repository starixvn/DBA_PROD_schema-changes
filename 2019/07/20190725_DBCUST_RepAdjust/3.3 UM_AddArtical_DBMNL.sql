/*
	Task: CS_SubAccManagement: add articals into replication
	Using UI or run script below @ DBMNL
*/


use [bodb02]
exec sp_addarticle @publication = N'DBMNL_Customer_Info_C', @article = N'CS_SubAccManagement', @source_owner = N'dbo', @source_object = N'CS_SubAccManagement', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CS_SubAccManagement', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCS_SubAccManagement]', @del_cmd = N'CALL [sp_MSdel_dboCS_SubAccManagement]', @upd_cmd = N'SCALL [sp_MSupd_dboCS_SubAccManagement]'
GO