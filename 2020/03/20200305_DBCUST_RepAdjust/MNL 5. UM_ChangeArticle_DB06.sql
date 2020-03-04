/*
	Task: Drop article from replication
	Using UI or run script below @ MNL DB06
*/

-- Add article
use [bodb02]
exec sp_addarticle @publication = N'DB06_DR_sync', @article = N'CS_ReportPermission', @source_owner = N'dbo', @source_object = N'CS_ReportPermission', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CS_ReportPermission', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCS_ReportPermission]', @del_cmd = N'CALL [sp_MSdel_dboCS_ReportPermission]', @upd_cmd = N'SCALL [sp_MSupd_dboCS_ReportPermission]'
GO

-- Add article
use [bodb02]
exec sp_addarticle @publication = N'DB06_Customer_n_Setting', @article = N'Dep_CustVIP', @source_owner = N'dbo', @source_object = N'Dep_CustVIP', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_CustVIP', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustVIP]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustVIP]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustVIP]'
GO