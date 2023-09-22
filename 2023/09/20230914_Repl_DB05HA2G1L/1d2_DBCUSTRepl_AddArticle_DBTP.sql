/*
	Task: Add articles to publication
	Run on DBTP10C
*/

-- Adding the transactional articles
use [bodb_Licensee]
exec sp_addarticle @publication = N'DBTP_bodb_licensee', @article = N'LicenseeCustComm', @source_owner = N'dbo', @source_object = N'LicenseeCustComm', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LicenseeCustComm', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLicenseeCustComm]', @del_cmd = N'CALL [sp_MSdel_dboLicenseeCustComm]', @upd_cmd = N'SCALL [sp_MSupd_dboLicenseeCustComm]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'DBTP_bodb_licensee', @article = N'LicenseeGroupComm', @source_owner = N'dbo', @source_object = N'LicenseeGroupComm', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LicenseeGroupComm', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLicenseeGroupComm]', @del_cmd = N'CALL [sp_MSdel_dboLicenseeGroupComm]', @upd_cmd = N'SCALL [sp_MSupd_dboLicenseeGroupComm]'
GO


-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_Info', @article = N'ProductProfileSiteCurrency', @source_owner = N'dbo', @source_object = N'ProductProfileSiteCurrency', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'ProductProfileSiteCurrency', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProductProfileSiteCurrency]', @del_cmd = N'CALL [sp_MSdel_dboProductProfileSiteCurrency]', @upd_cmd = N'SCALL [sp_MSupd_dboProductProfileSiteCurrency]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_Info', @article = N'ProductProfileSiteCurrency_UAT', @source_owner = N'dbo', @source_object = N'ProductProfileSiteCurrency_UAT', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'ProductProfileSiteCurrency_UAT', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProductProfileSiteCurrency_UAT]', @del_cmd = N'CALL [sp_MSdel_dboProductProfileSiteCurrency_UAT]', @upd_cmd = N'SCALL [sp_MSupd_dboProductProfileSiteCurrency_UAT]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_Info', @article = N'ProductSettingProfile', @source_owner = N'dbo', @source_object = N'ProductSettingProfile', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'ProductSettingProfile', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProductSettingProfile]', @del_cmd = N'CALL [sp_MSdel_dboProductSettingProfile]', @upd_cmd = N'SCALL [sp_MSupd_dboProductSettingProfile]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_Info', @article = N'ProductSettingProfile_UAT', @source_owner = N'dbo', @source_object = N'ProductSettingProfile_UAT', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'ProductSettingProfile_UAT', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProductSettingProfile_UAT]', @del_cmd = N'CALL [sp_MSdel_dboProductSettingProfile_UAT]', @upd_cmd = N'SCALL [sp_MSupd_dboProductSettingProfile_UAT]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_Info', @article = N'f_CustSetting_ProductProfileSel', @source_owner = N'dbo', @source_object = N'f_CustSetting_ProductProfileSel', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CustSetting_ProductProfileSel', @destination_owner = N'dbo', @status = 16
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_Info', @article = N'f_LiteMode_CustSetting_ProductSettingDetailSel', @source_owner = N'dbo', @source_object = N'f_LiteMode_CustSetting_ProductSettingDetailSel', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_LiteMode_CustSetting_ProductSettingDetailSel', @destination_owner = N'dbo', @status = 16
GO


-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'ProductProfileSiteCurrency', @source_owner = N'dbo', @source_object = N'ProductProfileSiteCurrency', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'ProductProfileSiteCurrency', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProductProfileSiteCurrency]', @del_cmd = N'CALL [sp_MSdel_dboProductProfileSiteCurrency]', @upd_cmd = N'SCALL [sp_MSupd_dboProductProfileSiteCurrency]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'ProductProfileSiteCurrency_UAT', @source_owner = N'dbo', @source_object = N'ProductProfileSiteCurrency_UAT', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'ProductProfileSiteCurrency_UAT', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProductProfileSiteCurrency_UAT]', @del_cmd = N'CALL [sp_MSdel_dboProductProfileSiteCurrency_UAT]', @upd_cmd = N'SCALL [sp_MSupd_dboProductProfileSiteCurrency_UAT]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'ProductSettingProfile', @source_owner = N'dbo', @source_object = N'ProductSettingProfile', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'ProductSettingProfile', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProductSettingProfile]', @del_cmd = N'CALL [sp_MSdel_dboProductSettingProfile]', @upd_cmd = N'SCALL [sp_MSupd_dboProductSettingProfile]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'ProductSettingProfile_UAT', @source_owner = N'dbo', @source_object = N'ProductSettingProfile_UAT', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'ProductSettingProfile_UAT', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProductSettingProfile_UAT]', @del_cmd = N'CALL [sp_MSdel_dboProductSettingProfile_UAT]', @upd_cmd = N'SCALL [sp_MSupd_dboProductSettingProfile_UAT]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'f_CustSetting_ProductProfileSel', @source_owner = N'dbo', @source_object = N'f_CustSetting_ProductProfileSel', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CustSetting_ProductProfileSel', @destination_owner = N'dbo', @status = 16
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'f_LiteMode_CustSetting_ProductSettingDetailSel', @source_owner = N'dbo', @source_object = N'f_LiteMode_CustSetting_ProductSettingDetailSel', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_LiteMode_CustSetting_ProductSettingDetailSel', @destination_owner = N'dbo', @status = 16
GO


-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'CustPTTemplate', @source_owner = N'dbo', @source_object = N'CustPTTemplate', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'CustPTTemplate', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustPTTemplate]', @del_cmd = N'CALL [sp_MSdel_dboCustPTTemplate]', @upd_cmd = N'SCALL [sp_MSupd_dboCustPTTemplate]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'CustPTTemplateDetail', @source_owner = N'dbo', @source_object = N'CustPTTemplateDetail', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustPTTemplateDetail', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustPTTemplateDetail]', @del_cmd = N'CALL [sp_MSdel_dboCustPTTemplateDetail]', @upd_cmd = N'SCALL [sp_MSupd_dboCustPTTemplateDetail]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'Dep_CustomerClass', @source_owner = N'dbo', @source_object = N'Dep_CustomerClass', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_CustomerClass', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustomerClass]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustomerClass]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustomerClass]'
GO
