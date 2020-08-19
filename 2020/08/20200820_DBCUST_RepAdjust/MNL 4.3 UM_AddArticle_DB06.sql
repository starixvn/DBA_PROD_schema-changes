/*
	Task: Drop article from replication
	Using UI or run script below @ MNL DB06
*/

-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DB06_Customer_Info', @article = N'Dep_CustVIP', @source_owner = N'dbo', @source_object = N'Dep_CustVIP', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_CustVIP', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustVIP]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustVIP]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustVIP]'
GO

-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DB06_Odds_Info', @article = N'exchange', @source_owner = N'dbo', @source_object = N'exchange', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'exchange', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboexchange]', @del_cmd = N'CALL [sp_MSdel_dboexchange]', @upd_cmd = N'SCALL [sp_MSupd_dboexchange]'
GO