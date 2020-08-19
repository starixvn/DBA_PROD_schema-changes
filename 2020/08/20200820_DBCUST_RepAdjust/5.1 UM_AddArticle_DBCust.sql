/*
	Task: Add article
	Run script below @DBCUST
*/


-- Adding the transactional articles
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'UMConfig', @source_owner = N'dbo', @source_object = N'UMConfig', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'UMConfig', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboUMConfig]', @del_cmd = N'CALL [sp_MSdel_dboUMConfig]', @upd_cmd = N'SCALL [sp_MSupd_dboUMConfig]'
GO

-- Adding the transactional articles
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Dep_CustVIP', @source_owner = N'dbo', @source_object = N'Dep_CustVIP', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_CustVIP', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustVIP]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustVIP]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustVIP]'
GO

-- Adding the transactional articles
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Login_Exchange', @article = N'exchange', @source_owner = N'dbo', @source_object = N'exchange', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'exchange', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboexchange]', @del_cmd = N'CALL [sp_MSdel_dboexchange]', @upd_cmd = N'SCALL [sp_MSupd_dboexchange]'
GO

-- Adding the transactional articles
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_Exchange', @article = N'exchange', @source_owner = N'dbo', @source_object = N'exchange', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'exchange', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboexchange]', @del_cmd = N'CALL [sp_MSdel_dboexchange]', @upd_cmd = N'SCALL [sp_MSupd_dboexchange]'
GO
