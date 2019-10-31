 
--- run on MNL DBCust for creating replication setting
--- MNL DBCust
 /*
	Step:
	---- remove replication setting
	1. Drop all subscriptions of DBCust_bodb_licensee publication
	2. Remove 2 articles LicenseeBAConfig & LicenseeBAHistory out of DBCust_bodb_licensee publication
	3. Drop all subscriptions of DBCust_bodb_licensee_LA publication
	4. drop all articles of DBCust_bodb_licensee_LA publication
	5. drop DBCust_bodb_licensee_LA publication

	---- creating replication setting
	6. Add all articles from old DBCust_bodb_licensee_LA to DBCust_bodb_licensee publication
	7. add all subscriptions
	8. Create new publication DBCust_bodb_licensee_BA
	9. Add 2 articles: LicenseeBAConfig & LicenseeBAHistory
	10. Add all subscriptions
*/

-- Adding the transactional articles

use [bodb_Licensee]
exec sp_addarticle @publication = N'DBCust_bodb_licensee', @article = N'LA_ChargeInfo_MinFee', @source_owner = N'dbo', @source_object = N'LA_ChargeInfo_MinFee', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LA_ChargeInfo_MinFee', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_ChargeInfo_MinFee]', @del_cmd = N'CALL [sp_MSdel_dboLA_ChargeInfo_MinFee]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_ChargeInfo_MinFee]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'DBCust_bodb_licensee', @article = N'LA_ChargeInfo_SystemMapping', @source_owner = N'dbo', @source_object = N'LA_ChargeInfo_SystemMapping', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LA_ChargeInfo_SystemMapping', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_ChargeInfo_SystemMapping]', @del_cmd = N'CALL [sp_MSdel_dboLA_ChargeInfo_SystemMapping]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_ChargeInfo_SystemMapping]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'DBCust_bodb_licensee', @article = N'LA_DiscountGroupAssignment', @source_owner = N'dbo', @source_object = N'LA_DiscountGroupAssignment', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LA_DiscountGroupAssignment', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_DiscountGroupAssignment]', @del_cmd = N'CALL [sp_MSdel_dboLA_DiscountGroupAssignment]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_DiscountGroupAssignment]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'DBCust_bodb_licensee', @article = N'LA_DiscountGroupCurrency', @source_owner = N'dbo', @source_object = N'LA_DiscountGroupCurrency', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LA_DiscountGroupCurrency', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_DiscountGroupCurrency]', @del_cmd = N'CALL [sp_MSdel_dboLA_DiscountGroupCurrency]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_DiscountGroupCurrency]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'DBCust_bodb_licensee', @article = N'LA_DiscountGroupDetail', @source_owner = N'dbo', @source_object = N'LA_DiscountGroupDetail', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LA_DiscountGroupDetail', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_DiscountGroupDetail]', @del_cmd = N'CALL [sp_MSdel_dboLA_DiscountGroupDetail]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_DiscountGroupDetail]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'DBCust_bodb_licensee', @article = N'LA_DiscountGroupHeader', @source_owner = N'dbo', @source_object = N'LA_DiscountGroupHeader', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LA_DiscountGroupHeader', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_DiscountGroupHeader]', @del_cmd = N'CALL [sp_MSdel_dboLA_DiscountGroupHeader]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_DiscountGroupHeader]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'DBCust_bodb_licensee', @article = N'LA_DiscountGroupProduct', @source_owner = N'dbo', @source_object = N'LA_DiscountGroupProduct', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LA_DiscountGroupProduct', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_DiscountGroupProduct]', @del_cmd = N'CALL [sp_MSdel_dboLA_DiscountGroupProduct]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_DiscountGroupProduct]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'DBCust_bodb_licensee', @article = N'LA_Function', @source_owner = N'dbo', @source_object = N'LA_Function', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LA_Function', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_Function]', @del_cmd = N'CALL [sp_MSdel_dboLA_Function]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_Function]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'DBCust_bodb_licensee', @article = N'LA_FunctionParty', @source_owner = N'dbo', @source_object = N'LA_FunctionParty', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LA_FunctionParty', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_FunctionParty]', @del_cmd = N'CALL [sp_MSdel_dboLA_FunctionParty]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_FunctionParty]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'DBCust_bodb_licensee', @article = N'LA_Group', @source_owner = N'dbo', @source_object = N'LA_Group', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LA_Group', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_Group]', @del_cmd = N'CALL [sp_MSdel_dboLA_Group]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_Group]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'DBCust_bodb_licensee', @article = N'LA_GroupFunction', @source_owner = N'dbo', @source_object = N'LA_GroupFunction', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LA_GroupFunction', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_GroupFunction]', @del_cmd = N'CALL [sp_MSdel_dboLA_GroupFunction]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_GroupFunction]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'DBCust_bodb_licensee', @article = N'LA_HostingFees', @source_owner = N'dbo', @source_object = N'LA_HostingFees', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LA_HostingFees', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_HostingFees]', @del_cmd = N'CALL [sp_MSdel_dboLA_HostingFees]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_HostingFees]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'DBCust_bodb_licensee', @article = N'LA_HostingFeesDetail', @source_owner = N'dbo', @source_object = N'LA_HostingFeesDetail', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LA_HostingFeesDetail', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_HostingFeesDetail]', @del_cmd = N'CALL [sp_MSdel_dboLA_HostingFeesDetail]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_HostingFeesDetail]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'DBCust_bodb_licensee', @article = N'LA_HostingFeesSetting', @source_owner = N'dbo', @source_object = N'LA_HostingFeesSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LA_HostingFeesSetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_HostingFeesSetting]', @del_cmd = N'CALL [sp_MSdel_dboLA_HostingFeesSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_HostingFeesSetting]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'DBCust_bodb_licensee', @article = N'LA_InvoiceHeader', @source_owner = N'dbo', @source_object = N'LA_InvoiceHeader', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LA_InvoiceHeader', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'true', @ins_cmd = N'CALL [sp_MSins_dboLA_InvoiceHeader]', @del_cmd = N'CALL [sp_MSdel_dboLA_InvoiceHeader]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_InvoiceHeader]'

