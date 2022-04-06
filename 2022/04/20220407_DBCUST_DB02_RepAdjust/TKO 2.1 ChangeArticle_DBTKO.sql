/*
	Task: Change article from replication
	Using UI or run script below @ DBTKO
*/


-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBTKO_Customer_Setting_C', @article = N'Dep_CustBetSettingGame_Agent', @source_owner = N'dbo', @source_object = N'Dep_CustBetSettingGame_Agent', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_CustBetSettingGame_Agent', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustBetSettingGame_Agent]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustBetSettingGame_Agent]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustBetSettingGame_Agent]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTKO_Customer_Setting_C', @article = N'Dep_CustBetSettingGame_Member', @source_owner = N'dbo', @source_object = N'Dep_CustBetSettingGame_Member', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_CustBetSettingGame_Member', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustBetSettingGame_Member]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustBetSettingGame_Member]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustBetSettingGame_Member]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTKO_Customer_Setting_C', @article = N'Dep_CustBetSettingGameGroup_Member', @source_owner = N'dbo', @source_object = N'Dep_CustBetSettingGameGroup_Member', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_CustBetSettingGameGroup_Member', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustBetSettingGameGroup_Member]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustBetSettingGameGroup_Member]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustBetSettingGameGroup_Member]'
GO