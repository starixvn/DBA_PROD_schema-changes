/*
	Task: Add article
	Run script below @DBTP
*/

-- *** WARNING **** CHECK BU DONE ON DBBAL Before run or CANCEL!!! -->  Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'NAP_Admin_Calculate_Profile', @source_owner = N'dbo', @source_object = N'NAP_Admin_Calculate_Profile', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'NAP_Admin_Calculate_Profile', @destination_owner = N'dbo', @status = 0
GO

-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'LimitPTDailySetting', @source_owner = N'dbo', @source_object = N'LimitPTDailySetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LimitPTDailySetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLimitPTDailySetting]', @del_cmd = N'CALL [sp_MSdel_dboLimitPTDailySetting]', @upd_cmd = N'SCALL [sp_MSupd_dboLimitPTDailySetting]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'CustLimitPTSetting', @source_owner = N'dbo', @source_object = N'CustLimitPTSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustLimitPTSetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustLimitPTSetting]', @del_cmd = N'CALL [sp_MSdel_dboCustLimitPTSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboCustLimitPTSetting]'
GO