-- Adding the article's partition column(s)
exec sp_articlecolumn @publication = N'DBCust_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'InvoiceHeaderId', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBCust_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'BillerId', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBCust_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'PartyId', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBCust_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'RefNo', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBCust_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'CurrencyId', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBCust_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'InvoiceSymbol', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBCust_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'InvoiceNumber', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBCust_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'FromDate', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBCust_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'ToDate', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBCust_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'InvoiceDate', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBCust_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'DueDate', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBCust_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'Amount', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBCust_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'InvoiceType', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBCust_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'StatusId', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBCust_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'Note', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBCust_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'HasSent', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBCust_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'HasDeleted', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBCust_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'CreatedBy', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBCust_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'CreatedDateTime', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBCust_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'UpdatedDateTime', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBCust_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'IsSeparateProduct', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBCust_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'MaxPCU', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBCust_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'RateAmount', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBCust_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'IsWaived', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBCust_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'InvoicePath', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBCust_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'Environment', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBCust_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'UpdatedBy', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBCust_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'OfficialInvoiceNo', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1

-- Adding the article synchronization object
exec sp_articleview @publication = N'DBCust_bodb_licensee', @article = N'LA_InvoiceHeader', @view_name = N'syncobj_LA_InvoiceHeader_20190710', @filter_clause = N'', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'DBCust_bodb_licensee', @article = N'LA_InvoiceSetting', @source_owner = N'dbo', @source_object = N'LA_InvoiceSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LA_InvoiceSetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_InvoiceSetting]', @del_cmd = N'CALL [sp_MSdel_dboLA_InvoiceSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_InvoiceSetting]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'DBCust_bodb_licensee', @article = N'LA_InvoiceStatement', @source_owner = N'dbo', @source_object = N'LA_InvoiceStatement', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LA_InvoiceStatement', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_InvoiceStatement]', @del_cmd = N'CALL [sp_MSdel_dboLA_InvoiceStatement]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_InvoiceStatement]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'DBCust_bodb_licensee', @article = N'LA_InvoiceTemplate', @source_owner = N'dbo', @source_object = N'LA_InvoiceTemplate', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LA_InvoiceTemplate', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_InvoiceTemplate]', @del_cmd = N'CALL [sp_MSdel_dboLA_InvoiceTemplate]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_InvoiceTemplate]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'DBCust_bodb_licensee', @article = N'LA_MinFee', @source_owner = N'dbo', @source_object = N'LA_MinFee', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LA_MinFee', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_MinFee]', @del_cmd = N'CALL [sp_MSdel_dboLA_MinFee]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_MinFee]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'DBCust_bodb_licensee', @article = N'LA_PartyGroup', @source_owner = N'dbo', @source_object = N'LA_PartyGroup', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LA_PartyGroup', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_PartyGroup]', @del_cmd = N'CALL [sp_MSdel_dboLA_PartyGroup]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_PartyGroup]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'DBCust_bodb_licensee', @article = N'LA_PartyGroupAssignment', @source_owner = N'dbo', @source_object = N'LA_PartyGroupAssignment', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LA_PartyGroupAssignment', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_PartyGroupAssignment]', @del_cmd = N'CALL [sp_MSdel_dboLA_PartyGroupAssignment]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_PartyGroupAssignment]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'DBCust_bodb_licensee', @article = N'LA_Product3rdSub', @source_owner = N'dbo', @source_object = N'LA_Product3rdSub', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LA_Product3rdSub', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_Product3rdSub]', @del_cmd = N'CALL [sp_MSdel_dboLA_Product3rdSub]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_Product3rdSub]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'DBCust_bodb_licensee', @article = N'LA_UserFunction', @source_owner = N'dbo', @source_object = N'LA_UserFunction', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LA_UserFunction', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_UserFunction]', @del_cmd = N'CALL [sp_MSdel_dboLA_UserFunction]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_UserFunction]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'DBCust_bodb_licensee', @article = N'LA_UserParty', @source_owner = N'dbo', @source_object = N'LA_UserParty', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LA_UserParty', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_UserParty]', @del_cmd = N'CALL [sp_MSdel_dboLA_UserParty]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_UserParty]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'DBCust_bodb_licensee', @article = N'LA_UserSettings', @source_owner = N'dbo', @source_object = N'LA_UserSettings', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LA_UserSettings', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_UserSettings]', @del_cmd = N'CALL [sp_MSdel_dboLA_UserSettings]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_UserSettings]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'DBCust_bodb_licensee', @article = N'OAS_ChargeInfo', @source_owner = N'dbo', @source_object = N'OAS_ChargeInfo', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'OAS_ChargeInfo', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOAS_ChargeInfo]', @del_cmd = N'CALL [sp_MSdel_dboOAS_ChargeInfo]', @upd_cmd = N'SCALL [sp_MSupd_dboOAS_ChargeInfo]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'DBCust_bodb_licensee', @article = N'OAS_ChargeInfoSub', @source_owner = N'dbo', @source_object = N'OAS_ChargeInfoSub', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'OAS_ChargeInfoSub', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOAS_ChargeInfoSub]', @del_cmd = N'CALL [sp_MSdel_dboOAS_ChargeInfoSub]', @upd_cmd = N'SCALL [sp_MSupd_dboOAS_ChargeInfoSub]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'DBCust_bodb_licensee', @article = N'OAS_Party', @source_owner = N'dbo', @source_object = N'OAS_Party', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'OAS_Party', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOAS_Party]', @del_cmd = N'CALL [sp_MSdel_dboOAS_Party]', @upd_cmd = N'SCALL [sp_MSupd_dboOAS_Party]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'DBCust_bodb_licensee', @article = N'OAS_PartyDetail', @source_owner = N'dbo', @source_object = N'OAS_PartyDetail', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'OAS_PartyDetail', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOAS_PartyDetail]', @del_cmd = N'CALL [sp_MSdel_dboOAS_PartyDetail]', @upd_cmd = N'SCALL [sp_MSupd_dboOAS_PartyDetail]'
GO


