/*
	Task: Change article from replication
	Using UI or run script below @MNL DBCUST
*/


-- Adding the transactional articles
use [CustDB]
exec sp_addarticle @publication = N'CustDB_ExchangeDaily', @article = N'TOControl_GlobalSetting', @source_owner = N'dbo', @source_object = N'TOControl_GlobalSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'TOControl_GlobalSetting', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboTOControl_GlobalSetting]', @del_cmd = N'CALL [sp_MSdel_dboTOControl_GlobalSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboTOControl_GlobalSetting]'
GO


-- Adding the transactional articles
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'VRSettingManualUpdAcc', @source_owner = N'dbo', @source_object = N'VRSettingManualUpdAcc', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'VRSettingManualUpdAcc', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVRSettingManualUpdAcc]', @del_cmd = N'CALL [sp_MSdel_dboVRSettingManualUpdAcc]', @upd_cmd = N'SCALL [sp_MSupd_dboVRSettingManualUpdAcc]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'SuspiciousCust', @source_owner = N'dbo', @source_object = N'SuspiciousCust', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'SuspiciousCust', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSuspiciousCust]', @del_cmd = N'CALL [sp_MSdel_dboSuspiciousCust]', @upd_cmd = N'SCALL [sp_MSupd_dboSuspiciousCust]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_FinancePermission', @source_owner = N'dbo', @source_object = N'Acc_FinancePermission', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Acc_FinancePermission', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAcc_FinancePermission]', @del_cmd = N'CALL [sp_MSdel_dboAcc_FinancePermission]', @upd_cmd = N'SCALL [sp_MSupd_dboAcc_FinancePermission]'
GO