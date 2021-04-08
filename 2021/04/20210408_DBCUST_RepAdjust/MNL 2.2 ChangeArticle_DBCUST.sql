/*
	Task: Change article from replication
	Using UI or run script below @MNL DBCUST
*/


-- Adding the transactional articles
use [bodb_Licensee]
exec sp_addarticle @publication = N'DBCust_bodb_licensee', @article = N'OAS_PartyBaseCurrency', @source_owner = N'dbo', @source_object = N'OAS_PartyBaseCurrency', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'OAS_PartyBaseCurrency', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOAS_PartyBaseCurrency]', @del_cmd = N'CALL [sp_MSdel_dboOAS_PartyBaseCurrency]', @upd_cmd = N'SCALL [sp_MSupd_dboOAS_PartyBaseCurrency]'
GO