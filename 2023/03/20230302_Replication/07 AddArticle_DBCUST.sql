/*
	Task: Add article
	Run script below @DBCUST
*/

-- Adding the transactional articles
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'ProductSettingDetail_UAT', @source_owner = N'dbo', @source_object = N'ProductSettingDetail_UAT', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'ProductSettingDetail_UAT', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProductSettingDetail_UAT]', @del_cmd = N'CALL [sp_MSdel_dboProductSettingDetail_UAT]', @upd_cmd = N'SCALL [sp_MSupd_dboProductSettingDetail_UAT]'
GO

-- Adding the transactional articles
-- use [CustDB]
-- exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'f_CustSetting_ProductSettingDetailSel', @source_owner = N'dbo', @source_object = N'f_CustSetting_ProductSettingDetailSel', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CustSetting_ProductSettingDetailSel', @destination_owner = N'dbo', @status = 16
-- GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'f_CustSetting_ProductSettingDetailSel_xtest', @source_owner = N'dbo', @source_object = N'f_CustSetting_ProductSettingDetailSel_xtest', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CustSetting_ProductSettingDetailSel_xtest', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'f_CustSetting_ProductSettingDetailSel_xpre', @source_owner = N'dbo', @source_object = N'f_CustSetting_ProductSettingDetailSel_xpre', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CustSetting_ProductSettingDetailSel_xpre', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'f_CustSetting_ProductSettingDetailSel_UAT1', @source_owner = N'dbo', @source_object = N'f_CustSetting_ProductSettingDetailSel_UAT1', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CustSetting_ProductSettingDetailSel_UAT1', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'f_CustSetting_ProductSettingDetailSel_UAT2', @source_owner = N'dbo', @source_object = N'f_CustSetting_ProductSettingDetailSel_UAT2', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CustSetting_ProductSettingDetailSel_UAT2', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'f_CustSetting_ProductSettingDetailSel_UAT3', @source_owner = N'dbo', @source_object = N'f_CustSetting_ProductSettingDetailSel_UAT3', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CustSetting_ProductSettingDetailSel_UAT3', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'f_CustSetting_ProductSettingDetailSel_UAT4', @source_owner = N'dbo', @source_object = N'f_CustSetting_ProductSettingDetailSel_UAT4', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CustSetting_ProductSettingDetailSel_UAT4', @destination_owner = N'dbo', @status = 16
GO
---------------------------------------
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'f_CustSetting_SportBetTypeSettingSelect', @source_owner = N'dbo', @source_object = N'f_CustSetting_SportBetTypeSettingSelect', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CustSetting_SportBetTypeSettingSelect', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'f_CustSetting_SportBetTypeSettingSelect_xtest', @source_owner = N'dbo', @source_object = N'f_CustSetting_SportBetTypeSettingSelect_xtest', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CustSetting_SportBetTypeSettingSelect_xtest', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'f_CustSetting_SportBetTypeSettingSelect_xpre', @source_owner = N'dbo', @source_object = N'f_CustSetting_SportBetTypeSettingSelect_xpre', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CustSetting_SportBetTypeSettingSelect_xpre', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'f_CustSetting_SportBetTypeSettingSelect_UAT1', @source_owner = N'dbo', @source_object = N'f_CustSetting_SportBetTypeSettingSelect_UAT1', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CustSetting_SportBetTypeSettingSelect_UAT1', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'f_CustSetting_SportBetTypeSettingSelect_UAT2', @source_owner = N'dbo', @source_object = N'f_CustSetting_SportBetTypeSettingSelect_UAT2', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CustSetting_SportBetTypeSettingSelect_UAT2', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'f_CustSetting_SportBetTypeSettingSelect_UAT3', @source_owner = N'dbo', @source_object = N'f_CustSetting_SportBetTypeSettingSelect_UAT3', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CustSetting_SportBetTypeSettingSelect_UAT3', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'f_CustSetting_SportBetTypeSettingSelect_UAT4', @source_owner = N'dbo', @source_object = N'f_CustSetting_SportBetTypeSettingSelect_UAT4', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CustSetting_SportBetTypeSettingSelect_UAT4', @destination_owner = N'dbo', @status = 16
GO

