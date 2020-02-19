/*
	Task: Change articles from replications
	Using UI or run script below @DBCUST
*/


-- Add article
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'ProblemAccount', @source_owner = N'dbo', @source_object = N'ProblemAccount', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'ProblemAccount', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProblemAccount]', @del_cmd = N'CALL [sp_MSdel_dboProblemAccount]', @upd_cmd = N'SCALL [sp_MSupd_dboProblemAccount]'
GO

-- Add article
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'ProblemAccountAction', @source_owner = N'dbo', @source_object = N'ProblemAccountAction', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'ProblemAccountAction', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProblemAccountAction]', @del_cmd = N'CALL [sp_MSdel_dboProblemAccountAction]', @upd_cmd = N'SCALL [sp_MSupd_dboProblemAccountAction]'
GO


