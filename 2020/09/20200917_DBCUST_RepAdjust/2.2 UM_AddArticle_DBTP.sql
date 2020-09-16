/*
	Task: Add article
	Run script below @DBTP
*/


-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBTP_DR_sync', @article = N'VRAgentAutoAdjustment', @source_owner = N'dbo', @source_object = N'VRAgentAutoAdjustment', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'VRAgentAutoAdjustment', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVRAgentAutoAdjustment]', @del_cmd = N'CALL [sp_MSdel_dboVRAgentAutoAdjustment]', @upd_cmd = N'SCALL [sp_MSupd_dboVRAgentAutoAdjustment]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_DR_sync', @article = N'VRAgentProfile', @source_owner = N'dbo', @source_object = N'VRAgentProfile', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'VRAgentProfile', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVRAgentProfile]', @del_cmd = N'CALL [sp_MSdel_dboVRAgentProfile]', @upd_cmd = N'SCALL [sp_MSupd_dboVRAgentProfile]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_DR_sync', @article = N'CustomerClassPolicy', @source_owner = N'dbo', @source_object = N'CustomerClassPolicy', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'CustomerClassPolicy', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustomerClassPolicy]', @del_cmd = N'CALL [sp_MSdel_dboCustomerClassPolicy]', @upd_cmd = N'SCALL [sp_MSupd_dboCustomerClassPolicy]'
GO