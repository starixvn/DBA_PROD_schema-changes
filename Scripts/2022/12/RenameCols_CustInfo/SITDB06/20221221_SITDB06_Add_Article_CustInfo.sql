/*<info serverAlias="SITDB06-bodb02"></info>*/
/*
	Created: 20221221@Sol
	Task: Add custinfo article
	DB: SITDB06-bodb02
*/

GO

-- ### PUBLICATION = DB06_CUSTOMER_INFO ###
---#####################################

-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DB06_Customer_Info', @article = N'custInfo', @source_owner = N'dbo', @source_object = N'custInfo', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'custInfo', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dbocustInfo]', @del_cmd = N'CALL [sp_MSdel_dbocustInfo]', @upd_cmd = N'SCALL [sp_MSupd_dbocustInfo]'
GO


-- ### PUBLICATION = DB06_CUSTOMER_INFO_CASINO ###
---#####################################

-- Adding the transactional publication
use [bodb02]
exec sp_addarticle @publication = N'DB06_Customer_Info_Casino', @article = N'custInfo', @source_owner = N'dbo', @source_object = N'custInfo', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'custInfo', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dbocustInfo]', @del_cmd = N'CALL [sp_MSdel_dbocustInfo]', @upd_cmd = N'SCALL [sp_MSupd_dbocustInfo]'