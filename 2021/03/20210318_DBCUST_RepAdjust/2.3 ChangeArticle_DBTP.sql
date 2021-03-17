/*
	Task: Add article
	Run script below @DBTP
*/

-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'VRCustLockStatus', @source_owner = N'dbo', @source_object = N'VRCustLockStatus', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'VRCustLockStatus', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVRCustLockStatus]', @del_cmd = N'CALL [sp_MSdel_dboVRCustLockStatus]', @upd_cmd = N'SCALL [sp_MSupd_dboVRCustLockStatus]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'ProblemAccountLimitDownline', @source_owner = N'dbo', @source_object = N'ProblemAccountLimitDownline', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'ProblemAccountLimitDownline', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProblemAccountLimitDownline]', @del_cmd = N'CALL [sp_MSdel_dboProblemAccountLimitDownline]', @upd_cmd = N'SCALL [sp_MSupd_dboProblemAccountLimitDownline]'
GO