-- Adding the transactional subscriptions
use [bodb_Licensee]
exec sp_addsubscription @publication = N'DBCust_bodb_licensee', @subscriber = N'DB052', @destination_db = N'bodb_licensee', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'DBCust_bodb_licensee', @subscriber = N'DB052', @subscriber_db = N'bodb_licensee', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [bodb_Licensee]
exec sp_addsubscription @publication = N'DBCust_bodb_licensee', @subscriber = N'DB053', @destination_db = N'bodb_licensee', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'DBCust_bodb_licensee', @subscriber = N'DB053', @subscriber_db = N'bodb_licensee', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [bodb_Licensee]
exec sp_addsubscription @publication = N'DBCust_bodb_licensee', @subscriber = N'DB06', @destination_db = N'bodb_licensee', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'DBCust_bodb_licensee', @subscriber = N'DB06', @subscriber_db = N'bodb_licensee', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [bodb_Licensee]
exec sp_addsubscription @publication = N'DBCust_bodb_licensee', @subscriber = N'DB062', @destination_db = N'bodb_licensee', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'DBCust_bodb_licensee', @subscriber = N'DB062', @subscriber_db = N'bodb_licensee', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO

-- Adding the transactional publication
use [bodb_Licensee]
exec sp_addpublication @publication = N'DBCust_bodb_licensee_BA', @description = N'Transactional publication of database ''bodb_Licensee'' from Publisher ''DBCUST''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'false', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'DBCust_bodb_licensee_BA', @frequency_type = 1, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1
exec sp_grant_publication_access @publication = N'DBCust_bodb_licensee_BA', @login = N'sa'
GO
exec sp_grant_publication_access @publication = N'DBCust_bodb_licensee_BA', @login = N'NT AUTHORITY\SYSTEM'
GO
exec sp_grant_publication_access @publication = N'DBCust_bodb_licensee_BA', @login = N'NT SERVICE\SQLSERVERAGENT'
GO
exec sp_grant_publication_access @publication = N'DBCust_bodb_licensee_BA', @login = N'NT SERVICE\MSSQLSERVER'
GO
exec sp_grant_publication_access @publication = N'DBCust_bodb_licensee_BA', @login = N'vnLukas'
GO
exec sp_grant_publication_access @publication = N'DBCust_bodb_licensee_BA', @login = N'vnPatrick'
GO
exec sp_grant_publication_access @publication = N'DBCust_bodb_licensee_BA', @login = N'vndaniel'
GO
exec sp_grant_publication_access @publication = N'DBCust_bodb_licensee_BA', @login = N'vnBilly'
GO
exec sp_grant_publication_access @publication = N'DBCust_bodb_licensee_BA', @login = N'vnHelen'
GO
exec sp_grant_publication_access @publication = N'DBCust_bodb_licensee_BA', @login = N'RDAlfie'
GO
exec sp_grant_publication_access @publication = N'DBCust_bodb_licensee_BA', @login = N'vnFrancis'
GO
exec sp_grant_publication_access @publication = N'DBCust_bodb_licensee_BA', @login = N'RDCooper'
GO
exec sp_grant_publication_access @publication = N'DBCust_bodb_licensee_BA', @login = N'RDJames'
GO
exec sp_grant_publication_access @publication = N'DBCust_bodb_licensee_BA', @login = N'RDBenLee'
GO
exec sp_grant_publication_access @publication = N'DBCust_bodb_licensee_BA', @login = N'RDLeon'
GO

