/*
	Task: Add articles to publication
	Run on CASINOADMINCS
*/

-- Adding the transactional articles
use [LiveCasinoAdmin]
exec sp_addarticle @publication = N'A2Archive_Table', @article = N'custInfo', @source_owner = N'dbo', @source_object = N'custInfo', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000807509F, @identityrangemanagementoption = N'none', @destination_table = N'custInfo', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dbocustInfo]', @del_cmd = N'CALL [sp_MSdel_dbocustInfo]', @upd_cmd = N'SCALL [sp_MSupd_dbocustInfo]'
GO

-- Adding the transactional articles
use [LiveCasinoAdmin]
exec sp_addarticle @publication = N'A2C_CustInfo', @article = N'custInfo', @source_owner = N'dbo', @source_object = N'custInfo', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x00000000080758DF, @identityrangemanagementoption = N'none', @destination_table = N'custInfo', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dbocustInfo]', @del_cmd = N'CALL [sp_MSdel_dbocustInfo]', @upd_cmd = N'SCALL [sp_MSupd_dbocustInfo]'
GO

-- Adding the transactional articles
use [LiveCasinoAdmin]
exec sp_addarticle @publication = N'A2Q_Custinfo', @article = N'custInfo', @source_owner = N'dbo', @source_object = N'custInfo', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'custInfo', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dbocustInfo]', @del_cmd = N'CALL [sp_MSdel_dbocustInfo]', @upd_cmd = N'SCALL [sp_MSupd_dbocustInfo]'
GO