/*
	Task: Change article from replication
	Using UI or run script below @ DBMNL
*/

-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBMNL_Odds_Info_C', @article = N'Acc_GroupExtraPT2Setting', @source_owner = N'dbo', @source_object = N'Acc_GroupExtraPT2Setting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Acc_GroupExtraPT2Setting', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAcc_GroupExtraPT2Setting]', @del_cmd = N'CALL [sp_MSdel_dboAcc_GroupExtraPT2Setting]', @upd_cmd = N'SCALL [sp_MSupd_dboAcc_GroupExtraPT2Setting]'
GO

-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBMNL_DR_sync_C', @article = N'Acc_GroupExtraPT_Product', @source_owner = N'dbo', @source_object = N'Acc_GroupExtraPT_Product', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Acc_GroupExtraPT_Product', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAcc_GroupExtraPT_Product]', @del_cmd = N'CALL [sp_MSdel_dboAcc_GroupExtraPT_Product]', @upd_cmd = N'SCALL [sp_MSupd_dboAcc_GroupExtraPT_Product]'
GO

-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBMNL_DR_sync_C', @article = N'Acc_GroupExtraPT2_Product', @source_owner = N'dbo', @source_object = N'Acc_GroupExtraPT2_Product', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Acc_GroupExtraPT2_Product', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAcc_GroupExtraPT2_Product]', @del_cmd = N'CALL [sp_MSdel_dboAcc_GroupExtraPT2_Product]', @upd_cmd = N'SCALL [sp_MSupd_dboAcc_GroupExtraPT2_Product]'
GO