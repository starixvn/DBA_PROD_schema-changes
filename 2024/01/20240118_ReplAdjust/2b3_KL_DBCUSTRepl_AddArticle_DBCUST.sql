/*
	Task: Add articles to publication
	Run on KL DBCUST
*/


-- Adding the transactional articles
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'WinLimit_CustWinlostGame', @source_owner = N'dbo', @source_object = N'WinLimit_CustWinlostGame', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'WinLimit_CustWinlostGame', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboWinLimit_CustWinlostGame]', @del_cmd = N'CALL [sp_MSdel_dboWinLimit_CustWinlostGame]', @upd_cmd = N'SCALL [sp_MSupd_dboWinLimit_CustWinlostGame]'
GO

-- Adding the transactional articles
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'CustCategoryHistory', @source_owner = N'dbo', @source_object = N'CustCategoryHistory', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'CustCategoryHistory', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustCategoryHistory]', @del_cmd = N'CALL [sp_MSdel_dboCustCategoryHistory]', @upd_cmd = N'SCALL [sp_MSupd_dboCustCategoryHistory]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'CustomerClassPolicy', @source_owner = N'dbo', @source_object = N'CustomerClassPolicy', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'CustomerClassPolicy', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustomerClassPolicy]', @del_cmd = N'CALL [sp_MSdel_dboCustomerClassPolicy]', @upd_cmd = N'SCALL [sp_MSupd_dboCustomerClassPolicy]'
GO


