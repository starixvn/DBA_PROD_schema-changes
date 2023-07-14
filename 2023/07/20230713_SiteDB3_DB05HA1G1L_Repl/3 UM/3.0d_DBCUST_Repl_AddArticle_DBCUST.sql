/*
	Task: Add articles to publication
	Run on DBCUST
*/

-- Adding the transactional articles
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CustomerClassSpread', @source_owner = N'dbo', @source_object = N'CustomerClassSpread', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'CustomerClassSpread', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustomerClassSpread]', @del_cmd = N'CALL [sp_MSdel_dboCustomerClassSpread]', @upd_cmd = N'SCALL [sp_MSupd_dboCustomerClassSpread]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CustomerClassSpreadClass', @source_owner = N'dbo', @source_object = N'CustomerClassSpreadClass', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustomerClassSpreadClass', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustomerClassSpreadClass]', @del_cmd = N'CALL [sp_MSdel_dboCustomerClassSpreadClass]', @upd_cmd = N'SCALL [sp_MSupd_dboCustomerClassSpreadClass]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CustomerClassSpreadManagement', @source_owner = N'dbo', @source_object = N'CustomerClassSpreadManagement', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustomerClassSpreadManagement', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustomerClassSpreadManagement]', @del_cmd = N'CALL [sp_MSdel_dboCustomerClassSpreadManagement]', @upd_cmd = N'SCALL [sp_MSupd_dboCustomerClassSpreadManagement]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CustomerClassSetting', @source_owner = N'dbo', @source_object = N'CustomerClassSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustomerClassSetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustomerClassSetting]', @del_cmd = N'CALL [sp_MSdel_dboCustomerClassSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboCustomerClassSetting]'
GO


-- Adding the transactional articles
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'APIInfo', @source_owner = N'dbo', @source_object = N'APIInfo', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'APIInfo', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAPIInfo]', @del_cmd = N'CALL [sp_MSdel_dboAPIInfo]', @upd_cmd = N'SCALL [sp_MSupd_dboAPIInfo]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'Acc_CustType', @source_owner = N'dbo', @source_object = N'Acc_CustType', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Acc_CustType', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAcc_CustType]', @del_cmd = N'CALL [sp_MSdel_dboAcc_CustType]', @upd_cmd = N'SCALL [sp_MSupd_dboAcc_CustType]'
GO

