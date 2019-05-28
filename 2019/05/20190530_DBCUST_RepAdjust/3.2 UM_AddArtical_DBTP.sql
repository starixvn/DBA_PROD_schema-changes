/*
	Task: CS_CustomerStatus: add articals into replication
	Using UI or run script below @ DBTP
*/

use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_Info', @article = N'CS_CustomerStatus', @source_owner = N'dbo', @source_object = N'CS_CustomerStatus', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CS_CustomerStatus', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCS_CustomerStatus]', @del_cmd = N'CALL [sp_MSdel_dboCS_CustomerStatus]', @upd_cmd = N'SCALL [sp_MSupd_dboCS_CustomerStatus]'
GO

use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'CS_CustomerStatus', @source_owner = N'dbo', @source_object = N'CS_CustomerStatus', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CS_CustomerStatus', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCS_CustomerStatus]', @del_cmd = N'CALL [sp_MSdel_dboCS_CustomerStatus]', @upd_cmd = N'SCALL [sp_MSupd_dboCS_CustomerStatus]'
GO
