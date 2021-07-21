/*
	Task: Change article from replication
	Using UI or run script below @MNL DBCUST
*/


-- Adding the transactional articles
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'BetLimitControlType', @source_owner = N'dbo', @source_object = N'BetLimitControlType', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'BetLimitControlType', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboBetLimitControlType]', @del_cmd = N'CALL [sp_MSdel_dboBetLimitControlType]', @upd_cmd = N'SCALL [sp_MSupd_dboBetLimitControlType]'
GO

-- Adding the transactional articles
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'CustProductStatus', @source_owner = N'dbo', @source_object = N'CustProductStatus', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803589F, @identityrangemanagementoption = N'none', @destination_table = N'CustProductStatus', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustProductStatus]', @del_cmd = N'CALL [sp_MSdel_dboCustProductStatus]', @upd_cmd = N'SCALL [sp_MSupd_dboCustProductStatus]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'ProductSettingDetail', @source_owner = N'dbo', @source_object = N'ProductSettingDetail', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803589F, @identityrangemanagementoption = N'none', @destination_table = N'ProductSettingDetail', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProductSettingDetail]', @del_cmd = N'CALL [sp_MSdel_dboProductSettingDetail]', @upd_cmd = N'SCALL [sp_MSupd_dboProductSettingDetail]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'ProductStatusProfile', @source_owner = N'dbo', @source_object = N'ProductStatusProfile', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803589F, @identityrangemanagementoption = N'none', @destination_table = N'ProductStatusProfile', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProductStatusProfile]', @del_cmd = N'CALL [sp_MSdel_dboProductStatusProfile]', @upd_cmd = N'SCALL [sp_MSupd_dboProductStatusProfile]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'ProductStatusSiteCurrency', @source_owner = N'dbo', @source_object = N'ProductStatusSiteCurrency', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803589F, @identityrangemanagementoption = N'none', @destination_table = N'ProductStatusSiteCurrency', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProductStatusSiteCurrency]', @del_cmd = N'CALL [sp_MSdel_dboProductStatusSiteCurrency]', @upd_cmd = N'SCALL [sp_MSupd_dboProductStatusSiteCurrency]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustDirect', @source_owner = N'dbo', @source_object = N'Acc_CustDirect', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803589F, @identityrangemanagementoption = N'none', @destination_table = N'Acc_CustDirect', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAcc_CustDirect]', @del_cmd = N'CALL [sp_MSdel_dboAcc_CustDirect]', @upd_cmd = N'SCALL [sp_MSupd_dboAcc_CustDirect]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Site', @source_owner = N'dbo', @source_object = N'Site', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'Site', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSite]', @del_cmd = N'CALL [sp_MSdel_dboSite]', @upd_cmd = N'SCALL [sp_MSupd_dboSite]'
GO