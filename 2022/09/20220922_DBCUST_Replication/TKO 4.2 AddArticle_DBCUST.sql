/*
	Task: Add articles
	Run script below @AWS DBCUST
*/

-- Adding the transactional articles
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_VendorPaymentSetting', @source_owner = N'dbo', @source_object = N'LA_VendorPaymentSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LA_VendorPaymentSetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_VendorPaymentSetting]', @del_cmd = N'CALL [sp_MSdel_dboLA_VendorPaymentSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_VendorPaymentSetting]'
GO

-- Adding the transactional articles
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'ProductStatusSiteCurrency', @source_owner = N'dbo', @source_object = N'ProductStatusSiteCurrency', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'ProductStatusSiteCurrency', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProductStatusSiteCurrency]', @del_cmd = N'CALL [sp_MSdel_dboProductStatusSiteCurrency]', @upd_cmd = N'SCALL [sp_MSupd_dboProductStatusSiteCurrency]'
GO

-- Adding the transactional articles
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'custSetting', @source_owner = N'dbo', @source_object = N'custSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'custSetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dbocustSetting]', @del_cmd = N'CALL [sp_MSdel_dbocustSetting]', @upd_cmd = N'SCALL [sp_MSupd_dbocustSetting]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CustSetting3rd', @source_owner = N'dbo', @source_object = N'CustSetting3rd', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustSetting3rd', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustSetting3rd]', @del_cmd = N'CALL [sp_MSdel_dboCustSetting3rd]', @upd_cmd = N'SCALL [sp_MSupd_dboCustSetting3rd]'
GO
--use [CustDB]
--exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CustWinLimit', @source_owner = N'dbo', @source_object = N'CustWinLimit', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustWinLimit', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustWinLimit]', @del_cmd = N'CALL [sp_MSdel_dboCustWinLimit]', @upd_cmd = N'SCALL [sp_MSupd_dboCustWinLimit]'
--GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CustWinLossLimit_Agent', @source_owner = N'dbo', @source_object = N'CustWinLossLimit_Agent', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustWinLossLimit_Agent', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustWinLossLimit_Agent]', @del_cmd = N'CALL [sp_MSdel_dboCustWinLossLimit_Agent]', @upd_cmd = N'SCALL [sp_MSupd_dboCustWinLossLimit_Agent]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CustWinLossLimit_Member', @source_owner = N'dbo', @source_object = N'CustWinLossLimit_Member', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustWinLossLimit_Member', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustWinLossLimit_Member]', @del_cmd = N'CALL [sp_MSdel_dboCustWinLossLimit_Member]', @upd_cmd = N'SCALL [sp_MSupd_dboCustWinLossLimit_Member]'
GO
--use [CustDB]
--exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustSetting', @source_owner = N'dbo', @source_object = N'Dep_CustSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_CustSetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustSetting]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustSetting]'
--GO
--use [CustDB]
--exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustSetting3rd', @source_owner = N'dbo', @source_object = N'Dep_CustSetting3rd', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_CustSetting3rd', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustSetting3rd]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustSetting3rd]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustSetting3rd]'
--GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'ProductBetSetting', @source_owner = N'dbo', @source_object = N'ProductBetSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'ProductBetSetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProductBetSetting]', @del_cmd = N'CALL [sp_MSdel_dboProductBetSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboProductBetSetting]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'ProductGlobalSetting', @source_owner = N'dbo', @source_object = N'ProductGlobalSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'ProductGlobalSetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProductGlobalSetting]', @del_cmd = N'CALL [sp_MSdel_dboProductGlobalSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboProductGlobalSetting]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'VRBettypeGroup', @source_owner = N'dbo', @source_object = N'VRBettypeGroup', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'VRBettypeGroup', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVRBettypeGroup]', @del_cmd = N'CALL [sp_MSdel_dboVRBettypeGroup]', @upd_cmd = N'SCALL [sp_MSupd_dboVRBettypeGroup]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'VRLeagueGroup', @source_owner = N'dbo', @source_object = N'VRLeagueGroup', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'VRLeagueGroup', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVRLeagueGroup]', @del_cmd = N'CALL [sp_MSdel_dboVRLeagueGroup]', @upd_cmd = N'SCALL [sp_MSupd_dboVRLeagueGroup]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'VRSettingHierarchy', @source_owner = N'dbo', @source_object = N'VRSettingHierarchy', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'VRSettingHierarchy', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVRSettingHierarchy]', @del_cmd = N'CALL [sp_MSdel_dboVRSettingHierarchy]', @upd_cmd = N'SCALL [sp_MSupd_dboVRSettingHierarchy]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'VRSettingReference', @source_owner = N'dbo', @source_object = N'VRSettingReference', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'VRSettingReference', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVRSettingReference]', @del_cmd = N'CALL [sp_MSdel_dboVRSettingReference]', @upd_cmd = N'SCALL [sp_MSupd_dboVRSettingReference]'
GO

-- Adding the transactional articles
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'ProductStatusSiteCurrency', @source_owner = N'dbo', @source_object = N'ProductStatusSiteCurrency', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803589F, @identityrangemanagementoption = N'none', @destination_table = N'ProductStatusSiteCurrency', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProductStatusSiteCurrency]', @del_cmd = N'CALL [sp_MSdel_dboProductStatusSiteCurrency]', @upd_cmd = N'SCALL [sp_MSupd_dboProductStatusSiteCurrency]'
GO

-- Adding the transactional articles
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_Exchange', @article = N'ExchangeDaily_Crypto', @source_owner = N'dbo', @source_object = N'ExchangeDaily_Crypto', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'ExchangeDaily_Crypto', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboExchangeDaily_Crypto]', @del_cmd = N'CALL [sp_MSdel_dboExchangeDaily_Crypto]', @upd_cmd = N'SCALL [sp_MSupd_dboExchangeDaily_Crypto]'
GO

-- Adding the transactional articles
--use [CustDB]
--exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'Dep_CustBetLimitGameType_Special', @source_owner = N'dbo', @source_object = N'Dep_CustBetLimitGameType_Special', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_CustBetLimitGameType_Special', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustBetLimitGameType_Special]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustBetLimitGameType_Special]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustBetLimitGameType_Special]'
--GO

-- Adding the transactional articles
use [CustDB]
exec sp_addarticle @publication = N'CustDB_ExchangeDaily', @article = N'ExchangeDaily_Crypto', @source_owner = N'dbo', @source_object = N'ExchangeDaily_Crypto', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'ExchangeDaily_Crypto', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboExchangeDaily_Crypto]', @del_cmd = N'CALL [sp_MSdel_dboExchangeDaily_Crypto]', @upd_cmd = N'SCALL [sp_MSupd_dboExchangeDaily_Crypto]'
GO