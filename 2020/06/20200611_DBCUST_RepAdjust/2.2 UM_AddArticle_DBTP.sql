/*
	Task: Add article
	Run script below @DBTP
*/


-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'VRSettingReference', @source_owner = N'dbo', @source_object = N'VRSettingReference', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'VRSettingReference', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVRSettingReference]', @del_cmd = N'CALL [sp_MSdel_dboVRSettingReference]', @upd_cmd = N'SCALL [sp_MSupd_dboVRSettingReference]'
GO

-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBTP_DR_sync', @article = N'CustInDirectLogin', @source_owner = N'dbo', @source_object = N'CustInDirectLogin', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustInDirectLogin', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustInDirectLogin]', @del_cmd = N'CALL [sp_MSdel_dboCustInDirectLogin]', @upd_cmd = N'SCALL [sp_MSupd_dboCustInDirectLogin]'
GO