/*
	Task: ProductLaunchedSietCurrency: add artical / add table into replication
	Using UI or run script below @MNL DBCUST
*/

use [CustDB]
GO
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'ProductLaunchedSiteCurrency', @source_owner = N'dbo', @source_object = N'ProductLaunchedSiteCurrency', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'ProductLaunchedSiteCurrency', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProductLaunchedSiteCurrency]', @del_cmd = N'CALL [sp_MSdel_dboProductLaunchedSiteCurrency]', @upd_cmd = N'SCALL [sp_MSupd_dboProductLaunchedSiteCurrency]'
GO
