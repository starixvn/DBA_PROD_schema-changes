/*
	Task: Add article
	Run script below @DBCUST
*/

-- Adding the transactional articles
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_VendorPaymentSetting', @source_owner = N'dbo', @source_object = N'LA_VendorPaymentSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LA_VendorPaymentSetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_VendorPaymentSetting]', @del_cmd = N'CALL [sp_MSdel_dboLA_VendorPaymentSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_VendorPaymentSetting]'
GO

-- Adding the transactional articles
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_Dep_DynamicCustSetting_10', @source_owner = N'dbo', @source_object = N'Acc_Dep_DynamicCustSetting_10', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_Dep_DynamicCustSetting_10', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_Dep_DynamicCustSetting_11', @source_owner = N'dbo', @source_object = N'Acc_Dep_DynamicCustSetting_11', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_Dep_DynamicCustSetting_11', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_Dep_DynamicCustSetting_12', @source_owner = N'dbo', @source_object = N'Acc_Dep_DynamicCustSetting_12', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_Dep_DynamicCustSetting_12', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_Dep_DynamicCustSetting_13', @source_owner = N'dbo', @source_object = N'Acc_Dep_DynamicCustSetting_13', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_Dep_DynamicCustSetting_13', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_Dep_DynamicCustSetting_14', @source_owner = N'dbo', @source_object = N'Acc_Dep_DynamicCustSetting_14', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_Dep_DynamicCustSetting_14', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_Dep_DynamicCustSetting_15', @source_owner = N'dbo', @source_object = N'Acc_Dep_DynamicCustSetting_15', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_Dep_DynamicCustSetting_15', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_Dep_DynamicCustSetting_16', @source_owner = N'dbo', @source_object = N'Acc_Dep_DynamicCustSetting_16', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_Dep_DynamicCustSetting_16', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_Dep_DynamicCustSetting_17', @source_owner = N'dbo', @source_object = N'Acc_Dep_DynamicCustSetting_17', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_Dep_DynamicCustSetting_17', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_Dep_DynamicCustSetting_18', @source_owner = N'dbo', @source_object = N'Acc_Dep_DynamicCustSetting_18', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_Dep_DynamicCustSetting_18', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_Dep_DynamicCustSetting_19', @source_owner = N'dbo', @source_object = N'Acc_Dep_DynamicCustSetting_19', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_Dep_DynamicCustSetting_19', @destination_owner = N'dbo', @status = 0
GO