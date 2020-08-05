/*
	Task: Change article from replication
	Using UI or run script below @ DBMNL
*/

-- Adding the transactional articles
use [bodb_Licensee]
exec sp_addarticle @publication = N'DBMNL_bodb_Licensee_C', @article = N'LA_GroupMinFeeHeader', @source_owner = N'dbo', @source_object = N'LA_GroupMinFeeHeader', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LA_GroupMinFeeHeader', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_GroupMinFeeHeader]', @del_cmd = N'CALL [sp_MSdel_dboLA_GroupMinFeeHeader]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_GroupMinFeeHeader]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'DBMNL_bodb_Licensee_C', @article = N'LA_GroupMinFeeAssignment', @source_owner = N'dbo', @source_object = N'LA_GroupMinFeeAssignment', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LA_GroupMinFeeAssignment', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_GroupMinFeeAssignment]', @del_cmd = N'CALL [sp_MSdel_dboLA_GroupMinFeeAssignment]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_GroupMinFeeAssignment]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'DBMNL_bodb_Licensee_C', @article = N'LA_GroupMinFeeDetail', @source_owner = N'dbo', @source_object = N'LA_GroupMinFeeDetail', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LA_GroupMinFeeDetail', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_GroupMinFeeDetail]', @del_cmd = N'CALL [sp_MSdel_dboLA_GroupMinFeeDetail]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_GroupMinFeeDetail]'
GO

-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBMNL_Customer_Info_C', @article = N'CustSuspendLockUpd', @source_owner = N'dbo', @source_object = N'CustSuspendLockUpd', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustSuspendLockUpd', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustSuspendLockUpd]', @del_cmd = N'CALL [sp_MSdel_dboCustSuspendLockUpd]', @upd_cmd = N'SCALL [sp_MSupd_dboCustSuspendLockUpd]'
GO