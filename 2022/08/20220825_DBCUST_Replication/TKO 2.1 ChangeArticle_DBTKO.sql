/*
	Task: Change article from replication
	Using UI or run script below @ DBTKO
*/


use [bodb02]
exec sp_addarticle @publication = N'DBTKO_Odds_Info_C', @article = N'SiteDBConfig', @source_owner = N'dbo', @source_object = N'SiteDBConfig', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'SiteDBConfig', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSiteDBConfig]', @del_cmd = N'CALL [sp_MSdel_dboSiteDBConfig]', @upd_cmd = N'SCALL [sp_MSupd_dboSiteDBConfig]'
GO