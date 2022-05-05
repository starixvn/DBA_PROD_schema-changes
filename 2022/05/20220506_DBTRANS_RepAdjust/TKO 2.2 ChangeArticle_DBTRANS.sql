/*
	Task: Change article from replication
	Using UI or run script below @ AWS DBTRANS
*/


-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBTrans_Sync_DB06', @article = N'Sport_Bettype_Reference', @source_owner = N'dbo', @source_object = N'Sport_Bettype_Reference', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Sport_Bettype_Reference', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSport_Bettype_Reference]', @del_cmd = N'CALL [sp_MSdel_dboSport_Bettype_Reference]', @upd_cmd = N'SCALL [sp_MSupd_dboSport_Bettype_Reference]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTrans_Sync_DB06', @article = N'Sport_Bettype_Reference_Setting', @source_owner = N'dbo', @source_object = N'Sport_Bettype_Reference_Setting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Sport_Bettype_Reference_Setting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSport_Bettype_Reference_Setting]', @del_cmd = N'CALL [sp_MSdel_dboSport_Bettype_Reference_Setting]', @upd_cmd = N'SCALL [sp_MSupd_dboSport_Bettype_Reference_Setting]'
GO