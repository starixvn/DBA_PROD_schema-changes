/*
	Task: add articles / add tables into replication
	Using UI or run script below @DBCUST
*/

--Add article CS_ProblemAccount
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'CS_ProblemAccount', @source_owner = N'dbo', @source_object = N'CS_ProblemAccount', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CS_ProblemAccount', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCS_ProblemAccount]', @del_cmd = N'CALL [sp_MSdel_dboCS_ProblemAccount]', @upd_cmd = N'SCALL [sp_MSupd_dboCS_ProblemAccount]'
GO

--Add article Acc_GroupExtraPTSetting
use [CustDB]
exec sp_addarticle @publication = N'CustDB_ExchangeDaily', @article = N'Acc_GroupExtraPTSetting', @source_owner = N'dbo', @source_object = N'Acc_GroupExtraPTSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Acc_GroupExtraPTSetting', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAcc_GroupExtraPTSetting]', @del_cmd = N'CALL [sp_MSdel_dboAcc_GroupExtraPTSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboAcc_GroupExtraPTSetting]'
GO