/*
	Task: Add article
	Run script below @DBTP
*/


-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_Info', @article = N'SportNonOfferedSiteCurrency', @source_owner = N'dbo', @source_object = N'SportNonOfferedSiteCurrency', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'SportNonOfferedSiteCurrency', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSportNonOfferedSiteCurrency]', @del_cmd = N'CALL [sp_MSdel_dboSportNonOfferedSiteCurrency]', @upd_cmd = N'SCALL [sp_MSupd_dboSportNonOfferedSiteCurrency]'
GO

-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'BetLimitControlDefaultSetting', @source_owner = N'dbo', @source_object = N'BetLimitControlDefaultSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'BetLimitControlDefaultSetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboBetLimitControlDefaultSetting]', @del_cmd = N'CALL [sp_MSdel_dboBetLimitControlDefaultSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboBetLimitControlDefaultSetting]'
GO

-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBTP_DR_sync', @article = N'BetLimitControlDefaultSetting', @source_owner = N'dbo', @source_object = N'BetLimitControlDefaultSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'BetLimitControlDefaultSetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboBetLimitControlDefaultSetting]', @del_cmd = N'CALL [sp_MSdel_dboBetLimitControlDefaultSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboBetLimitControlDefaultSetting]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_DR_sync', @article = N'VRCustAutoAdjustment', @source_owner = N'dbo', @source_object = N'VRCustAutoAdjustment', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'VRCustAutoAdjustment', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVRCustAutoAdjustment]', @del_cmd = N'CALL [sp_MSdel_dboVRCustAutoAdjustment]', @upd_cmd = N'SCALL [sp_MSupd_dboVRCustAutoAdjustment]'
GO