--=====================================================



-- Adding the transactional articles
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'ProductSettingDetail_UAT', @source_owner = N'dbo', @source_object = N'ProductSettingDetail_UAT', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'ProductSettingDetail_UAT', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProductSettingDetail_UAT]', @del_cmd = N'CALL [sp_MSdel_dboProductSettingDetail_UAT]', @upd_cmd = N'SCALL [sp_MSupd_dboProductSettingDetail_UAT]'
GO

-- Adding the transactional articles
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'f_CustSetting_ProductSettingDetailSel', @source_owner = N'dbo', @source_object = N'f_CustSetting_ProductSettingDetailSel', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CustSetting_ProductSettingDetailSel', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'f_CustSetting_ProductSettingDetailSel_xtest', @source_owner = N'dbo', @source_object = N'f_CustSetting_ProductSettingDetailSel_xtest', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CustSetting_ProductSettingDetailSel_xtest', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'f_CustSetting_ProductSettingDetailSel_xpre', @source_owner = N'dbo', @source_object = N'f_CustSetting_ProductSettingDetailSel_xpre', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CustSetting_ProductSettingDetailSel_xpre', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'f_CustSetting_ProductSettingDetailSel_UAT1', @source_owner = N'dbo', @source_object = N'f_CustSetting_ProductSettingDetailSel_UAT1', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CustSetting_ProductSettingDetailSel_UAT1', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'f_CustSetting_ProductSettingDetailSel_UAT2', @source_owner = N'dbo', @source_object = N'f_CustSetting_ProductSettingDetailSel_UAT2', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CustSetting_ProductSettingDetailSel_UAT2', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'f_CustSetting_ProductSettingDetailSel_UAT3', @source_owner = N'dbo', @source_object = N'f_CustSetting_ProductSettingDetailSel_UAT3', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CustSetting_ProductSettingDetailSel_UAT3', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'f_CustSetting_ProductSettingDetailSel_UAT4', @source_owner = N'dbo', @source_object = N'f_CustSetting_ProductSettingDetailSel_UAT4', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CustSetting_ProductSettingDetailSel_UAT4', @destination_owner = N'dbo', @status = 16
GO
---------------------------------------
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'f_CustSetting_SportBetTypeSettingSelect', @source_owner = N'dbo', @source_object = N'f_CustSetting_SportBetTypeSettingSelect', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CustSetting_SportBetTypeSettingSelect', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'f_CustSetting_SportBetTypeSettingSelect_xtest', @source_owner = N'dbo', @source_object = N'f_CustSetting_SportBetTypeSettingSelect_xtest', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CustSetting_SportBetTypeSettingSelect_xtest', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'f_CustSetting_SportBetTypeSettingSelect_xpre', @source_owner = N'dbo', @source_object = N'f_CustSetting_SportBetTypeSettingSelect_xpre', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CustSetting_SportBetTypeSettingSelect_xpre', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'f_CustSetting_SportBetTypeSettingSelect_UAT1', @source_owner = N'dbo', @source_object = N'f_CustSetting_SportBetTypeSettingSelect_UAT1', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CustSetting_SportBetTypeSettingSelect_UAT1', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'f_CustSetting_SportBetTypeSettingSelect_UAT2', @source_owner = N'dbo', @source_object = N'f_CustSetting_SportBetTypeSettingSelect_UAT2', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CustSetting_SportBetTypeSettingSelect_UAT2', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'f_CustSetting_SportBetTypeSettingSelect_UAT3', @source_owner = N'dbo', @source_object = N'f_CustSetting_SportBetTypeSettingSelect_UAT3', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CustSetting_SportBetTypeSettingSelect_UAT3', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'f_CustSetting_SportBetTypeSettingSelect_UAT4', @source_owner = N'dbo', @source_object = N'f_CustSetting_SportBetTypeSettingSelect_UAT4', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CustSetting_SportBetTypeSettingSelect_UAT4', @destination_owner = N'dbo', @status = 16
GO