/*
	Task: Add article to publication
	Run on DBTP
*/

-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBTP_DR_sync', @article = N'APIInfo', @source_owner = N'dbo', @source_object = N'APIInfo', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'APIInfo', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAPIInfo]', @del_cmd = N'CALL [sp_MSdel_dboAPIInfo]', @upd_cmd = N'SCALL [sp_MSupd_dboAPIInfo]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_DR_sync', @article = N'Acc_CustType', @source_owner = N'dbo', @source_object = N'Acc_CustType', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Acc_CustType', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAcc_CustType]', @del_cmd = N'CALL [sp_MSdel_dboAcc_CustType]', @upd_cmd = N'SCALL [sp_MSupd_dboAcc_CustType]'
GO
