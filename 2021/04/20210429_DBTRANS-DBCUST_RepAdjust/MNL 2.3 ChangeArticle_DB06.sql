/*
	Task: Change article from replication
	Using UI or run script below @MNL DB06
*/


-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DB06_DR_sync', @article = N'Acc_DWLList', @source_owner = N'dbo', @source_object = N'Acc_DWLList', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Acc_DWLList', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAcc_DWLList]', @del_cmd = N'CALL [sp_MSdel_dboAcc_DWLList]', @upd_cmd = N'SCALL [sp_MSupd_dboAcc_DWLList]'
GO
exec sp_addarticle @publication = N'DB06_DR_sync', @article = N'Acc_DWLList_xtest', @source_owner = N'dbo', @source_object = N'Acc_DWLList_xtest', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Acc_DWLList_xtest', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAcc_DWLList_xtest]', @del_cmd = N'CALL [sp_MSdel_dboAcc_DWLList_xtest]', @upd_cmd = N'SCALL [sp_MSupd_dboAcc_DWLList_xtest]'
GO
exec sp_addarticle @publication = N'DB06_DR_sync', @article = N'Acc_DWLList_ExtraPT', @source_owner = N'dbo', @source_object = N'Acc_DWLList_ExtraPT', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Acc_DWLList_ExtraPT', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAcc_DWLList_ExtraPT]', @del_cmd = N'CALL [sp_MSdel_dboAcc_DWLList_ExtraPT]', @upd_cmd = N'SCALL [sp_MSupd_dboAcc_DWLList_ExtraPT]'
GO
exec sp_addarticle @publication = N'DB06_DR_sync', @article = N'Acc_DWLList_ExtraPT_xtest', @source_owner = N'dbo', @source_object = N'Acc_DWLList_ExtraPT_xtest', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Acc_DWLList_ExtraPT_xtest', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAcc_DWLList_ExtraPT_xtest]', @del_cmd = N'CALL [sp_MSdel_dboAcc_DWLList_ExtraPT_xtest]', @upd_cmd = N'SCALL [sp_MSupd_dboAcc_DWLList_ExtraPT_xtest]'
GO