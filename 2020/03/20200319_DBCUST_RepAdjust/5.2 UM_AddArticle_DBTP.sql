/*
	Task: Add article
	Run script below @DBTP
*/


-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Odds_Info', @article = N'TOControl_GlobalSetting', @source_owner = N'dbo', @source_object = N'TOControl_GlobalSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'TOControl_GlobalSetting', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboTOControl_GlobalSetting]', @del_cmd = N'CALL [sp_MSdel_dboTOControl_GlobalSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboTOControl_GlobalSetting]'
GO

-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'VRSettingManualUpdAcc', @source_owner = N'dbo', @source_object = N'VRSettingManualUpdAcc', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'VRSettingManualUpdAcc', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVRSettingManualUpdAcc]', @del_cmd = N'CALL [sp_MSdel_dboVRSettingManualUpdAcc]', @upd_cmd = N'SCALL [sp_MSupd_dboVRSettingManualUpdAcc]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'SuspiciousCust', @source_owner = N'dbo', @source_object = N'SuspiciousCust', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'SuspiciousCust', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSuspiciousCust]', @del_cmd = N'CALL [sp_MSdel_dboSuspiciousCust]', @upd_cmd = N'SCALL [sp_MSupd_dboSuspiciousCust]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'Acc_FinancePermission', @source_owner = N'dbo', @source_object = N'Acc_FinancePermission', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Acc_FinancePermission', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAcc_FinancePermission]', @del_cmd = N'CALL [sp_MSdel_dboAcc_FinancePermission]', @upd_cmd = N'SCALL [sp_MSupd_dboAcc_FinancePermission]'
GO
--- MNL fix
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'ProblemAccount', @source_owner = N'dbo', @source_object = N'ProblemAccount', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'ProblemAccount', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProblemAccount]', @del_cmd = N'CALL [sp_MSdel_dboProblemAccount]', @upd_cmd = N'SCALL [sp_MSupd_dboProblemAccount]'
GO