-- Adding the transactional articles
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'DBCust_bodb_licensee_BA', @article = N'LicenseeBAConfig', @source_owner = N'dbo', @source_object = N'LicenseeBAConfig', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LicenseeBAConfig', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLicenseeBAConfig]', @del_cmd = N'CALL [sp_MSdel_dboLicenseeBAConfig]', @upd_cmd = N'SCALL [sp_MSupd_dboLicenseeBAConfig]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'DBCust_bodb_licensee_BA', @article = N'LicenseeBAHistory', @source_owner = N'dbo', @source_object = N'LicenseeBAHistory', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LicenseeBAHistory', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLicenseeBAHistory]', @del_cmd = N'CALL [sp_MSdel_dboLicenseeBAHistory]', @upd_cmd = N'SCALL [sp_MSupd_dboLicenseeBAHistory]'
GO


-- Adding the transactional subscriptions
use [bodb_Licensee]
exec sp_addsubscription @publication = N'DBCust_bodb_licensee_BA', @subscriber = N'DB052', @destination_db = N'bodb_licensee', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'DBCust_bodb_licensee_BA', @subscriber = N'DB052', @subscriber_db = N'bodb_licensee', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [bodb_Licensee]
exec sp_addsubscription @publication = N'DBCust_bodb_licensee_BA', @subscriber = N'DB053', @destination_db = N'bodb_licensee', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'DBCust_bodb_licensee_BA', @subscriber = N'DB053', @subscriber_db = N'bodb_licensee', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [bodb_Licensee]
exec sp_addsubscription @publication = N'DBCust_bodb_licensee_BA', @subscriber = N'DB06', @destination_db = N'bodb_licensee', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'DBCust_bodb_licensee_BA', @subscriber = N'DB06', @subscriber_db = N'bodb_licensee', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [bodb_Licensee]
exec sp_addsubscription @publication = N'DBCust_bodb_licensee_BA', @subscriber = N'DB062', @destination_db = N'bodb_licensee', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'DBCust_bodb_licensee_BA', @subscriber = N'DB062', @subscriber_db = N'bodb_licensee', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO



