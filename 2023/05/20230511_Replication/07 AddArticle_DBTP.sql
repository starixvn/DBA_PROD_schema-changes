/*
	Task: Add articles
	Run script below @DBTP - add 15 articles to pub CustDB_Customer_Info, CustDB_DBTrans_CustInfo
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
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'CustomerClassRule', @source_owner = N'dbo', @source_object = N'CustomerClassRule', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'CustomerClassRule', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustomerClassRule]', @del_cmd = N'CALL [sp_MSdel_dboCustomerClassRule]', @upd_cmd = N'SCALL [sp_MSupd_dboCustomerClassRule]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'CustomerClassPolicyManagement', @source_owner = N'dbo', @source_object = N'CustomerClassPolicyManagement', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'CustomerClassPolicyManagement', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustomerClassPolicyManagement]', @del_cmd = N'CALL [sp_MSdel_dboCustomerClassPolicyManagement]', @upd_cmd = N'SCALL [sp_MSupd_dboCustomerClassPolicyManagement]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'CustomerClassRuleLeagueGroup', @source_owner = N'dbo', @source_object = N'CustomerClassRuleLeagueGroup', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustomerClassRuleLeagueGroup', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustomerClassRuleLeagueGroup]', @del_cmd = N'CALL [sp_MSdel_dboCustomerClassRuleLeagueGroup]', @upd_cmd = N'SCALL [sp_MSupd_dboCustomerClassRuleLeagueGroup]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'CustomerClassPolicyRule', @source_owner = N'dbo', @source_object = N'CustomerClassPolicyRule', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustomerClassPolicyRule', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustomerClassPolicyRule]', @del_cmd = N'CALL [sp_MSdel_dboCustomerClassPolicyRule]', @upd_cmd = N'SCALL [sp_MSupd_dboCustomerClassPolicyRule]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'CustomerClassSiteManagement', @source_owner = N'dbo', @source_object = N'CustomerClassSiteManagement', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustomerClassSiteManagement', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustomerClassSiteManagement]', @del_cmd = N'CALL [sp_MSdel_dboCustomerClassSiteManagement]', @upd_cmd = N'SCALL [sp_MSupd_dboCustomerClassSiteManagement]'
GO