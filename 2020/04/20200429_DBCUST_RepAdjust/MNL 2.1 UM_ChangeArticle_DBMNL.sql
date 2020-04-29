/*
	Task: Change article from replication
	Using UI or run script below @ DBMNL
*/

-- Dropping the transactional articles
use [bodb02]
exec sp_dropsubscription @publication = N'DBMNL_Customer_Setting_C', @article = N'CustCommRate', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBMNL_Customer_Setting_C', @article = N'CustCommRate', @force_invalidate_snapshot = 1
GO
use [bodb02]
exec sp_dropsubscription @publication = N'DBMNL_Customer_Setting_C', @article = N'AgentCommRate', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBMNL_Customer_Setting_C', @article = N'AgentCommRate', @force_invalidate_snapshot = 1
GO


-- Adding the transactional articles
use [bodb_Licensee]
exec sp_addarticle @publication = N'DBMNL_bodb_Licensee_C', @article = N'LicenseeCustComm_History', @source_owner = N'dbo', @source_object = N'LicenseeCustComm_History', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LicenseeCustComm_History', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLicenseeCustComm_History]', @del_cmd = N'CALL [sp_MSdel_dboLicenseeCustComm_History]', @upd_cmd = N'SCALL [sp_MSupd_dboLicenseeCustComm_History]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'DBMNL_bodb_Licensee_C', @article = N'f_CheckRepTable', @source_owner = N'dbo', @source_object = N'f_CheckRepTable', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CheckRepTable', @destination_owner = N'dbo', @status = 16
GO