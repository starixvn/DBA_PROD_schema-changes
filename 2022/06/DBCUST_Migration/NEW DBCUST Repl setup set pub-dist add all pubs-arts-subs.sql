/*
	Task: In UM: Setting publisher DBCUST: Config DBDIST03N as distributor, enable publishing databases & add all publications-articles-subscribers
	Run at publisher server @ DBCUST (NEW)
	** ATTENTION!! Need replace xxx to sub sa's password; replace yyy to repl_sql's password (log reader agent use this acc to connect pub DBCUST)
*/  


--- Config distributor
use master
exec sp_adddistributor @distributor = N'DBDIST03N', @password = xxx
GO

-- Enabling the replication database
use master
exec sp_replicationdboption @dbname = N'bodb_Licensee', @optname = N'publish', @value = N'true'
GO

exec [bodb_Licensee].sys.sp_addlogreader_agent @job_login = null, @job_password = null, @publisher_security_mode = 0, @publisher_login = N'repl_sql', @publisher_password = yyy
GO
exec [bodb_Licensee].sys.sp_addqreader_agent @job_login = null, @job_password = null, @frompublisher = 1
GO
-- Adding the transactional publication
use [bodb_Licensee]
exec sp_addpublication @publication = N'Cusdb_bodb_licensee', @description = N'Transactional publication of database ''bodb_Licensee'' from Publisher ''DBCUST''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'false', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'Cusdb_bodb_licensee', @frequency_type = 1, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1
exec sp_grant_publication_access @publication = N'Cusdb_bodb_licensee', @login = N'sa'
GO

-- Adding the transactional articles
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'Country', @source_owner = N'dbo', @source_object = N'Country', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Country', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCountry]', @del_cmd = N'CALL [sp_MSdel_dboCountry]', @upd_cmd = N'SCALL [sp_MSupd_dboCountry]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'CurrencyUser', @source_owner = N'dbo', @source_object = N'CurrencyUser', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CurrencyUser', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCurrencyUser]', @del_cmd = N'CALL [sp_MSdel_dboCurrencyUser]', @upd_cmd = N'SCALL [sp_MSupd_dboCurrencyUser]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'f_CheckRepTable', @source_owner = N'dbo', @source_object = N'f_CheckRepTable', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CheckRepTable', @destination_owner = N'dbo', @status = 16
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'Functions', @source_owner = N'dbo', @source_object = N'Functions', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'Functions', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboFunctions]', @del_cmd = N'CALL [sp_MSdel_dboFunctions]', @upd_cmd = N'SCALL [sp_MSupd_dboFunctions]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_ChargeInfo_MinFee', @source_owner = N'dbo', @source_object = N'LA_ChargeInfo_MinFee', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LA_ChargeInfo_MinFee', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_ChargeInfo_MinFee]', @del_cmd = N'CALL [sp_MSdel_dboLA_ChargeInfo_MinFee]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_ChargeInfo_MinFee]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_ChargeInfo_SystemMapping', @source_owner = N'dbo', @source_object = N'LA_ChargeInfo_SystemMapping', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LA_ChargeInfo_SystemMapping', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_ChargeInfo_SystemMapping]', @del_cmd = N'CALL [sp_MSdel_dboLA_ChargeInfo_SystemMapping]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_ChargeInfo_SystemMapping]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_ChargeRateByCurrency', @source_owner = N'dbo', @source_object = N'LA_ChargeRateByCurrency', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LA_ChargeRateByCurrency', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_ChargeRateByCurrency]', @del_cmd = N'CALL [sp_MSdel_dboLA_ChargeRateByCurrency]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_ChargeRateByCurrency]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_DiscountGroupAssignment', @source_owner = N'dbo', @source_object = N'LA_DiscountGroupAssignment', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LA_DiscountGroupAssignment', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_DiscountGroupAssignment]', @del_cmd = N'CALL [sp_MSdel_dboLA_DiscountGroupAssignment]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_DiscountGroupAssignment]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_DiscountGroupCurrency', @source_owner = N'dbo', @source_object = N'LA_DiscountGroupCurrency', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LA_DiscountGroupCurrency', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_DiscountGroupCurrency]', @del_cmd = N'CALL [sp_MSdel_dboLA_DiscountGroupCurrency]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_DiscountGroupCurrency]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_DiscountGroupDetail', @source_owner = N'dbo', @source_object = N'LA_DiscountGroupDetail', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LA_DiscountGroupDetail', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_DiscountGroupDetail]', @del_cmd = N'CALL [sp_MSdel_dboLA_DiscountGroupDetail]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_DiscountGroupDetail]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_DiscountGroupHeader', @source_owner = N'dbo', @source_object = N'LA_DiscountGroupHeader', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LA_DiscountGroupHeader', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_DiscountGroupHeader]', @del_cmd = N'CALL [sp_MSdel_dboLA_DiscountGroupHeader]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_DiscountGroupHeader]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_DiscountGroupProduct', @source_owner = N'dbo', @source_object = N'LA_DiscountGroupProduct', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LA_DiscountGroupProduct', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_DiscountGroupProduct]', @del_cmd = N'CALL [sp_MSdel_dboLA_DiscountGroupProduct]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_DiscountGroupProduct]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_Function', @source_owner = N'dbo', @source_object = N'LA_Function', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LA_Function', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_Function]', @del_cmd = N'CALL [sp_MSdel_dboLA_Function]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_Function]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_FunctionParty', @source_owner = N'dbo', @source_object = N'LA_FunctionParty', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LA_FunctionParty', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_FunctionParty]', @del_cmd = N'CALL [sp_MSdel_dboLA_FunctionParty]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_FunctionParty]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_Group', @source_owner = N'dbo', @source_object = N'LA_Group', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LA_Group', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_Group]', @del_cmd = N'CALL [sp_MSdel_dboLA_Group]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_Group]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_GroupFunction', @source_owner = N'dbo', @source_object = N'LA_GroupFunction', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LA_GroupFunction', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_GroupFunction]', @del_cmd = N'CALL [sp_MSdel_dboLA_GroupFunction]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_GroupFunction]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_GroupMinFeeAssignment', @source_owner = N'dbo', @source_object = N'LA_GroupMinFeeAssignment', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LA_GroupMinFeeAssignment', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_GroupMinFeeAssignment]', @del_cmd = N'CALL [sp_MSdel_dboLA_GroupMinFeeAssignment]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_GroupMinFeeAssignment]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_GroupMinFeeDetail', @source_owner = N'dbo', @source_object = N'LA_GroupMinFeeDetail', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LA_GroupMinFeeDetail', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_GroupMinFeeDetail]', @del_cmd = N'CALL [sp_MSdel_dboLA_GroupMinFeeDetail]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_GroupMinFeeDetail]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_GroupMinFeeHeader', @source_owner = N'dbo', @source_object = N'LA_GroupMinFeeHeader', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LA_GroupMinFeeHeader', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_GroupMinFeeHeader]', @del_cmd = N'CALL [sp_MSdel_dboLA_GroupMinFeeHeader]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_GroupMinFeeHeader]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_HostingFees', @source_owner = N'dbo', @source_object = N'LA_HostingFees', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LA_HostingFees', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_HostingFees]', @del_cmd = N'CALL [sp_MSdel_dboLA_HostingFees]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_HostingFees]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_HostingFeesDetail', @source_owner = N'dbo', @source_object = N'LA_HostingFeesDetail', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LA_HostingFeesDetail', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_HostingFeesDetail]', @del_cmd = N'CALL [sp_MSdel_dboLA_HostingFeesDetail]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_HostingFeesDetail]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_HostingFeesSetting', @source_owner = N'dbo', @source_object = N'LA_HostingFeesSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LA_HostingFeesSetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_HostingFeesSetting]', @del_cmd = N'CALL [sp_MSdel_dboLA_HostingFeesSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_HostingFeesSetting]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_InvoiceHeader', @source_owner = N'dbo', @source_object = N'LA_InvoiceHeader', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LA_InvoiceHeader', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'true', @ins_cmd = N'CALL [sp_MSins_dboLA_InvoiceHeader]', @del_cmd = N'CALL [sp_MSdel_dboLA_InvoiceHeader]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_InvoiceHeader]'

-- Adding the article's partition column(s)
exec sp_articlecolumn @publication = N'Cusdb_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'InvoiceHeaderId', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'Cusdb_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'BillerId', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'Cusdb_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'PartyId', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'Cusdb_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'RefNo', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'Cusdb_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'CurrencyId', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'Cusdb_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'InvoiceSymbol', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'Cusdb_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'InvoiceNumber', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'Cusdb_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'FromDate', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'Cusdb_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'ToDate', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'Cusdb_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'InvoiceDate', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'Cusdb_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'DueDate', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'Cusdb_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'Amount', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'Cusdb_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'InvoiceType', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'Cusdb_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'StatusId', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'Cusdb_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'Note', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'Cusdb_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'HasSent', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'Cusdb_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'HasDeleted', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'Cusdb_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'CreatedBy', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'Cusdb_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'CreatedDateTime', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'Cusdb_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'UpdatedDateTime', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'Cusdb_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'IsSeparateProduct', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'Cusdb_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'MaxPCU', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'Cusdb_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'RateAmount', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'Cusdb_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'IsWaived', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'Cusdb_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'InvoicePath', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'Cusdb_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'Environment', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'Cusdb_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'UpdatedBy', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'Cusdb_bodb_licensee', @article = N'LA_InvoiceHeader', @column = N'OfficialInvoiceNo', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1

-- Adding the article synchronization object
exec sp_articleview @publication = N'Cusdb_bodb_licensee', @article = N'LA_InvoiceHeader', @view_name = N'syncobj_LA_InvoiceHeader_20190625', @filter_clause = N'', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_InvoiceSetting', @source_owner = N'dbo', @source_object = N'LA_InvoiceSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LA_InvoiceSetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_InvoiceSetting]', @del_cmd = N'CALL [sp_MSdel_dboLA_InvoiceSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_InvoiceSetting]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_InvoiceStatement', @source_owner = N'dbo', @source_object = N'LA_InvoiceStatement', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LA_InvoiceStatement', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_InvoiceStatement]', @del_cmd = N'CALL [sp_MSdel_dboLA_InvoiceStatement]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_InvoiceStatement]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_InvoiceTemplate', @source_owner = N'dbo', @source_object = N'LA_InvoiceTemplate', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LA_InvoiceTemplate', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_InvoiceTemplate]', @del_cmd = N'CALL [sp_MSdel_dboLA_InvoiceTemplate]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_InvoiceTemplate]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_MinFee', @source_owner = N'dbo', @source_object = N'LA_MinFee', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LA_MinFee', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_MinFee]', @del_cmd = N'CALL [sp_MSdel_dboLA_MinFee]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_MinFee]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_PartyGroup', @source_owner = N'dbo', @source_object = N'LA_PartyGroup', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LA_PartyGroup', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_PartyGroup]', @del_cmd = N'CALL [sp_MSdel_dboLA_PartyGroup]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_PartyGroup]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_PartyGroupAssignment', @source_owner = N'dbo', @source_object = N'LA_PartyGroupAssignment', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LA_PartyGroupAssignment', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_PartyGroupAssignment]', @del_cmd = N'CALL [sp_MSdel_dboLA_PartyGroupAssignment]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_PartyGroupAssignment]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_Product3rdSub', @source_owner = N'dbo', @source_object = N'LA_Product3rdSub', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LA_Product3rdSub', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_Product3rdSub]', @del_cmd = N'CALL [sp_MSdel_dboLA_Product3rdSub]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_Product3rdSub]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_UserFunction', @source_owner = N'dbo', @source_object = N'LA_UserFunction', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LA_UserFunction', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_UserFunction]', @del_cmd = N'CALL [sp_MSdel_dboLA_UserFunction]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_UserFunction]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_UserParty', @source_owner = N'dbo', @source_object = N'LA_UserParty', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LA_UserParty', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_UserParty]', @del_cmd = N'CALL [sp_MSdel_dboLA_UserParty]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_UserParty]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LA_UserSettings', @source_owner = N'dbo', @source_object = N'LA_UserSettings', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LA_UserSettings', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_UserSettings]', @del_cmd = N'CALL [sp_MSdel_dboLA_UserSettings]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_UserSettings]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'Labels', @source_owner = N'dbo', @source_object = N'Labels', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Labels', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLabels]', @del_cmd = N'CALL [sp_MSdel_dboLabels]', @upd_cmd = N'SCALL [sp_MSupd_dboLabels]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeCurrencyBAGroup', @source_owner = N'dbo', @source_object = N'LicenseeCurrencyBAGroup', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LicenseeCurrencyBAGroup', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLicenseeCurrencyBAGroup]', @del_cmd = N'CALL [sp_MSdel_dboLicenseeCurrencyBAGroup]', @upd_cmd = N'SCALL [sp_MSupd_dboLicenseeCurrencyBAGroup]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeCust', @source_owner = N'dbo', @source_object = N'LicenseeCust', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LicenseeCust', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLicenseeCust]', @del_cmd = N'CALL [sp_MSdel_dboLicenseeCust]', @upd_cmd = N'SCALL [sp_MSupd_dboLicenseeCust]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeCustComm', @source_owner = N'dbo', @source_object = N'LicenseeCustComm', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LicenseeCustComm', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLicenseeCustComm]', @del_cmd = N'CALL [sp_MSdel_dboLicenseeCustComm]', @upd_cmd = N'SCALL [sp_MSupd_dboLicenseeCustComm]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeCustComm_History', @source_owner = N'dbo', @source_object = N'LicenseeCustComm_History', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LicenseeCustComm_History', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLicenseeCustComm_History]', @del_cmd = N'CALL [sp_MSdel_dboLicenseeCustComm_History]', @upd_cmd = N'SCALL [sp_MSupd_dboLicenseeCustComm_History]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeFunctions', @source_owner = N'dbo', @source_object = N'LicenseeFunctions', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LicenseeFunctions', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLicenseeFunctions]', @del_cmd = N'CALL [sp_MSdel_dboLicenseeFunctions]', @upd_cmd = N'SCALL [sp_MSupd_dboLicenseeFunctions]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeGroupComm', @source_owner = N'dbo', @source_object = N'LicenseeGroupComm', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LicenseeGroupComm', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLicenseeGroupComm]', @del_cmd = N'CALL [sp_MSdel_dboLicenseeGroupComm]', @upd_cmd = N'SCALL [sp_MSupd_dboLicenseeGroupComm]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeMultiCurrencyConfig', @source_owner = N'dbo', @source_object = N'LicenseeMultiCurrencyConfig', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LicenseeMultiCurrencyConfig', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLicenseeMultiCurrencyConfig]', @del_cmd = N'CALL [sp_MSdel_dboLicenseeMultiCurrencyConfig]', @upd_cmd = N'SCALL [sp_MSupd_dboLicenseeMultiCurrencyConfig]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeProduct3rd', @source_owner = N'dbo', @source_object = N'LicenseeProduct3rd', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LicenseeProduct3rd', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLicenseeProduct3rd]', @del_cmd = N'CALL [sp_MSdel_dboLicenseeProduct3rd]', @upd_cmd = N'SCALL [sp_MSupd_dboLicenseeProduct3rd]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeReseller', @source_owner = N'dbo', @source_object = N'LicenseeReseller', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LicenseeReseller', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLicenseeReseller]', @del_cmd = N'CALL [sp_MSdel_dboLicenseeReseller]', @upd_cmd = N'SCALL [sp_MSupd_dboLicenseeReseller]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'Licensees', @source_owner = N'dbo', @source_object = N'Licensees', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Licensees', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLicensees]', @del_cmd = N'CALL [sp_MSdel_dboLicensees]', @upd_cmd = N'SCALL [sp_MSupd_dboLicensees]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeSourcedSetting', @source_owner = N'dbo', @source_object = N'LicenseeSourcedSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LicenseeSourcedSetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLicenseeSourcedSetting]', @del_cmd = N'CALL [sp_MSdel_dboLicenseeSourcedSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboLicenseeSourcedSetting]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeSpecialCust', @source_owner = N'dbo', @source_object = N'LicenseeSpecialCust', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LicenseeSpecialCust', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLicenseeSpecialCust]', @del_cmd = N'CALL [sp_MSdel_dboLicenseeSpecialCust]', @upd_cmd = N'SCALL [sp_MSupd_dboLicenseeSpecialCust]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeUser', @source_owner = N'dbo', @source_object = N'LicenseeUser', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LicenseeUser', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLicenseeUser]', @del_cmd = N'CALL [sp_MSdel_dboLicenseeUser]', @upd_cmd = N'SCALL [sp_MSupd_dboLicenseeUser]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LicenseeUserFunctions', @source_owner = N'dbo', @source_object = N'LicenseeUserFunctions', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LicenseeUserFunctions', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLicenseeUserFunctions]', @del_cmd = N'CALL [sp_MSdel_dboLicenseeUserFunctions]', @upd_cmd = N'SCALL [sp_MSupd_dboLicenseeUserFunctions]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'Lrf_ExecRep_00', @source_owner = N'dbo', @source_object = N'Lrf_ExecRep_00', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Lrf_ExecRep_00', @destination_owner = N'dbo', @status = 0
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'Lrf_ExecRep_01', @source_owner = N'dbo', @source_object = N'Lrf_ExecRep_01', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Lrf_ExecRep_01', @destination_owner = N'dbo', @status = 0
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'Lrf_ExecRep_02', @source_owner = N'dbo', @source_object = N'Lrf_ExecRep_02', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Lrf_ExecRep_02', @destination_owner = N'dbo', @status = 0
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'Lrf_ExecRep_03', @source_owner = N'dbo', @source_object = N'Lrf_ExecRep_03', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Lrf_ExecRep_03', @destination_owner = N'dbo', @status = 0
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'Lrf_ExecRep_04', @source_owner = N'dbo', @source_object = N'Lrf_ExecRep_04', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Lrf_ExecRep_04', @destination_owner = N'dbo', @status = 0
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'Lrf_ExecRep_05', @source_owner = N'dbo', @source_object = N'Lrf_ExecRep_05', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Lrf_ExecRep_05', @destination_owner = N'dbo', @status = 0
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'Lrf_ExecRep_06', @source_owner = N'dbo', @source_object = N'Lrf_ExecRep_06', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Lrf_ExecRep_06', @destination_owner = N'dbo', @status = 0
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'Lrf_ExecRep_07', @source_owner = N'dbo', @source_object = N'Lrf_ExecRep_07', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Lrf_ExecRep_07', @destination_owner = N'dbo', @status = 0
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'Lrf_ExecRep_08', @source_owner = N'dbo', @source_object = N'Lrf_ExecRep_08', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Lrf_ExecRep_08', @destination_owner = N'dbo', @status = 0
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'Lrf_ExecRep_09', @source_owner = N'dbo', @source_object = N'Lrf_ExecRep_09', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Lrf_ExecRep_09', @destination_owner = N'dbo', @status = 0
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'LrfDomain', @source_owner = N'dbo', @source_object = N'LrfDomain', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LrfDomain', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLrfDomain]', @del_cmd = N'CALL [sp_MSdel_dboLrfDomain]', @upd_cmd = N'SCALL [sp_MSupd_dboLrfDomain]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'OAS_ChargeInfo', @source_owner = N'dbo', @source_object = N'OAS_ChargeInfo', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'OAS_ChargeInfo', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOAS_ChargeInfo]', @del_cmd = N'CALL [sp_MSdel_dboOAS_ChargeInfo]', @upd_cmd = N'SCALL [sp_MSupd_dboOAS_ChargeInfo]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'OAS_ChargeInfoSub', @source_owner = N'dbo', @source_object = N'OAS_ChargeInfoSub', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'OAS_ChargeInfoSub', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOAS_ChargeInfoSub]', @del_cmd = N'CALL [sp_MSdel_dboOAS_ChargeInfoSub]', @upd_cmd = N'SCALL [sp_MSupd_dboOAS_ChargeInfoSub]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'OAS_Party', @source_owner = N'dbo', @source_object = N'OAS_Party', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'OAS_Party', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOAS_Party]', @del_cmd = N'CALL [sp_MSdel_dboOAS_Party]', @upd_cmd = N'SCALL [sp_MSupd_dboOAS_Party]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'OAS_PartyBaseCurrency', @source_owner = N'dbo', @source_object = N'OAS_PartyBaseCurrency', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'OAS_PartyBaseCurrency', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOAS_PartyBaseCurrency]', @del_cmd = N'CALL [sp_MSdel_dboOAS_PartyBaseCurrency]', @upd_cmd = N'SCALL [sp_MSupd_dboOAS_PartyBaseCurrency]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'OAS_PartyDetail', @source_owner = N'dbo', @source_object = N'OAS_PartyDetail', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'OAS_PartyDetail', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOAS_PartyDetail]', @del_cmd = N'CALL [sp_MSdel_dboOAS_PartyDetail]', @upd_cmd = N'SCALL [sp_MSupd_dboOAS_PartyDetail]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'On_User', @source_owner = N'dbo', @source_object = N'On_User', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'On_User', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOn_User]', @del_cmd = N'CALL [sp_MSdel_dboOn_User]', @upd_cmd = N'SCALL [sp_MSupd_dboOn_User]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'Product3rd', @source_owner = N'dbo', @source_object = N'Product3rd', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Product3rd', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProduct3rd]', @del_cmd = N'CALL [sp_MSdel_dboProduct3rd]', @upd_cmd = N'SCALL [sp_MSupd_dboProduct3rd]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'Resellers', @source_owner = N'dbo', @source_object = N'Resellers', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'Resellers', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboResellers]', @del_cmd = N'CALL [sp_MSdel_dboResellers]', @upd_cmd = N'SCALL [sp_MSupd_dboResellers]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'Sport_Bettype_Reference', @source_owner = N'dbo', @source_object = N'Sport_Bettype_Reference', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Sport_Bettype_Reference', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSport_Bettype_Reference]', @del_cmd = N'CALL [sp_MSdel_dboSport_Bettype_Reference]', @upd_cmd = N'SCALL [sp_MSupd_dboSport_Bettype_Reference]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'SystemLicensee', @source_owner = N'dbo', @source_object = N'SystemLicensee', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'SystemLicensee', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSystemLicensee]', @del_cmd = N'CALL [sp_MSdel_dboSystemLicensee]', @upd_cmd = N'SCALL [sp_MSupd_dboSystemLicensee]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'Systems', @source_owner = N'dbo', @source_object = N'Systems', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'Systems', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSystems]', @del_cmd = N'CALL [sp_MSdel_dboSystems]', @upd_cmd = N'SCALL [sp_MSupd_dboSystems]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'Cusdb_bodb_licensee', @article = N'Users', @source_owner = N'dbo', @source_object = N'Users', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'Users', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboUsers]', @del_cmd = N'CALL [sp_MSdel_dboUsers]', @upd_cmd = N'SCALL [sp_MSupd_dboUsers]'
GO

-- Adding the transactional subscriptions
use [bodb_Licensee]
exec sp_addsubscription @publication = N'Cusdb_bodb_licensee', @subscriber = N'DB052', @destination_db = N'bodb_licensee', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'Cusdb_bodb_licensee', @subscriber = N'DB052', @subscriber_db = N'bodb_licensee', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [bodb_Licensee]
exec sp_addsubscription @publication = N'Cusdb_bodb_licensee', @subscriber = N'DB053', @destination_db = N'bodb_licensee', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'Cusdb_bodb_licensee', @subscriber = N'DB053', @subscriber_db = N'bodb_licensee', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [bodb_Licensee]
exec sp_addsubscription @publication = N'Cusdb_bodb_licensee', @subscriber = N'DB054', @destination_db = N'bodb_licensee', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'Cusdb_bodb_licensee', @subscriber = N'DB054', @subscriber_db = N'bodb_licensee', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [bodb_Licensee]
exec sp_addsubscription @publication = N'Cusdb_bodb_licensee', @subscriber = N'DB055', @destination_db = N'bodb_licensee', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'Cusdb_bodb_licensee', @subscriber = N'DB055', @subscriber_db = N'bodb_licensee', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [bodb_Licensee]
exec sp_addsubscription @publication = N'Cusdb_bodb_licensee', @subscriber = N'DB061', @destination_db = N'bodb_licensee', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'Cusdb_bodb_licensee', @subscriber = N'DB061', @subscriber_db = N'bodb_licensee', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [bodb_Licensee]
exec sp_addsubscription @publication = N'Cusdb_bodb_licensee', @subscriber = N'DB062', @destination_db = N'bodb_licensee', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'Cusdb_bodb_licensee', @subscriber = N'DB062', @subscriber_db = N'bodb_licensee', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [bodb_Licensee]
exec sp_addsubscription @publication = N'Cusdb_bodb_licensee', @subscriber = N'DBTP10C', @destination_db = N'bodb_licensee', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'Cusdb_bodb_licensee', @subscriber = N'DBTP10C', @subscriber_db = N'bodb_licensee', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO

-- Adding the transactional publication
use [bodb_Licensee]
exec sp_addpublication @publication = N'CustDB_bodb_Licensee_BA', @description = N'Transactional publication of database ''bodb_Licensee'' from Publisher ''DBCUST''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'false', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'CustDB_bodb_Licensee_BA', @frequency_type = 1, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1
exec sp_grant_publication_access @publication = N'CustDB_bodb_Licensee_BA', @login = N'sa'
GO

-- Adding the transactional articles
use [bodb_Licensee]
exec sp_addarticle @publication = N'CustDB_bodb_Licensee_BA', @article = N'LicenseeBAConfig', @source_owner = N'dbo', @source_object = N'LicenseeBAConfig', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LicenseeBAConfig', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLicenseeBAConfig]', @del_cmd = N'CALL [sp_MSdel_dboLicenseeBAConfig]', @upd_cmd = N'SCALL [sp_MSupd_dboLicenseeBAConfig]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'CustDB_bodb_Licensee_BA', @article = N'LicenseeBAHistory', @source_owner = N'dbo', @source_object = N'LicenseeBAHistory', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LicenseeBAHistory', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'true', @ins_cmd = N'CALL [sp_MSins_dboLicenseeBAHistory]', @del_cmd = N'CALL [sp_MSdel_dboLicenseeBAHistory]', @upd_cmd = N'SCALL [sp_MSupd_dboLicenseeBAHistory]'

-- Adding the article's partition column(s)
exec sp_articlecolumn @publication = N'CustDB_bodb_Licensee_BA', @article = N'LicenseeBAHistory', @column = N'ID', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_bodb_Licensee_BA', @article = N'LicenseeBAHistory', @column = N'LicenseeID', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_bodb_Licensee_BA', @article = N'LicenseeBAHistory', @column = N'CustID', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_bodb_Licensee_BA', @article = N'LicenseeBAHistory', @column = N'OnDate', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_bodb_Licensee_BA', @article = N'LicenseeBAHistory', @column = N'OffDate', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_bodb_Licensee_BA', @article = N'LicenseeBAHistory', @column = N'OnBy', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_bodb_Licensee_BA', @article = N'LicenseeBAHistory', @column = N'OffBy', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_bodb_Licensee_BA', @article = N'LicenseeBAHistory', @column = N'GroupComm', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_bodb_Licensee_BA', @article = N'LicenseeBAHistory', @column = N'1x2Comm', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_bodb_Licensee_BA', @article = N'LicenseeBAHistory', @column = N'OtherComm', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_bodb_Licensee_BA', @article = N'LicenseeBAHistory', @column = N'Status', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_bodb_Licensee_BA', @article = N'LicenseeBAHistory', @column = N'Ugroup', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_bodb_Licensee_BA', @article = N'LicenseeBAHistory', @column = N'tstamp', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1

-- Adding the article synchronization object
exec sp_articleview @publication = N'CustDB_bodb_Licensee_BA', @article = N'LicenseeBAHistory', @view_name = N'syncobj_0x3435393636323837', @filter_clause = N'', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
GO

-- Adding the transactional subscriptions
use [bodb_Licensee]
exec sp_addsubscription @publication = N'CustDB_bodb_Licensee_BA', @subscriber = N'DB052', @destination_db = N'bodb_licensee', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_bodb_Licensee_BA', @subscriber = N'DB052', @subscriber_db = N'bodb_licensee', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [bodb_Licensee]
exec sp_addsubscription @publication = N'CustDB_bodb_Licensee_BA', @subscriber = N'DB053', @destination_db = N'bodb_licensee', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_bodb_Licensee_BA', @subscriber = N'DB053', @subscriber_db = N'bodb_licensee', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [bodb_Licensee]
exec sp_addsubscription @publication = N'CustDB_bodb_Licensee_BA', @subscriber = N'DB054', @destination_db = N'bodb_licensee', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_bodb_Licensee_BA', @subscriber = N'DB054', @subscriber_db = N'bodb_licensee', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [bodb_Licensee]
exec sp_addsubscription @publication = N'CustDB_bodb_Licensee_BA', @subscriber = N'DB055', @destination_db = N'bodb_licensee', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_bodb_Licensee_BA', @subscriber = N'DB055', @subscriber_db = N'bodb_licensee', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [bodb_Licensee]
exec sp_addsubscription @publication = N'CustDB_bodb_Licensee_BA', @subscriber = N'DB061', @destination_db = N'bodb_licensee', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_bodb_Licensee_BA', @subscriber = N'DB061', @subscriber_db = N'bodb_licensee', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [bodb_Licensee]
exec sp_addsubscription @publication = N'CustDB_bodb_Licensee_BA', @subscriber = N'DB062', @destination_db = N'bodb_licensee', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_bodb_Licensee_BA', @subscriber = N'DB062', @subscriber_db = N'bodb_licensee', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [bodb_Licensee]
exec sp_addsubscription @publication = N'CustDB_bodb_Licensee_BA', @subscriber = N'DBTP10C', @destination_db = N'bodb_licensee', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_bodb_Licensee_BA', @subscriber = N'DBTP10C', @subscriber_db = N'bodb_licensee', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO

-- Adding the transactional publication
use [bodb_Licensee]
exec sp_addpublication @publication = N'CustDB_bodb_licensee_DR_Sync', @description = N'Transactional publication of database ''bodb_Licensee'' from Publisher ''DBCUST''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'false', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'CustDB_bodb_licensee_DR_Sync', @frequency_type = 1, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1
exec sp_grant_publication_access @publication = N'CustDB_bodb_licensee_DR_Sync', @login = N'sa'
GO
exec sp_grant_publication_access @publication = N'CustDB_bodb_licensee_DR_Sync', @login = N'NT AUTHORITY\SYSTEM'
GO
exec sp_grant_publication_access @publication = N'CustDB_bodb_licensee_DR_Sync', @login = N'ONEWORKS\RDVivi'
GO
exec sp_grant_publication_access @publication = N'CustDB_bodb_licensee_DR_Sync', @login = N'ONEWORKS\Viet'
GO
exec sp_grant_publication_access @publication = N'CustDB_bodb_licensee_DR_Sync', @login = N'ONEWORKS\sasrp'
GO
exec sp_grant_publication_access @publication = N'CustDB_bodb_licensee_DR_Sync', @login = N'ONEWORKS\RDCooper'
GO
exec sp_grant_publication_access @publication = N'CustDB_bodb_licensee_DR_Sync', @login = N'ONEWORKS\sqladmin'
GO
exec sp_grant_publication_access @publication = N'CustDB_bodb_licensee_DR_Sync', @login = N'NT SERVICE\SQLSERVERAGENT'
GO
exec sp_grant_publication_access @publication = N'CustDB_bodb_licensee_DR_Sync', @login = N'NT SERVICE\MSSQLSERVER'
GO
exec sp_grant_publication_access @publication = N'CustDB_bodb_licensee_DR_Sync', @login = N'vnLukas'
GO
exec sp_grant_publication_access @publication = N'CustDB_bodb_licensee_DR_Sync', @login = N'RDVivi'
GO
exec sp_grant_publication_access @publication = N'CustDB_bodb_licensee_DR_Sync', @login = N'RDCooper'
GO
exec sp_grant_publication_access @publication = N'CustDB_bodb_licensee_DR_Sync', @login = N'vnJoe'
GO
exec sp_grant_publication_access @publication = N'CustDB_bodb_licensee_DR_Sync', @login = N'Viet'
GO

-- Adding the transactional articles
use [bodb_Licensee]
exec sp_addarticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'Aff_FunctionInfo', @source_owner = N'dbo', @source_object = N'Aff_FunctionInfo', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'Aff_FunctionInfo', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAff_FunctionInfo]', @del_cmd = N'CALL [sp_MSdel_dboAff_FunctionInfo]', @upd_cmd = N'SCALL [sp_MSupd_dboAff_FunctionInfo]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'Aff_GroupInfo', @source_owner = N'dbo', @source_object = N'Aff_GroupInfo', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'Aff_GroupInfo', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAff_GroupInfo]', @del_cmd = N'CALL [sp_MSdel_dboAff_GroupInfo]', @upd_cmd = N'SCALL [sp_MSupd_dboAff_GroupInfo]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'Aff_GroupPolicy', @source_owner = N'dbo', @source_object = N'Aff_GroupPolicy', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Aff_GroupPolicy', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAff_GroupPolicy]', @del_cmd = N'CALL [sp_MSdel_dboAff_GroupPolicy]', @upd_cmd = N'SCALL [sp_MSupd_dboAff_GroupPolicy]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'Aff_LicenseeFunction', @source_owner = N'dbo', @source_object = N'Aff_LicenseeFunction', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Aff_LicenseeFunction', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAff_LicenseeFunction]', @del_cmd = N'CALL [sp_MSdel_dboAff_LicenseeFunction]', @upd_cmd = N'SCALL [sp_MSupd_dboAff_LicenseeFunction]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'Aff_LicenseeInfo', @source_owner = N'dbo', @source_object = N'Aff_LicenseeInfo', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Aff_LicenseeInfo', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAff_LicenseeInfo]', @del_cmd = N'CALL [sp_MSdel_dboAff_LicenseeInfo]', @upd_cmd = N'SCALL [sp_MSupd_dboAff_LicenseeInfo]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'Aff_LicenseeUser', @source_owner = N'dbo', @source_object = N'Aff_LicenseeUser', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Aff_LicenseeUser', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAff_LicenseeUser]', @del_cmd = N'CALL [sp_MSdel_dboAff_LicenseeUser]', @upd_cmd = N'SCALL [sp_MSupd_dboAff_LicenseeUser]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'Aff_UserPolicy', @source_owner = N'dbo', @source_object = N'Aff_UserPolicy', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Aff_UserPolicy', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAff_UserPolicy]', @del_cmd = N'CALL [sp_MSdel_dboAff_UserPolicy]', @upd_cmd = N'SCALL [sp_MSupd_dboAff_UserPolicy]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_AnalysisFile', @source_owner = N'dbo', @source_object = N'LA_AnalysisFile', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LA_AnalysisFile', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_AnalysisFile]', @del_cmd = N'CALL [sp_MSdel_dboLA_AnalysisFile]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_AnalysisFile]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_BankInfo', @source_owner = N'dbo', @source_object = N'LA_BankInfo', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LA_BankInfo', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_BankInfo]', @del_cmd = N'CALL [sp_MSdel_dboLA_BankInfo]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_BankInfo]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_BillerInfo', @source_owner = N'dbo', @source_object = N'LA_BillerInfo', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LA_BillerInfo', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_BillerInfo]', @del_cmd = N'CALL [sp_MSdel_dboLA_BillerInfo]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_BillerInfo]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_CombinedGroup', @source_owner = N'dbo', @source_object = N'LA_CombinedGroup', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LA_CombinedGroup', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_CombinedGroup]', @del_cmd = N'CALL [sp_MSdel_dboLA_CombinedGroup]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_CombinedGroup]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_CombinedGroupAssignment', @source_owner = N'dbo', @source_object = N'LA_CombinedGroupAssignment', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LA_CombinedGroupAssignment', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_CombinedGroupAssignment]', @del_cmd = N'CALL [sp_MSdel_dboLA_CombinedGroupAssignment]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_CombinedGroupAssignment]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_HostingFeesTypes', @source_owner = N'dbo', @source_object = N'LA_HostingFeesTypes', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LA_HostingFeesTypes', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_HostingFeesTypes]', @del_cmd = N'CALL [sp_MSdel_dboLA_HostingFeesTypes]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_HostingFeesTypes]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_InvoiceDetail', @source_owner = N'dbo', @source_object = N'LA_InvoiceDetail', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LA_InvoiceDetail', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_InvoiceDetail]', @del_cmd = N'CALL [sp_MSdel_dboLA_InvoiceDetail]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_InvoiceDetail]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_InvoiceFile', @source_owner = N'dbo', @source_object = N'LA_InvoiceFile', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LA_InvoiceFile', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_InvoiceFile]', @del_cmd = N'CALL [sp_MSdel_dboLA_InvoiceFile]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_InvoiceFile]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_InvoiceItemType', @source_owner = N'dbo', @source_object = N'LA_InvoiceItemType', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LA_InvoiceItemType', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_InvoiceItemType]', @del_cmd = N'CALL [sp_MSdel_dboLA_InvoiceItemType]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_InvoiceItemType]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_InvoiceType', @source_owner = N'dbo', @source_object = N'LA_InvoiceType', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LA_InvoiceType', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_InvoiceType]', @del_cmd = N'CALL [sp_MSdel_dboLA_InvoiceType]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_InvoiceType]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_InvoiceTypeMapping', @source_owner = N'dbo', @source_object = N'LA_InvoiceTypeMapping', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LA_InvoiceTypeMapping', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_InvoiceTypeMapping]', @del_cmd = N'CALL [sp_MSdel_dboLA_InvoiceTypeMapping]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_InvoiceTypeMapping]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_SettingGroupAssignment', @source_owner = N'dbo', @source_object = N'LA_SettingGroupAssignment', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LA_SettingGroupAssignment', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_SettingGroupAssignment]', @del_cmd = N'CALL [sp_MSdel_dboLA_SettingGroupAssignment]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_SettingGroupAssignment]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_SettingGroupDetail', @source_owner = N'dbo', @source_object = N'LA_SettingGroupDetail', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LA_SettingGroupDetail', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_SettingGroupDetail]', @del_cmd = N'CALL [sp_MSdel_dboLA_SettingGroupDetail]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_SettingGroupDetail]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_SettingGroupHeader', @source_owner = N'dbo', @source_object = N'LA_SettingGroupHeader', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LA_SettingGroupHeader', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_SettingGroupHeader]', @del_cmd = N'CALL [sp_MSdel_dboLA_SettingGroupHeader]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_SettingGroupHeader]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_SystemSettings', @source_owner = N'dbo', @source_object = N'LA_SystemSettings', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LA_SystemSettings', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_SystemSettings]', @del_cmd = N'CALL [sp_MSdel_dboLA_SystemSettings]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_SystemSettings]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LA_User', @source_owner = N'dbo', @source_object = N'LA_User', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LA_User', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_User]', @del_cmd = N'CALL [sp_MSdel_dboLA_User]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_User]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'LicenseeTransferCode', @source_owner = N'dbo', @source_object = N'LicenseeTransferCode', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LicenseeTransferCode', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLicenseeTransferCode]', @del_cmd = N'CALL [sp_MSdel_dboLicenseeTransferCode]', @upd_cmd = N'SCALL [sp_MSupd_dboLicenseeTransferCode]'
GO
use [bodb_Licensee]
exec sp_addarticle @publication = N'CustDB_bodb_licensee_DR_Sync', @article = N'OAS_Users', @source_owner = N'dbo', @source_object = N'OAS_Users', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'OAS_Users', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOAS_Users]', @del_cmd = N'CALL [sp_MSdel_dboOAS_Users]', @upd_cmd = N'SCALL [sp_MSupd_dboOAS_Users]'
GO

-- Adding the transactional subscriptions
use [bodb_Licensee]
exec sp_addsubscription @publication = N'CustDB_bodb_licensee_DR_Sync', @subscriber = N'DBTP10C', @destination_db = N'bodb_licensee', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_bodb_licensee_DR_Sync', @subscriber = N'DBTP10C', @subscriber_db = N'bodb_licensee', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO



-- Enabling the replication database
use master
exec sp_replicationdboption @dbname = N'CustDB', @optname = N'publish', @value = N'true'
GO

exec [CustDB].sys.sp_addlogreader_agent @job_login = null, @job_password = null, @publisher_security_mode = 0, @publisher_login = N'repl_sql', @publisher_password = yyy
GO
exec [CustDB].sys.sp_addqreader_agent @job_login = null, @job_password = null, @frompublisher = 1
GO
-- Adding the transactional publication
use [CustDB]
exec sp_addpublication @publication = N'CustDB_CustInfo', @description = N'Transactional publication of database ''CustDB'' from Publisher ''DBTRANS''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'false', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'CustDB_CustInfo', @frequency_type = 4, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 8, @frequency_subday_interval = 1, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1
exec sp_grant_publication_access @publication = N'CustDB_CustInfo', @login = N'sa'
GO
exec sp_grant_publication_access @publication = N'CustDB_CustInfo', @login = N'NT AUTHORITY\SYSTEM'
GO
exec sp_grant_publication_access @publication = N'CustDB_CustInfo', @login = N'ONEWORKS\RDVivi'
GO
exec sp_grant_publication_access @publication = N'CustDB_CustInfo', @login = N'ONEWORKS\Viet'
GO
exec sp_grant_publication_access @publication = N'CustDB_CustInfo', @login = N'ONEWORKS\sasrp'
GO
exec sp_grant_publication_access @publication = N'CustDB_CustInfo', @login = N'ONEWORKS\RDCooper'
GO
exec sp_grant_publication_access @publication = N'CustDB_CustInfo', @login = N'ONEWORKS\sqladmin'
GO
exec sp_grant_publication_access @publication = N'CustDB_CustInfo', @login = N'NT SERVICE\SQLSERVERAGENT'
GO
exec sp_grant_publication_access @publication = N'CustDB_CustInfo', @login = N'NT SERVICE\MSSQLSERVER'
GO
exec sp_grant_publication_access @publication = N'CustDB_CustInfo', @login = N'vnLukas'
GO
exec sp_grant_publication_access @publication = N'CustDB_CustInfo', @login = N'RDVivi'
GO
exec sp_grant_publication_access @publication = N'CustDB_CustInfo', @login = N'RDCooper'
GO
exec sp_grant_publication_access @publication = N'CustDB_CustInfo', @login = N'vnJoe'
GO
exec sp_grant_publication_access @publication = N'CustDB_CustInfo', @login = N'Viet'
GO

-- Adding the transactional articles
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustInfo', @article = N'custInfo', @source_owner = N'dbo', @source_object = N'custInfo', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x00000000081F509F, @identityrangemanagementoption = N'none', @destination_table = N'custInfo', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'true', @ins_cmd = N'CALL [sp_MSins_dbocustInfo]', @del_cmd = N'CALL [sp_MSdel_dbocustInfo]', @upd_cmd = N'SCALL [sp_MSupd_dbocustInfo]'

-- Adding the article's partition column(s)
exec sp_articlecolumn @publication = N'CustDB_CustInfo', @article = N'custInfo', @column = N'username', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_CustInfo', @article = N'custInfo', @column = N'custid', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_CustInfo', @article = N'custInfo', @column = N'roleid', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_CustInfo', @article = N'custInfo', @column = N'Abnormal', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_CustInfo', @article = N'custInfo', @column = N'DoubleCommLosing', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_CustInfo', @article = N'custInfo', @column = N'autosuspend2', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_CustInfo', @article = N'custInfo', @column = N'HideKeno', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_CustInfo', @article = N'custInfo', @column = N'DisableEsports', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_CustInfo', @article = N'custInfo', @column = N'HideGoldDeluxe', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_CustInfo', @article = N'custInfo', @column = N'DisableGoldDeluxe', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_CustInfo', @article = N'custInfo', @column = N'DisableSuperLive', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_CustInfo', @article = N'custInfo', @column = N'DisableColossusBet', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_CustInfo', @article = N'custInfo', @column = N'HideColossusBet', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_CustInfo', @article = N'custInfo', @column = N'LockUpd', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_CustInfo', @article = N'custInfo', @column = N'MaxPerMatch1MP', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_CustInfo', @article = N'custInfo', @column = N'BonusWalletFlag', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_CustInfo', @article = N'custInfo', @column = N'maxpermatch164', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_CustInfo', @article = N'custInfo', @column = N'CreditUpdatedDate', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_CustInfo', @article = N'custInfo', @column = N'DangerLevel', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_CustInfo', @article = N'custInfo', @column = N'CustomerClass', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_CustInfo', @article = N'custInfo', @column = N'Danger4', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_CustInfo', @article = N'custInfo', @column = N'Danger5', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1

-- Adding the article synchronization object
exec sp_articleview @publication = N'CustDB_CustInfo', @article = N'custInfo', @view_name = N'SYNC_custInfo_1__56', @filter_clause = N'', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
GO

-- Adding the transactional subscriptions
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_CustInfo', @subscriber = N'DB02', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_CustInfo', @subscriber = N'DB02', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO

-- Adding the transactional publication
use [CustDB]
exec sp_addpublication @publication = N'CustDB_Customer_Info', @description = N'Transactional publication of database ''CustDB'' from Publisher ''DBTRANS''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'false', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'CustDB_Customer_Info', @frequency_type = 4, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 8, @frequency_subday_interval = 1, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1
exec sp_grant_publication_access @publication = N'CustDB_Customer_Info', @login = N'sa'
GO
exec sp_grant_publication_access @publication = N'CustDB_Customer_Info', @login = N'NT AUTHORITY\SYSTEM'
GO
exec sp_grant_publication_access @publication = N'CustDB_Customer_Info', @login = N'ONEWORKS\RDVivi'
GO
exec sp_grant_publication_access @publication = N'CustDB_Customer_Info', @login = N'ONEWORKS\Viet'
GO
exec sp_grant_publication_access @publication = N'CustDB_Customer_Info', @login = N'ONEWORKS\sasrp'
GO
exec sp_grant_publication_access @publication = N'CustDB_Customer_Info', @login = N'ONEWORKS\RDCooper'
GO
exec sp_grant_publication_access @publication = N'CustDB_Customer_Info', @login = N'ONEWORKS\sqladmin'
GO
exec sp_grant_publication_access @publication = N'CustDB_Customer_Info', @login = N'NT SERVICE\SQLSERVERAGENT'
GO
exec sp_grant_publication_access @publication = N'CustDB_Customer_Info', @login = N'NT SERVICE\MSSQLSERVER'
GO
exec sp_grant_publication_access @publication = N'CustDB_Customer_Info', @login = N'vnLukas'
GO
exec sp_grant_publication_access @publication = N'CustDB_Customer_Info', @login = N'RDVivi'
GO
exec sp_grant_publication_access @publication = N'CustDB_Customer_Info', @login = N'RDCooper'
GO
exec sp_grant_publication_access @publication = N'CustDB_Customer_Info', @login = N'vnJoe'
GO
exec sp_grant_publication_access @publication = N'CustDB_Customer_Info', @login = N'Viet'
GO

-- Adding the transactional articles
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustDirect', @source_owner = N'dbo', @source_object = N'Acc_CustDirect', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Acc_CustDirect', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAcc_CustDirect]', @del_cmd = N'CALL [sp_MSdel_dboAcc_CustDirect]', @upd_cmd = N'SCALL [sp_MSupd_dboAcc_CustDirect]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustGroup', @source_owner = N'dbo', @source_object = N'Acc_CustGroup', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Acc_CustGroup', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'true', @ins_cmd = N'CALL [sp_MSins_dboAcc_CustGroup]', @del_cmd = N'CALL [sp_MSdel_dboAcc_CustGroup]', @upd_cmd = N'SCALL [sp_MSupd_dboAcc_CustGroup]'

-- Adding the article's partition column(s)
exec sp_articlecolumn @publication = N'CustDB_Customer_Info', @article = N'Acc_CustGroup', @column = N'CustID', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_Customer_Info', @article = N'Acc_CustGroup', @column = N'RoleID', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_Customer_Info', @article = N'Acc_CustGroup', @column = N'GroupName', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_Customer_Info', @article = N'Acc_CustGroup', @column = N'rv', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_Customer_Info', @article = N'Acc_CustGroup', @column = N'IsPayout', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1

-- Adding the article synchronization object
exec sp_articleview @publication = N'CustDB_Customer_Info', @article = N'Acc_CustGroup', @view_name = N'syncobj_0x4141313342313842', @filter_clause = N'', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_00', @source_owner = N'dbo', @source_object = N'Acc_CustomerInfo_Execrep_00', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustomerInfo_Execrep_00', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_01', @source_owner = N'dbo', @source_object = N'Acc_CustomerInfo_Execrep_01', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustomerInfo_Execrep_01', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_02', @source_owner = N'dbo', @source_object = N'Acc_CustomerInfo_Execrep_02', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustomerInfo_Execrep_02', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_03', @source_owner = N'dbo', @source_object = N'Acc_CustomerInfo_Execrep_03', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustomerInfo_Execrep_03', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_04', @source_owner = N'dbo', @source_object = N'Acc_CustomerInfo_Execrep_04', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustomerInfo_Execrep_04', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_05', @source_owner = N'dbo', @source_object = N'Acc_CustomerInfo_Execrep_05', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustomerInfo_Execrep_05', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_06', @source_owner = N'dbo', @source_object = N'Acc_CustomerInfo_Execrep_06', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustomerInfo_Execrep_06', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_07', @source_owner = N'dbo', @source_object = N'Acc_CustomerInfo_Execrep_07', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustomerInfo_Execrep_07', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_08', @source_owner = N'dbo', @source_object = N'Acc_CustomerInfo_Execrep_08', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustomerInfo_Execrep_08', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_09', @source_owner = N'dbo', @source_object = N'Acc_CustomerInfo_Execrep_09', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustomerInfo_Execrep_09', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_10', @source_owner = N'dbo', @source_object = N'Acc_CustomerInfo_Execrep_10', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustomerInfo_Execrep_10', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_11', @source_owner = N'dbo', @source_object = N'Acc_CustomerInfo_Execrep_11', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustomerInfo_Execrep_11', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_12', @source_owner = N'dbo', @source_object = N'Acc_CustomerInfo_Execrep_12', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustomerInfo_Execrep_12', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_13', @source_owner = N'dbo', @source_object = N'Acc_CustomerInfo_Execrep_13', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustomerInfo_Execrep_13', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_14', @source_owner = N'dbo', @source_object = N'Acc_CustomerInfo_Execrep_14', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustomerInfo_Execrep_14', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_15', @source_owner = N'dbo', @source_object = N'Acc_CustomerInfo_Execrep_15', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustomerInfo_Execrep_15', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_16', @source_owner = N'dbo', @source_object = N'Acc_CustomerInfo_Execrep_16', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustomerInfo_Execrep_16', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_17', @source_owner = N'dbo', @source_object = N'Acc_CustomerInfo_Execrep_17', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustomerInfo_Execrep_17', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_18', @source_owner = N'dbo', @source_object = N'Acc_CustomerInfo_Execrep_18', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustomerInfo_Execrep_18', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Acc_CustomerInfo_Execrep_19', @source_owner = N'dbo', @source_object = N'Acc_CustomerInfo_Execrep_19', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustomerInfo_Execrep_19', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Acc_DynamicCustomerInfo_00', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustomerInfo_00', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustomerInfo_00', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Acc_DynamicCustomerInfo_01', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustomerInfo_01', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustomerInfo_01', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Acc_DynamicCustomerInfo_02', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustomerInfo_02', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustomerInfo_02', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Acc_DynamicCustomerInfo_03', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustomerInfo_03', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustomerInfo_03', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Acc_DynamicCustomerInfo_04', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustomerInfo_04', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustomerInfo_04', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Acc_DynamicCustomerInfo_05', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustomerInfo_05', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustomerInfo_05', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Acc_DynamicCustomerInfo_06', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustomerInfo_06', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustomerInfo_06', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Acc_DynamicCustomerInfo_07', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustomerInfo_07', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustomerInfo_07', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Acc_DynamicCustomerInfo_08', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustomerInfo_08', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustomerInfo_08', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Acc_DynamicCustomerInfo_09', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustomerInfo_09', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustomerInfo_09', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Age_CustDateLimit', @source_owner = N'dbo', @source_object = N'Age_CustDateLimit', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Age_CustDateLimit', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAge_CustDateLimit]', @del_cmd = N'CALL [sp_MSdel_dboAge_CustDateLimit]', @upd_cmd = N'SCALL [sp_MSupd_dboAge_CustDateLimit]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Age_CustProfilePicture', @source_owner = N'dbo', @source_object = N'Age_CustProfilePicture', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Age_CustProfilePicture', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAge_CustProfilePicture]', @del_cmd = N'CALL [sp_MSdel_dboAge_CustProfilePicture]', @upd_cmd = N'SCALL [sp_MSupd_dboAge_CustProfilePicture]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Age_ProfilePicture', @source_owner = N'dbo', @source_object = N'Age_ProfilePicture', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Age_ProfilePicture', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'true', @ins_cmd = N'CALL [sp_MSins_dboAge_ProfilePicture]', @del_cmd = N'CALL [sp_MSdel_dboAge_ProfilePicture]', @upd_cmd = N'SCALL [sp_MSupd_dboAge_ProfilePicture]'

-- Adding the article's partition column(s)
exec sp_articlecolumn @publication = N'CustDB_Customer_Info', @article = N'Age_ProfilePicture', @column = N'ImageId', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1

-- Adding the article synchronization object
exec sp_articleview @publication = N'CustDB_Customer_Info', @article = N'Age_ProfilePicture', @view_name = N'syncobj_0x3944333546383636', @filter_clause = N'', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'BetTradeCust', @source_owner = N'dbo', @source_object = N'BetTradeCust', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'BetTradeCust', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboBetTradeCust]', @del_cmd = N'CALL [sp_MSdel_dboBetTradeCust]', @upd_cmd = N'SCALL [sp_MSupd_dboBetTradeCust]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'CS_CustomerStatus', @source_owner = N'dbo', @source_object = N'CS_CustomerStatus', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CS_CustomerStatus', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCS_CustomerStatus]', @del_cmd = N'CALL [sp_MSdel_dboCS_CustomerStatus]', @upd_cmd = N'SCALL [sp_MSupd_dboCS_CustomerStatus]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'CS_DynamicCustomerInfo_00', @source_owner = N'dbo', @source_object = N'CS_DynamicCustomerInfo_00', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'CS_DynamicCustomerInfo_00', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'CS_DynamicCustomerInfo_01', @source_owner = N'dbo', @source_object = N'CS_DynamicCustomerInfo_01', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'CS_DynamicCustomerInfo_01', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'CS_DynamicCustomerInfo_02', @source_owner = N'dbo', @source_object = N'CS_DynamicCustomerInfo_02', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'CS_DynamicCustomerInfo_02', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'CS_DynamicCustomerInfo_03', @source_owner = N'dbo', @source_object = N'CS_DynamicCustomerInfo_03', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'CS_DynamicCustomerInfo_03', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'CS_DynamicCustomerInfo_04', @source_owner = N'dbo', @source_object = N'CS_DynamicCustomerInfo_04', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'CS_DynamicCustomerInfo_04', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'CS_DynamicCustomerInfo_05', @source_owner = N'dbo', @source_object = N'CS_DynamicCustomerInfo_05', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'CS_DynamicCustomerInfo_05', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'CS_DynamicCustomerInfo_06', @source_owner = N'dbo', @source_object = N'CS_DynamicCustomerInfo_06', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'CS_DynamicCustomerInfo_06', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'CS_DynamicCustomerInfo_07', @source_owner = N'dbo', @source_object = N'CS_DynamicCustomerInfo_07', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'CS_DynamicCustomerInfo_07', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'CS_DynamicCustomerInfo_08', @source_owner = N'dbo', @source_object = N'CS_DynamicCustomerInfo_08', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'CS_DynamicCustomerInfo_08', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'CS_DynamicCustomerInfo_09', @source_owner = N'dbo', @source_object = N'CS_DynamicCustomerInfo_09', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'CS_DynamicCustomerInfo_09', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'CS_ProblemAccount', @source_owner = N'dbo', @source_object = N'CS_ProblemAccount', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CS_ProblemAccount', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCS_ProblemAccount]', @del_cmd = N'CALL [sp_MSdel_dboCS_ProblemAccount]', @upd_cmd = N'SCALL [sp_MSupd_dboCS_ProblemAccount]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'CS_SubAccManagement', @source_owner = N'dbo', @source_object = N'CS_SubAccManagement', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CS_SubAccManagement', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCS_SubAccManagement]', @del_cmd = N'CALL [sp_MSdel_dboCS_SubAccManagement]', @upd_cmd = N'SCALL [sp_MSupd_dboCS_SubAccManagement]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'custAccount', @source_owner = N'dbo', @source_object = N'custAccount', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'custAccount', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dbocustAccount]', @del_cmd = N'CALL [sp_MSdel_dbocustAccount]', @upd_cmd = N'SCALL [sp_MSupd_dbocustAccount]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'CustAgent', @source_owner = N'dbo', @source_object = N'CustAgent', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustAgent', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustAgent]', @del_cmd = N'CALL [sp_MSdel_dboCustAgent]', @upd_cmd = N'SCALL [sp_MSupd_dboCustAgent]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'CustDirectAccount', @source_owner = N'dbo', @source_object = N'CustDirectAccount', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustDirectAccount', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustDirectAccount]', @del_cmd = N'CALL [sp_MSdel_dboCustDirectAccount]', @upd_cmd = N'SCALL [sp_MSupd_dboCustDirectAccount]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'CustGroupHeadline', @source_owner = N'dbo', @source_object = N'CustGroupHeadline', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustGroupHeadline', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustGroupHeadline]', @del_cmd = N'CALL [sp_MSdel_dboCustGroupHeadline]', @upd_cmd = N'SCALL [sp_MSupd_dboCustGroupHeadline]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'custInfo', @source_owner = N'dbo', @source_object = N'custInfo', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'custInfo', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dbocustInfo]', @del_cmd = N'CALL [sp_MSdel_dbocustInfo]', @upd_cmd = N'SCALL [sp_MSupd_dbocustInfo]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'CustMaster', @source_owner = N'dbo', @source_object = N'CustMaster', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustMaster', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustMaster]', @del_cmd = N'CALL [sp_MSdel_dboCustMaster]', @upd_cmd = N'SCALL [sp_MSupd_dboCustMaster]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Customer', @source_owner = N'dbo', @source_object = N'Customer', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'Customer', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustomer]', @del_cmd = N'CALL [sp_MSdel_dboCustomer]', @upd_cmd = N'SCALL [sp_MSupd_dboCustomer]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'CustProductStatus', @source_owner = N'dbo', @source_object = N'CustProductStatus', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustProductStatus', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustProductStatus]', @del_cmd = N'CALL [sp_MSdel_dboCustProductStatus]', @upd_cmd = N'SCALL [sp_MSupd_dboCustProductStatus]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'custSearch', @source_owner = N'dbo', @source_object = N'custSearch', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'custSearch', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dbocustSearch]', @del_cmd = N'CALL [sp_MSdel_dbocustSearch]', @upd_cmd = N'SCALL [sp_MSupd_dbocustSearch]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'custSub', @source_owner = N'dbo', @source_object = N'custSub', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'custSub', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dbocustSub]', @del_cmd = N'CALL [sp_MSdel_dbocustSub]', @upd_cmd = N'SCALL [sp_MSupd_dbocustSub]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'CustSuper', @source_owner = N'dbo', @source_object = N'CustSuper', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustSuper', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustSuper]', @del_cmd = N'CALL [sp_MSdel_dboCustSuper]', @upd_cmd = N'SCALL [sp_MSupd_dboCustSuper]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'CustSuspendLockUpd', @source_owner = N'dbo', @source_object = N'CustSuspendLockUpd', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustSuspendLockUpd', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustSuspendLockUpd]', @del_cmd = N'CALL [sp_MSdel_dboCustSuspendLockUpd]', @upd_cmd = N'SCALL [sp_MSupd_dboCustSuspendLockUpd]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Dep_Customer_Archived', @source_owner = N'dbo', @source_object = N'Dep_Customer_Archived', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_Customer_Archived', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_Customer_Archived]', @del_cmd = N'CALL [sp_MSdel_dboDep_Customer_Archived]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_Customer_Archived]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Dep_CustSpecialLevel', @source_owner = N'dbo', @source_object = N'Dep_CustSpecialLevel', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_CustSpecialLevel', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustSpecialLevel]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustSpecialLevel]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustSpecialLevel]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Dep_CustSuper', @source_owner = N'dbo', @source_object = N'Dep_CustSuper', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_CustSuper', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustSuper]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustSuper]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustSuper]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Dep_CustVIP', @source_owner = N'dbo', @source_object = N'Dep_CustVIP', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_CustVIP', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustVIP]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustVIP]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustVIP]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'f_CheckRepTable', @source_owner = N'dbo', @source_object = N'f_CheckRepTable', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CheckRepTable', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'f_CustSetting_GenerateProductStatus', @source_owner = N'dbo', @source_object = N'f_CustSetting_GenerateProductStatus', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CustSetting_GenerateProductStatus', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'f_CustSetting_ProductStatusSel', @source_owner = N'dbo', @source_object = N'f_CustSetting_ProductStatusSel', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CustSetting_ProductStatusSel', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'f_CustSetting_SportBetTypeSettingSelect', @source_owner = N'dbo', @source_object = N'f_CustSetting_SportBetTypeSettingSelect', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CustSetting_SportBetTypeSettingSelect', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'f_DepSuper_1', @source_owner = N'dbo', @source_object = N'f_DepSuper_1', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_DepSuper_1', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'f_GenerateProductStatus', @source_owner = N'dbo', @source_object = N'f_GenerateProductStatus', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_GenerateProductStatus', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'f_GenerateProductStatus_multiple', @source_owner = N'dbo', @source_object = N'f_GenerateProductStatus_multiple', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_GenerateProductStatus_multiple', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'f_GenerateSuspendInfo', @source_owner = N'dbo', @source_object = N'f_GenerateSuspendInfo', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_GenerateSuspendInfo', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'f_GetProductStatus', @source_owner = N'dbo', @source_object = N'f_GetProductStatus', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_GetProductStatus', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'f_GetSuspendInfoStatus', @source_owner = N'dbo', @source_object = N'f_GetSuspendInfoStatus', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_GetSuspendInfoStatus', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'MsgError', @source_owner = N'dbo', @source_object = N'MsgError', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'MsgError', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboMsgError]', @del_cmd = N'CALL [sp_MSdel_dboMsgError]', @upd_cmd = N'SCALL [sp_MSupd_dboMsgError]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'MsgErrorGroup', @source_owner = N'dbo', @source_object = N'MsgErrorGroup', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'MsgErrorGroup', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboMsgErrorGroup]', @del_cmd = N'CALL [sp_MSdel_dboMsgErrorGroup]', @upd_cmd = N'SCALL [sp_MSupd_dboMsgErrorGroup]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'ProblemAccount', @source_owner = N'dbo', @source_object = N'ProblemAccount', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'ProblemAccount', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProblemAccount]', @del_cmd = N'CALL [sp_MSdel_dboProblemAccount]', @upd_cmd = N'SCALL [sp_MSupd_dboProblemAccount]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'ProductSettingDetail', @source_owner = N'dbo', @source_object = N'ProductSettingDetail', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'ProductSettingDetail', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProductSettingDetail]', @del_cmd = N'CALL [sp_MSdel_dboProductSettingDetail]', @upd_cmd = N'SCALL [sp_MSupd_dboProductSettingDetail]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'ProductStatusProfile', @source_owner = N'dbo', @source_object = N'ProductStatusProfile', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'ProductStatusProfile', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProductStatusProfile]', @del_cmd = N'CALL [sp_MSdel_dboProductStatusProfile]', @upd_cmd = N'SCALL [sp_MSupd_dboProductStatusProfile]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'ProductStatusSiteCurrency', @source_owner = N'dbo', @source_object = N'ProductStatusSiteCurrency', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'ProductStatusSiteCurrency', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProductStatusSiteCurrency]', @del_cmd = N'CALL [sp_MSdel_dboProductStatusSiteCurrency]', @upd_cmd = N'SCALL [sp_MSupd_dboProductStatusSiteCurrency]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'smartPunterList', @source_owner = N'dbo', @source_object = N'smartPunterList', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'smartPunterList', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dbosmartPunterList]', @del_cmd = N'CALL [sp_MSdel_dbosmartPunterList]', @upd_cmd = N'SCALL [sp_MSupd_dbosmartPunterList]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'SportNonOfferedSiteCurrency', @source_owner = N'dbo', @source_object = N'SportNonOfferedSiteCurrency', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'SportNonOfferedSiteCurrency', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSportNonOfferedSiteCurrency]', @del_cmd = N'CALL [sp_MSdel_dboSportNonOfferedSiteCurrency]', @upd_cmd = N'SCALL [sp_MSupd_dboSportNonOfferedSiteCurrency]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'TradeCust', @source_owner = N'dbo', @source_object = N'TradeCust', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'TradeCust', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboTradeCust]', @del_cmd = N'CALL [sp_MSdel_dboTradeCust]', @upd_cmd = N'SCALL [sp_MSupd_dboTradeCust]'
GO

-- Adding the transactional subscriptions
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB04ADMIN1', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_Customer_Info', @subscriber = N'DB04ADMIN1', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB04ADMIN2', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_Customer_Info', @subscriber = N'DB04ADMIN2', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB05', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_Customer_Info', @subscriber = N'DB05', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB052', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_Customer_Info', @subscriber = N'DB052', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB053', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_Customer_Info', @subscriber = N'DB053', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB054', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_Customer_Info', @subscriber = N'DB054', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB055', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_Customer_Info', @subscriber = N'DB055', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB05BK1', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_Customer_Info', @subscriber = N'DB05BK1', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB061', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_Customer_Info', @subscriber = N'DB061', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DB062', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_Customer_Info', @subscriber = N'DB062', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_Customer_Info', @subscriber = N'DBTP10C', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_Customer_Info', @subscriber = N'DBTP10C', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO

-- Adding the transactional publication
use [CustDB]
exec sp_addpublication @publication = N'CustDB_CustSetting', @description = N'Transactional publication of database ''CustDB'' from Publisher ''DBTRANS''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'false', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'CustDB_CustSetting', @frequency_type = 4, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 8, @frequency_subday_interval = 1, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1
exec sp_grant_publication_access @publication = N'CustDB_CustSetting', @login = N'sa'
GO
exec sp_grant_publication_access @publication = N'CustDB_CustSetting', @login = N'NT AUTHORITY\SYSTEM'
GO
exec sp_grant_publication_access @publication = N'CustDB_CustSetting', @login = N'ONEWORKS\RDVivi'
GO
exec sp_grant_publication_access @publication = N'CustDB_CustSetting', @login = N'ONEWORKS\Viet'
GO
exec sp_grant_publication_access @publication = N'CustDB_CustSetting', @login = N'ONEWORKS\sasrp'
GO
exec sp_grant_publication_access @publication = N'CustDB_CustSetting', @login = N'ONEWORKS\RDCooper'
GO
exec sp_grant_publication_access @publication = N'CustDB_CustSetting', @login = N'ONEWORKS\sqladmin'
GO
exec sp_grant_publication_access @publication = N'CustDB_CustSetting', @login = N'NT SERVICE\SQLSERVERAGENT'
GO
exec sp_grant_publication_access @publication = N'CustDB_CustSetting', @login = N'NT SERVICE\MSSQLSERVER'
GO
exec sp_grant_publication_access @publication = N'CustDB_CustSetting', @login = N'vnBilly'
GO
exec sp_grant_publication_access @publication = N'CustDB_CustSetting', @login = N'vnLukas'
GO
exec sp_grant_publication_access @publication = N'CustDB_CustSetting', @login = N'RDVivi'
GO
exec sp_grant_publication_access @publication = N'CustDB_CustSetting', @login = N'RDCooper'
GO
exec sp_grant_publication_access @publication = N'CustDB_CustSetting', @login = N'vnJoe'
GO
exec sp_grant_publication_access @publication = N'CustDB_CustSetting', @login = N'Viet'
GO

-- Adding the transactional articles
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_00', @source_owner = N'dbo', @source_object = N'Acc_CustSetting_00', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustSetting_00', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_01', @source_owner = N'dbo', @source_object = N'Acc_CustSetting_01', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustSetting_01', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_02', @source_owner = N'dbo', @source_object = N'Acc_CustSetting_02', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustSetting_02', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_03', @source_owner = N'dbo', @source_object = N'Acc_CustSetting_03', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustSetting_03', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_04', @source_owner = N'dbo', @source_object = N'Acc_CustSetting_04', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustSetting_04', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_05', @source_owner = N'dbo', @source_object = N'Acc_CustSetting_05', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustSetting_05', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_06', @source_owner = N'dbo', @source_object = N'Acc_CustSetting_06', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustSetting_06', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_07', @source_owner = N'dbo', @source_object = N'Acc_CustSetting_07', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustSetting_07', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_08', @source_owner = N'dbo', @source_object = N'Acc_Custsetting_08', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_Custsetting_08', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_09', @source_owner = N'dbo', @source_object = N'Acc_Custsetting_09', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_Custsetting_09', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_10', @source_owner = N'dbo', @source_object = N'Acc_CustSetting_10', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustSetting_10', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_11', @source_owner = N'dbo', @source_object = N'Acc_CustSetting_11', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustSetting_11', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_12', @source_owner = N'dbo', @source_object = N'Acc_CustSetting_12', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustSetting_12', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_13', @source_owner = N'dbo', @source_object = N'Acc_CustSetting_13', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustSetting_13', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_14', @source_owner = N'dbo', @source_object = N'Acc_CustSetting_14', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustSetting_14', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_15', @source_owner = N'dbo', @source_object = N'Acc_CustSetting_15', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustSetting_15', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_16', @source_owner = N'dbo', @source_object = N'Acc_CustSetting_16', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustSetting_16', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_17', @source_owner = N'dbo', @source_object = N'Acc_CustSetting_17', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustSetting_17', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_18', @source_owner = N'dbo', @source_object = N'Acc_CustSetting_18', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustSetting_18', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting_19', @source_owner = N'dbo', @source_object = N'Acc_CustSetting_19', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustSetting_19', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_00', @source_owner = N'dbo', @source_object = N'Acc_CustSetting3rd_00', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustSetting3rd_00', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_01', @source_owner = N'dbo', @source_object = N'Acc_CustSetting3rd_01', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustSetting3rd_01', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_02', @source_owner = N'dbo', @source_object = N'Acc_CustSetting3rd_02', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustSetting3rd_02', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_03', @source_owner = N'dbo', @source_object = N'Acc_CustSetting3rd_03', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustSetting3rd_03', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_04', @source_owner = N'dbo', @source_object = N'Acc_CustSetting3rd_04', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustSetting3rd_04', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_05', @source_owner = N'dbo', @source_object = N'Acc_CustSetting3rd_05', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustSetting3rd_05', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_06', @source_owner = N'dbo', @source_object = N'Acc_CustSetting3rd_06', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustSetting3rd_06', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_07', @source_owner = N'dbo', @source_object = N'Acc_CustSetting3rd_07', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustSetting3rd_07', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_08', @source_owner = N'dbo', @source_object = N'Acc_Custsetting3rd_08', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_Custsetting3rd_08', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_09', @source_owner = N'dbo', @source_object = N'Acc_Custsetting3rd_09', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_Custsetting3rd_09', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_10', @source_owner = N'dbo', @source_object = N'Acc_CustSetting3rd_10', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustSetting3rd_10', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_11', @source_owner = N'dbo', @source_object = N'Acc_CustSetting3rd_11', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustSetting3rd_11', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_12', @source_owner = N'dbo', @source_object = N'Acc_CustSetting3rd_12', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustSetting3rd_12', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_13', @source_owner = N'dbo', @source_object = N'Acc_CustSetting3rd_13', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustSetting3rd_13', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_14', @source_owner = N'dbo', @source_object = N'Acc_CustSetting3rd_14', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustSetting3rd_14', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_15', @source_owner = N'dbo', @source_object = N'Acc_CustSetting3rd_15', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustSetting3rd_15', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_16', @source_owner = N'dbo', @source_object = N'Acc_CustSetting3rd_16', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustSetting3rd_16', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_17', @source_owner = N'dbo', @source_object = N'Acc_CustSetting3rd_17', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustSetting3rd_17', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_18', @source_owner = N'dbo', @source_object = N'Acc_CustSetting3rd_18', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustSetting3rd_18', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_CustSetting3rd_19', @source_owner = N'dbo', @source_object = N'Acc_CustSetting3rd_19', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustSetting3rd_19', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_Dep_DynamicCustSetting_00', @source_owner = N'dbo', @source_object = N'Acc_Dep_DynamicCustSetting_00', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_Dep_DynamicCustSetting_00', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_Dep_DynamicCustSetting_01', @source_owner = N'dbo', @source_object = N'Acc_Dep_DynamicCustSetting_01', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_Dep_DynamicCustSetting_01', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_Dep_DynamicCustSetting_02', @source_owner = N'dbo', @source_object = N'Acc_Dep_DynamicCustSetting_02', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_Dep_DynamicCustSetting_02', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_Dep_DynamicCustSetting_03', @source_owner = N'dbo', @source_object = N'Acc_Dep_DynamicCustSetting_03', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_Dep_DynamicCustSetting_03', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_Dep_DynamicCustSetting_04', @source_owner = N'dbo', @source_object = N'Acc_Dep_DynamicCustSetting_04', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_Dep_DynamicCustSetting_04', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_Dep_DynamicCustSetting_05', @source_owner = N'dbo', @source_object = N'Acc_Dep_DynamicCustSetting_05', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_Dep_DynamicCustSetting_05', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_Dep_DynamicCustSetting_06', @source_owner = N'dbo', @source_object = N'Acc_Dep_DynamicCustSetting_06', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_Dep_DynamicCustSetting_06', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_Dep_DynamicCustSetting_07', @source_owner = N'dbo', @source_object = N'Acc_Dep_DynamicCustSetting_07', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_Dep_DynamicCustSetting_07', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_Dep_DynamicCustSetting_08', @source_owner = N'dbo', @source_object = N'Acc_Dep_DynamicCustSetting_08', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_Dep_DynamicCustSetting_08', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_Dep_DynamicCustSetting_09', @source_owner = N'dbo', @source_object = N'Acc_Dep_DynamicCustSetting_09', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_Dep_DynamicCustSetting_09', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_00', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustSetting3rd_00', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustSetting3rd_00', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_01', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustSetting3rd_01', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustSetting3rd_01', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_02', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustSetting3rd_02', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustSetting3rd_02', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_03', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustSetting3rd_03', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustSetting3rd_03', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_04', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustSetting3rd_04', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustSetting3rd_04', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_05', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustSetting3rd_05', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustSetting3rd_05', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_06', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustSetting3rd_06', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustSetting3rd_06', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_07', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustSetting3rd_07', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustSetting3rd_07', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_08', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustSetting3rd_08', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustSetting3rd_08', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_09', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustSetting3rd_09', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustSetting3rd_09', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_10', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustSetting3rd_10', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustSetting3rd_10', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_11', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustSetting3rd_11', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustSetting3rd_11', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_12', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustSetting3rd_12', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustSetting3rd_12', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_13', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustSetting3rd_13', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustSetting3rd_13', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_14', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustSetting3rd_14', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustSetting3rd_14', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_15', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustSetting3rd_15', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustSetting3rd_15', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_16', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustSetting3rd_16', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustSetting3rd_16', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_17', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustSetting3rd_17', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustSetting3rd_17', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_18', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustSetting3rd_18', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustSetting3rd_18', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_DynamicCustSetting3rd_19', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustSetting3rd_19', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustSetting3rd_19', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Acc_FinancePermission', @source_owner = N'dbo', @source_object = N'Acc_FinancePermission', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Acc_FinancePermission', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAcc_FinancePermission]', @del_cmd = N'CALL [sp_MSdel_dboAcc_FinancePermission]', @upd_cmd = N'SCALL [sp_MSupd_dboAcc_FinancePermission]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'AgentCommRate', @source_owner = N'dbo', @source_object = N'AgentCommRate', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'AgentCommRate', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAgentCommRate]', @del_cmd = N'CALL [sp_MSdel_dboAgentCommRate]', @upd_cmd = N'SCALL [sp_MSupd_dboAgentCommRate]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'BetLimitControlCustSetting', @source_owner = N'dbo', @source_object = N'BetLimitControlCustSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'BetLimitControlCustSetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboBetLimitControlCustSetting]', @del_cmd = N'CALL [sp_MSdel_dboBetLimitControlCustSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboBetLimitControlCustSetting]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'BetLimitControlProduct', @source_owner = N'dbo', @source_object = N'BetLimitControlProduct', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'BetLimitControlProduct', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboBetLimitControlProduct]', @del_cmd = N'CALL [sp_MSdel_dboBetLimitControlProduct]', @upd_cmd = N'SCALL [sp_MSupd_dboBetLimitControlProduct]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'BetLimitControlType', @source_owner = N'dbo', @source_object = N'BetLimitControlType', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'BetLimitControlType', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboBetLimitControlType]', @del_cmd = N'CALL [sp_MSdel_dboBetLimitControlType]', @upd_cmd = N'SCALL [sp_MSupd_dboBetLimitControlType]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'BetLimitControlTypeDetail', @source_owner = N'dbo', @source_object = N'BetLimitControlTypeDetail', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'BetLimitControlTypeDetail', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboBetLimitControlTypeDetail]', @del_cmd = N'CALL [sp_MSdel_dboBetLimitControlTypeDetail]', @upd_cmd = N'SCALL [sp_MSupd_dboBetLimitControlTypeDetail]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'BetRestriction_Currency', @source_owner = N'dbo', @source_object = N'BetRestriction_Currency', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'BetRestriction_Currency', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboBetRestriction_Currency]', @del_cmd = N'CALL [sp_MSdel_dboBetRestriction_Currency]', @upd_cmd = N'SCALL [sp_MSupd_dboBetRestriction_Currency]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'BetRestriction_Customer', @source_owner = N'dbo', @source_object = N'BetRestriction_Customer', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'BetRestriction_Customer', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboBetRestriction_Customer]', @del_cmd = N'CALL [sp_MSdel_dboBetRestriction_Customer]', @upd_cmd = N'SCALL [sp_MSupd_dboBetRestriction_Customer]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'BetRestriction_Setting', @source_owner = N'dbo', @source_object = N'BetRestriction_Setting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'BetRestriction_Setting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboBetRestriction_Setting]', @del_cmd = N'CALL [sp_MSdel_dboBetRestriction_Setting]', @upd_cmd = N'SCALL [sp_MSupd_dboBetRestriction_Setting]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'BetRestriction_Site', @source_owner = N'dbo', @source_object = N'BetRestriction_Site', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'BetRestriction_Site', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboBetRestriction_Site]', @del_cmd = N'CALL [sp_MSdel_dboBetRestriction_Site]', @upd_cmd = N'SCALL [sp_MSupd_dboBetRestriction_Site]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CategoryConfig', @source_owner = N'dbo', @source_object = N'CategoryConfig', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CategoryConfig', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCategoryConfig]', @del_cmd = N'CALL [sp_MSdel_dboCategoryConfig]', @upd_cmd = N'SCALL [sp_MSupd_dboCategoryConfig]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CS_ByteSeq', @source_owner = N'dbo', @source_object = N'CS_ByteSeq', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CS_ByteSeq', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCS_ByteSeq]', @del_cmd = N'CALL [sp_MSdel_dboCS_ByteSeq]', @upd_cmd = N'SCALL [sp_MSupd_dboCS_ByteSeq]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CS_CustBetSetting_Agent', @source_owner = N'dbo', @source_object = N'CS_CustBetSetting_Agent', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CS_CustBetSetting_Agent', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCS_CustBetSetting_Agent]', @del_cmd = N'CALL [sp_MSdel_dboCS_CustBetSetting_Agent]', @upd_cmd = N'SCALL [sp_MSupd_dboCS_CustBetSetting_Agent]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CS_CustBetSetting_Member', @source_owner = N'dbo', @source_object = N'CS_CustBetSetting_Member', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CS_CustBetSetting_Member', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCS_CustBetSetting_Member]', @del_cmd = N'CALL [sp_MSdel_dboCS_CustBetSetting_Member]', @upd_cmd = N'SCALL [sp_MSupd_dboCS_CustBetSetting_Member]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CS_CustDiscount_Agent', @source_owner = N'dbo', @source_object = N'CS_CustDiscount_Agent', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CS_CustDiscount_Agent', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCS_CustDiscount_Agent]', @del_cmd = N'CALL [sp_MSdel_dboCS_CustDiscount_Agent]', @upd_cmd = N'SCALL [sp_MSupd_dboCS_CustDiscount_Agent]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CS_CustDiscount_Member', @source_owner = N'dbo', @source_object = N'CS_CustDiscount_Member', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CS_CustDiscount_Member', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCS_CustDiscount_Member]', @del_cmd = N'CALL [sp_MSdel_dboCS_CustDiscount_Member]', @upd_cmd = N'SCALL [sp_MSupd_dboCS_CustDiscount_Member]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CS_CustGroupDiscount_Member', @source_owner = N'dbo', @source_object = N'CS_CustGroupDiscount_Member', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CS_CustGroupDiscount_Member', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCS_CustGroupDiscount_Member]', @del_cmd = N'CALL [sp_MSdel_dboCS_CustGroupDiscount_Member]', @upd_cmd = N'SCALL [sp_MSupd_dboCS_CustGroupDiscount_Member]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CS_CustPTGroupSetting_Member', @source_owner = N'dbo', @source_object = N'CS_CustPTGroupSetting_Member', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CS_CustPTGroupSetting_Member', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCS_CustPTGroupSetting_Member]', @del_cmd = N'CALL [sp_MSdel_dboCS_CustPTGroupSetting_Member]', @upd_cmd = N'SCALL [sp_MSupd_dboCS_CustPTGroupSetting_Member]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CS_CustPTSetting_Agent', @source_owner = N'dbo', @source_object = N'CS_CustPTSetting_Agent', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CS_CustPTSetting_Agent', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCS_CustPTSetting_Agent]', @del_cmd = N'CALL [sp_MSdel_dboCS_CustPTSetting_Agent]', @upd_cmd = N'SCALL [sp_MSupd_dboCS_CustPTSetting_Agent]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CS_CustSettingMode', @source_owner = N'dbo', @source_object = N'CS_CustSettingMode', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CS_CustSettingMode', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCS_CustSettingMode]', @del_cmd = N'CALL [sp_MSdel_dboCS_CustSettingMode]', @upd_cmd = N'SCALL [sp_MSupd_dboCS_CustSettingMode]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CS_DynamicCustSetting_00', @source_owner = N'dbo', @source_object = N'CS_DynamicCustSetting_00', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'CS_DynamicCustSetting_00', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CS_DynamicCustSetting_01', @source_owner = N'dbo', @source_object = N'CS_DynamicCustSetting_01', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'CS_DynamicCustSetting_01', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CS_DynamicCustSetting_02', @source_owner = N'dbo', @source_object = N'CS_DynamicCustSetting_02', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'CS_DynamicCustSetting_02', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CS_DynamicCustSetting_03', @source_owner = N'dbo', @source_object = N'CS_DynamicCustSetting_03', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'CS_DynamicCustSetting_03', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CS_DynamicCustSetting_04', @source_owner = N'dbo', @source_object = N'CS_DynamicCustSetting_04', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'CS_DynamicCustSetting_04', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CS_DynamicCustSetting_05', @source_owner = N'dbo', @source_object = N'CS_DynamicCustSetting_05', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'CS_DynamicCustSetting_05', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CS_DynamicCustSetting_06', @source_owner = N'dbo', @source_object = N'CS_DynamicCustSetting_06', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'CS_DynamicCustSetting_06', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CS_DynamicCustSetting_07', @source_owner = N'dbo', @source_object = N'CS_DynamicCustSetting_07', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'CS_DynamicCustSetting_07', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CS_DynamicCustSetting_08', @source_owner = N'dbo', @source_object = N'CS_DynamicCustSetting_08', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'CS_DynamicCustSetting_08', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CS_DynamicCustSetting_09', @source_owner = N'dbo', @source_object = N'CS_DynamicCustSetting_09', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'CS_DynamicCustSetting_09', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CS_GroupConfig', @source_owner = N'dbo', @source_object = N'CS_GroupConfig', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CS_GroupConfig', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCS_GroupConfig]', @del_cmd = N'CALL [sp_MSdel_dboCS_GroupConfig]', @upd_cmd = N'SCALL [sp_MSupd_dboCS_GroupConfig]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CS_ProductBetSetting', @source_owner = N'dbo', @source_object = N'CS_ProductBetSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CS_ProductBetSetting', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCS_ProductBetSetting]', @del_cmd = N'CALL [sp_MSdel_dboCS_ProductBetSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboCS_ProductBetSetting]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CS_ProductSettingDetail', @source_owner = N'dbo', @source_object = N'CS_ProductSettingDetail', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CS_ProductSettingDetail', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCS_ProductSettingDetail]', @del_cmd = N'CALL [sp_MSdel_dboCS_ProductSettingDetail]', @upd_cmd = N'SCALL [sp_MSupd_dboCS_ProductSettingDetail]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CustBetSetting_Agent', @source_owner = N'dbo', @source_object = N'CustBetSetting_Agent', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustBetSetting_Agent', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustBetSetting_Agent]', @del_cmd = N'CALL [sp_MSdel_dboCustBetSetting_Agent]', @upd_cmd = N'SCALL [sp_MSupd_dboCustBetSetting_Agent]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CustBetSetting_Member', @source_owner = N'dbo', @source_object = N'CustBetSetting_Member', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustBetSetting_Member', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustBetSetting_Member]', @del_cmd = N'CALL [sp_MSdel_dboCustBetSetting_Member]', @upd_cmd = N'SCALL [sp_MSupd_dboCustBetSetting_Member]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CustBetSetting3rd_Agent', @source_owner = N'dbo', @source_object = N'CustBetSetting3rd_Agent', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustBetSetting3rd_Agent', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustBetSetting3rd_Agent]', @del_cmd = N'CALL [sp_MSdel_dboCustBetSetting3rd_Agent]', @upd_cmd = N'SCALL [sp_MSupd_dboCustBetSetting3rd_Agent]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CustBetSetting3rd_Member', @source_owner = N'dbo', @source_object = N'CustBetSetting3rd_Member', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustBetSetting3rd_Member', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustBetSetting3rd_Member]', @del_cmd = N'CALL [sp_MSdel_dboCustBetSetting3rd_Member]', @upd_cmd = N'SCALL [sp_MSupd_dboCustBetSetting3rd_Member]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CustCommRate', @source_owner = N'dbo', @source_object = N'CustCommRate', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustCommRate', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustCommRate]', @del_cmd = N'CALL [sp_MSdel_dboCustCommRate]', @upd_cmd = N'SCALL [sp_MSupd_dboCustCommRate]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CustDiscount3rd_Agent', @source_owner = N'dbo', @source_object = N'CustDiscount3rd_Agent', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustDiscount3rd_Agent', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustDiscount3rd_Agent]', @del_cmd = N'CALL [sp_MSdel_dboCustDiscount3rd_Agent]', @upd_cmd = N'SCALL [sp_MSupd_dboCustDiscount3rd_Agent]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CustDiscount3rd_Member', @source_owner = N'dbo', @source_object = N'CustDiscount3rd_Member', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustDiscount3rd_Member', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustDiscount3rd_Member]', @del_cmd = N'CALL [sp_MSdel_dboCustDiscount3rd_Member]', @upd_cmd = N'SCALL [sp_MSupd_dboCustDiscount3rd_Member]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CustGameType', @source_owner = N'dbo', @source_object = N'CustGameType', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustGameType', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustGameType]', @del_cmd = N'CALL [sp_MSdel_dboCustGameType]', @upd_cmd = N'SCALL [sp_MSupd_dboCustGameType]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CustLimitPTSetting', @source_owner = N'dbo', @source_object = N'CustLimitPTSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustLimitPTSetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustLimitPTSetting]', @del_cmd = N'CALL [sp_MSdel_dboCustLimitPTSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboCustLimitPTSetting]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CustMaxPayoutSetting_Agent', @source_owner = N'dbo', @source_object = N'CustMaxPayoutSetting_Agent', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustMaxPayoutSetting_Agent', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustMaxPayoutSetting_Agent]', @del_cmd = N'CALL [sp_MSdel_dboCustMaxPayoutSetting_Agent]', @upd_cmd = N'SCALL [sp_MSupd_dboCustMaxPayoutSetting_Agent]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CustMaxPayoutSetting_Member', @source_owner = N'dbo', @source_object = N'CustMaxPayoutSetting_Member', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustMaxPayoutSetting_Member', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustMaxPayoutSetting_Member]', @del_cmd = N'CALL [sp_MSdel_dboCustMaxPayoutSetting_Member]', @upd_cmd = N'SCALL [sp_MSupd_dboCustMaxPayoutSetting_Member]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CustNoComm', @source_owner = N'dbo', @source_object = N'CustNoComm', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustNoComm', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustNoComm]', @del_cmd = N'CALL [sp_MSdel_dboCustNoComm]', @upd_cmd = N'SCALL [sp_MSupd_dboCustNoComm]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'custOverride', @source_owner = N'dbo', @source_object = N'custOverride', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'custOverride', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dbocustOverride]', @del_cmd = N'CALL [sp_MSdel_dbocustOverride]', @upd_cmd = N'SCALL [sp_MSupd_dbocustOverride]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'custOverride3rd', @source_owner = N'dbo', @source_object = N'custOverride3rd', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'custOverride3rd', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dbocustOverride3rd]', @del_cmd = N'CALL [sp_MSdel_dbocustOverride3rd]', @upd_cmd = N'SCALL [sp_MSupd_dbocustOverride3rd]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CustOverrideGame', @source_owner = N'dbo', @source_object = N'CustOverrideGame', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustOverrideGame', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustOverrideGame]', @del_cmd = N'CALL [sp_MSdel_dboCustOverrideGame]', @upd_cmd = N'SCALL [sp_MSupd_dboCustOverrideGame]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CustPTGroupSetting3rd_Member', @source_owner = N'dbo', @source_object = N'CustPTGroupSetting3rd_Member', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustPTGroupSetting3rd_Member', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustPTGroupSetting3rd_Member]', @del_cmd = N'CALL [sp_MSdel_dboCustPTGroupSetting3rd_Member]', @upd_cmd = N'SCALL [sp_MSupd_dboCustPTGroupSetting3rd_Member]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CustPTSetting3rd_Agent', @source_owner = N'dbo', @source_object = N'CustPTSetting3rd_Agent', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustPTSetting3rd_Agent', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustPTSetting3rd_Agent]', @del_cmd = N'CALL [sp_MSdel_dboCustPTSetting3rd_Agent]', @upd_cmd = N'SCALL [sp_MSupd_dboCustPTSetting3rd_Agent]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CustPTSetting3rd_Member', @source_owner = N'dbo', @source_object = N'CustPTSetting3rd_Member', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustPTSetting3rd_Member', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustPTSetting3rd_Member]', @del_cmd = N'CALL [sp_MSdel_dboCustPTSetting3rd_Member]', @upd_cmd = N'SCALL [sp_MSupd_dboCustPTSetting3rd_Member]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'custSetting', @source_owner = N'dbo', @source_object = N'custSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'custSetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dbocustSetting]', @del_cmd = N'CALL [sp_MSdel_dbocustSetting]', @upd_cmd = N'SCALL [sp_MSupd_dbocustSetting]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CustSetting3rd', @source_owner = N'dbo', @source_object = N'CustSetting3rd', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustSetting3rd', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustSetting3rd]', @del_cmd = N'CALL [sp_MSdel_dboCustSetting3rd]', @upd_cmd = N'SCALL [sp_MSupd_dboCustSetting3rd]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CustSettingAutoSuspend', @source_owner = N'dbo', @source_object = N'CustSettingAutoSuspend', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustSettingAutoSuspend', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustSettingAutoSuspend]', @del_cmd = N'CALL [sp_MSdel_dboCustSettingAutoSuspend]', @upd_cmd = N'SCALL [sp_MSupd_dboCustSettingAutoSuspend]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CustSettingGame', @source_owner = N'dbo', @source_object = N'CustSettingGame', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustSettingGame', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustSettingGame]', @del_cmd = N'CALL [sp_MSdel_dboCustSettingGame]', @upd_cmd = N'SCALL [sp_MSupd_dboCustSettingGame]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CustSettingMode3rd', @source_owner = N'dbo', @source_object = N'CustSettingMode3rd', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustSettingMode3rd', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustSettingMode3rd]', @del_cmd = N'CALL [sp_MSdel_dboCustSettingMode3rd]', @upd_cmd = N'SCALL [sp_MSupd_dboCustSettingMode3rd]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CustStakeLevel_Agent', @source_owner = N'dbo', @source_object = N'CustStakeLevel_Agent', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustStakeLevel_Agent', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustStakeLevel_Agent]', @del_cmd = N'CALL [sp_MSdel_dboCustStakeLevel_Agent]', @upd_cmd = N'SCALL [sp_MSupd_dboCustStakeLevel_Agent]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CustStakeLevel_Member', @source_owner = N'dbo', @source_object = N'CustStakeLevel_Member', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustStakeLevel_Member', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustStakeLevel_Member]', @del_cmd = N'CALL [sp_MSdel_dboCustStakeLevel_Member]', @upd_cmd = N'SCALL [sp_MSupd_dboCustStakeLevel_Member]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CustVirtualSetting', @source_owner = N'dbo', @source_object = N'CustVirtualSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustVirtualSetting', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustVirtualSetting]', @del_cmd = N'CALL [sp_MSdel_dboCustVirtualSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboCustVirtualSetting]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CustWinLimit', @source_owner = N'dbo', @source_object = N'CustWinLimit', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustWinLimit', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustWinLimit]', @del_cmd = N'CALL [sp_MSdel_dboCustWinLimit]', @upd_cmd = N'SCALL [sp_MSupd_dboCustWinLimit]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CustWinLossLimit_Agent', @source_owner = N'dbo', @source_object = N'CustWinLossLimit_Agent', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustWinLossLimit_Agent', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustWinLossLimit_Agent]', @del_cmd = N'CALL [sp_MSdel_dboCustWinLossLimit_Agent]', @upd_cmd = N'SCALL [sp_MSupd_dboCustWinLossLimit_Agent]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CustWinLossLimit_Member', @source_owner = N'dbo', @source_object = N'CustWinLossLimit_Member', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustWinLossLimit_Member', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustWinLossLimit_Member]', @del_cmd = N'CALL [sp_MSdel_dboCustWinLossLimit_Member]', @upd_cmd = N'SCALL [sp_MSupd_dboCustWinLossLimit_Member]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Dep_AgentCommRate', @source_owner = N'dbo', @source_object = N'Dep_AgentCommRate', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_AgentCommRate', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_AgentCommRate]', @del_cmd = N'CALL [sp_MSdel_dboDep_AgentCommRate]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_AgentCommRate]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustBetSetting_Agent', @source_owner = N'dbo', @source_object = N'Dep_CustBetSetting_Agent', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_CustBetSetting_Agent', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustBetSetting_Agent]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustBetSetting_Agent]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustBetSetting_Agent]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustBetSetting_Member', @source_owner = N'dbo', @source_object = N'Dep_CustBetSetting_Member', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_CustBetSetting_Member', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustBetSetting_Member]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustBetSetting_Member]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustBetSetting_Member]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustBetSettingGame_Agent', @source_owner = N'dbo', @source_object = N'Dep_CustBetSettingGame_Agent', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_CustBetSettingGame_Agent', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustBetSettingGame_Agent]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustBetSettingGame_Agent]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustBetSettingGame_Agent]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustBetSettingGame_Member', @source_owner = N'dbo', @source_object = N'Dep_CustBetSettingGame_Member', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_CustBetSettingGame_Member', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustBetSettingGame_Member]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustBetSettingGame_Member]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustBetSettingGame_Member]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustBetSettingGameGroup_Member', @source_owner = N'dbo', @source_object = N'Dep_CustBetSettingGameGroup_Member', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_CustBetSettingGameGroup_Member', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustBetSettingGameGroup_Member]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustBetSettingGameGroup_Member]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustBetSettingGameGroup_Member]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustCategoryHistory', @source_owner = N'dbo', @source_object = N'Dep_CustCategoryHistory', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'Dep_CustCategoryHistory', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustCategoryHistory]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustCategoryHistory]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustCategoryHistory]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustCommRate', @source_owner = N'dbo', @source_object = N'Dep_CustCommRate', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_CustCommRate', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustCommRate]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustCommRate]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustCommRate]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustDiscountGroupSetting_Member', @source_owner = N'dbo', @source_object = N'Dep_CustDiscountGroupSetting_Member', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_CustDiscountGroupSetting_Member', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustDiscountGroupSetting_Member]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustDiscountGroupSetting_Member]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustDiscountGroupSetting_Member]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustDiscountSetting_Agent', @source_owner = N'dbo', @source_object = N'Dep_CustDiscountSetting_Agent', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_CustDiscountSetting_Agent', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustDiscountSetting_Agent]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustDiscountSetting_Agent]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustDiscountSetting_Agent]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustDiscountSetting_Member', @source_owner = N'dbo', @source_object = N'Dep_CustDiscountSetting_Member', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_CustDiscountSetting_Member', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustDiscountSetting_Member]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustDiscountSetting_Member]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustDiscountSetting_Member]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustProductStatus', @source_owner = N'dbo', @source_object = N'Dep_CustProductStatus', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_CustProductStatus', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustProductStatus]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustProductStatus]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustProductStatus]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustPTGroupSetting_Member', @source_owner = N'dbo', @source_object = N'Dep_CustPTGroupSetting_Member', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_CustPTGroupSetting_Member', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustPTGroupSetting_Member]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustPTGroupSetting_Member]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustPTGroupSetting_Member]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustPTSetting_Agent', @source_owner = N'dbo', @source_object = N'Dep_CustPTSetting_Agent', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_CustPTSetting_Agent', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustPTSetting_Agent]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustPTSetting_Agent]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustPTSetting_Agent]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustPTSetting_Member', @source_owner = N'dbo', @source_object = N'Dep_CustPTSetting_Member', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_CustPTSetting_Member', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustPTSetting_Member]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustPTSetting_Member]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustPTSetting_Member]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustSetting', @source_owner = N'dbo', @source_object = N'Dep_CustSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_CustSetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustSetting]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustSetting]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustSetting3rd', @source_owner = N'dbo', @source_object = N'Dep_CustSetting3rd', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_CustSetting3rd', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustSetting3rd]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustSetting3rd]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustSetting3rd]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustSettingGame', @source_owner = N'dbo', @source_object = N'Dep_CustSettingGame', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_CustSettingGame', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustSettingGame]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustSettingGame]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustSettingGame]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustSettingMode', @source_owner = N'dbo', @source_object = N'Dep_CustSettingMode', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_CustSettingMode', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustSettingMode]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustSettingMode]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustSettingMode]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustStakeLevel_Agent', @source_owner = N'dbo', @source_object = N'Dep_CustStakeLevel_Agent', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_CustStakeLevel_Agent', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustStakeLevel_Agent]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustStakeLevel_Agent]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustStakeLevel_Agent]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Dep_CustStakeLevel_Member', @source_owner = N'dbo', @source_object = N'Dep_CustStakeLevel_Member', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_CustStakeLevel_Member', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustStakeLevel_Member]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustStakeLevel_Member]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustStakeLevel_Member]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Dep_LicenseeProductSetting', @source_owner = N'dbo', @source_object = N'Dep_LicenseeProductSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_LicenseeProductSetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_LicenseeProductSetting]', @del_cmd = N'CALL [sp_MSdel_dboDep_LicenseeProductSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_LicenseeProductSetting]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Dep_ProductBetSetting', @source_owner = N'dbo', @source_object = N'Dep_ProductBetSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_ProductBetSetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_ProductBetSetting]', @del_cmd = N'CALL [sp_MSdel_dboDep_ProductBetSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_ProductBetSetting]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Dep_ProductSetting', @source_owner = N'dbo', @source_object = N'Dep_ProductSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_ProductSetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_ProductSetting]', @del_cmd = N'CALL [sp_MSdel_dboDep_ProductSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_ProductSetting]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Dep_ProductSettingDetail', @source_owner = N'dbo', @source_object = N'Dep_ProductSettingDetail', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_ProductSettingDetail', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_ProductSettingDetail]', @del_cmd = N'CALL [sp_MSdel_dboDep_ProductSettingDetail]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_ProductSettingDetail]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Dep_ProductStatusProfile', @source_owner = N'dbo', @source_object = N'Dep_ProductStatusProfile', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_ProductStatusProfile', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_ProductStatusProfile]', @del_cmd = N'CALL [sp_MSdel_dboDep_ProductStatusProfile]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_ProductStatusProfile]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Dep_StakeLevel', @source_owner = N'dbo', @source_object = N'Dep_StakeLevel', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_StakeLevel', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_StakeLevel]', @del_cmd = N'CALL [sp_MSdel_dboDep_StakeLevel]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_StakeLevel]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'Dep_StakeLevelGroupDetail', @source_owner = N'dbo', @source_object = N'Dep_StakeLevelGroupDetail', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_StakeLevelGroupDetail', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_StakeLevelGroupDetail]', @del_cmd = N'CALL [sp_MSdel_dboDep_StakeLevelGroupDetail]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_StakeLevelGroupDetail]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'f_CheckRepTable', @source_owner = N'dbo', @source_object = N'f_CheckRepTable', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CheckRepTable', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'f_DCS_PT_XMLParse', @source_owner = N'dbo', @source_object = N'f_DCS_PT_XMLParse', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_DCS_PT_XMLParse', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'f_Dep_CustSetting_SportBetTypeSettingSelect', @source_owner = N'dbo', @source_object = N'f_Dep_CustSetting_SportBetTypeSettingSelect', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_Dep_CustSetting_SportBetTypeSettingSelect', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'f_GenerateVirtualSetting', @source_owner = N'dbo', @source_object = N'f_GenerateVirtualSetting', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_GenerateVirtualSetting', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'f_GenerateVirtualSetting_multiple', @source_owner = N'dbo', @source_object = N'f_GenerateVirtualSetting_multiple', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_GenerateVirtualSetting_multiple', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'f_GetVirtualSetting', @source_owner = N'dbo', @source_object = N'f_GetVirtualSetting', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_GetVirtualSetting', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'GameGroup', @source_owner = N'dbo', @source_object = N'GameGroup', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'GameGroup', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboGameGroup]', @del_cmd = N'CALL [sp_MSdel_dboGameGroup]', @upd_cmd = N'SCALL [sp_MSupd_dboGameGroup]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'LimitPTDailySetting', @source_owner = N'dbo', @source_object = N'LimitPTDailySetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LimitPTDailySetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLimitPTDailySetting]', @del_cmd = N'CALL [sp_MSdel_dboLimitPTDailySetting]', @upd_cmd = N'SCALL [sp_MSupd_dboLimitPTDailySetting]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'LossLimit_GlobalSetting', @source_owner = N'dbo', @source_object = N'LossLimit_GlobalSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LossLimit_GlobalSetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLossLimit_GlobalSetting]', @del_cmd = N'CALL [sp_MSdel_dboLossLimit_GlobalSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboLossLimit_GlobalSetting]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'MaxPayoutGlobalSetting', @source_owner = N'dbo', @source_object = N'MaxPayoutGlobalSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'MaxPayoutGlobalSetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboMaxPayoutGlobalSetting]', @del_cmd = N'CALL [sp_MSdel_dboMaxPayoutGlobalSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboMaxPayoutGlobalSetting]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'PlayCurrencySetting', @source_owner = N'dbo', @source_object = N'PlayCurrencySetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'PlayCurrencySetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPlayCurrencySetting]', @del_cmd = N'CALL [sp_MSdel_dboPlayCurrencySetting]', @upd_cmd = N'SCALL [sp_MSupd_dboPlayCurrencySetting]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'ProblemAccountAction', @source_owner = N'dbo', @source_object = N'ProblemAccountAction', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'ProblemAccountAction', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProblemAccountAction]', @del_cmd = N'CALL [sp_MSdel_dboProblemAccountAction]', @upd_cmd = N'SCALL [sp_MSupd_dboProblemAccountAction]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'ProblemAccountClassification', @source_owner = N'dbo', @source_object = N'ProblemAccountClassification', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'ProblemAccountClassification', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProblemAccountClassification]', @del_cmd = N'CALL [sp_MSdel_dboProblemAccountClassification]', @upd_cmd = N'SCALL [sp_MSupd_dboProblemAccountClassification]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'ProblemAccountLimitDownline', @source_owner = N'dbo', @source_object = N'ProblemAccountLimitDownline', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'ProblemAccountLimitDownline', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProblemAccountLimitDownline]', @del_cmd = N'CALL [sp_MSdel_dboProblemAccountLimitDownline]', @upd_cmd = N'SCALL [sp_MSupd_dboProblemAccountLimitDownline]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'ProblemAccountReason', @source_owner = N'dbo', @source_object = N'ProblemAccountReason', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'ProblemAccountReason', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProblemAccountReason]', @del_cmd = N'CALL [sp_MSdel_dboProblemAccountReason]', @upd_cmd = N'SCALL [sp_MSupd_dboProblemAccountReason]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'ProductBetSetting', @source_owner = N'dbo', @source_object = N'ProductBetSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'ProductBetSetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProductBetSetting]', @del_cmd = N'CALL [sp_MSdel_dboProductBetSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboProductBetSetting]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'ProductGlobalSetting', @source_owner = N'dbo', @source_object = N'ProductGlobalSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'ProductGlobalSetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProductGlobalSetting]', @del_cmd = N'CALL [sp_MSdel_dboProductGlobalSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboProductGlobalSetting]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'ProductLaunchedSiteCurrency', @source_owner = N'dbo', @source_object = N'ProductLaunchedSiteCurrency', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'ProductLaunchedSiteCurrency', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProductLaunchedSiteCurrency]', @del_cmd = N'CALL [sp_MSdel_dboProductLaunchedSiteCurrency]', @upd_cmd = N'SCALL [sp_MSupd_dboProductLaunchedSiteCurrency]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'ProfileVirtualSetting', @source_owner = N'dbo', @source_object = N'ProfileVirtualSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'ProfileVirtualSetting', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProfileVirtualSetting]', @del_cmd = N'CALL [sp_MSdel_dboProfileVirtualSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboProfileVirtualSetting]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'RacingBetSetting', @source_owner = N'dbo', @source_object = N'RacingBetSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'RacingBetSetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboRacingBetSetting]', @del_cmd = N'CALL [sp_MSdel_dboRacingBetSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboRacingBetSetting]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'StakeLevel', @source_owner = N'dbo', @source_object = N'StakeLevel', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'StakeLevel', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboStakeLevel]', @del_cmd = N'CALL [sp_MSdel_dboStakeLevel]', @upd_cmd = N'SCALL [sp_MSupd_dboStakeLevel]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'StakeLevelGroupDetail', @source_owner = N'dbo', @source_object = N'StakeLevelGroupDetail', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'StakeLevelGroupDetail', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboStakeLevelGroupDetail]', @del_cmd = N'CALL [sp_MSdel_dboStakeLevelGroupDetail]', @upd_cmd = N'SCALL [sp_MSupd_dboStakeLevelGroupDetail]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'SuspiciousCust', @source_owner = N'dbo', @source_object = N'SuspiciousCust', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'SuspiciousCust', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSuspiciousCust]', @del_cmd = N'CALL [sp_MSdel_dboSuspiciousCust]', @upd_cmd = N'SCALL [sp_MSupd_dboSuspiciousCust]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'VRBettypeGroup', @source_owner = N'dbo', @source_object = N'VRBettypeGroup', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'VRBettypeGroup', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVRBettypeGroup]', @del_cmd = N'CALL [sp_MSdel_dboVRBettypeGroup]', @upd_cmd = N'SCALL [sp_MSupd_dboVRBettypeGroup]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'VRCustLockStatus', @source_owner = N'dbo', @source_object = N'VRCustLockStatus', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'VRCustLockStatus', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVRCustLockStatus]', @del_cmd = N'CALL [sp_MSdel_dboVRCustLockStatus]', @upd_cmd = N'SCALL [sp_MSupd_dboVRCustLockStatus]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'VRCustSetting', @source_owner = N'dbo', @source_object = N'VRCustSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'VRCustSetting', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVRCustSetting]', @del_cmd = N'CALL [sp_MSdel_dboVRCustSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboVRCustSetting]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'VRLeagueGroup', @source_owner = N'dbo', @source_object = N'VRLeagueGroup', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'VRLeagueGroup', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVRLeagueGroup]', @del_cmd = N'CALL [sp_MSdel_dboVRLeagueGroup]', @upd_cmd = N'SCALL [sp_MSupd_dboVRLeagueGroup]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'VRLeagueGroupMapping', @source_owner = N'dbo', @source_object = N'VRLeagueGroupMapping', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'VRLeagueGroupMapping', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVRLeagueGroupMapping]', @del_cmd = N'CALL [sp_MSdel_dboVRLeagueGroupMapping]', @upd_cmd = N'SCALL [sp_MSupd_dboVRLeagueGroupMapping]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'VRSettingHierarchy', @source_owner = N'dbo', @source_object = N'VRSettingHierarchy', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'VRSettingHierarchy', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVRSettingHierarchy]', @del_cmd = N'CALL [sp_MSdel_dboVRSettingHierarchy]', @upd_cmd = N'SCALL [sp_MSupd_dboVRSettingHierarchy]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'VRSettingManualUpdAcc', @source_owner = N'dbo', @source_object = N'VRSettingManualUpdAcc', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'VRSettingManualUpdAcc', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVRSettingManualUpdAcc]', @del_cmd = N'CALL [sp_MSdel_dboVRSettingManualUpdAcc]', @upd_cmd = N'SCALL [sp_MSupd_dboVRSettingManualUpdAcc]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'VRSettingReference', @source_owner = N'dbo', @source_object = N'VRSettingReference', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'VRSettingReference', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVRSettingReference]', @del_cmd = N'CALL [sp_MSdel_dboVRSettingReference]', @upd_cmd = N'SCALL [sp_MSupd_dboVRSettingReference]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'VRValueMapping', @source_owner = N'dbo', @source_object = N'VRValueMapping', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'VRValueMapping', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVRValueMapping]', @del_cmd = N'CALL [sp_MSdel_dboVRValueMapping]', @upd_cmd = N'SCALL [sp_MSupd_dboVRValueMapping]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'WinLimit_CustSetting', @source_owner = N'dbo', @source_object = N'WinLimit_CustSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'WinLimit_CustSetting', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboWinLimit_CustSetting]', @del_cmd = N'CALL [sp_MSdel_dboWinLimit_CustSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboWinLimit_CustSetting]'
GO


-- Adding the transactional subscriptions
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_CustSetting', @subscriber = N'DB061', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_CustSetting', @subscriber = N'DB061', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_CustSetting', @subscriber = N'DB062', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_CustSetting', @subscriber = N'DB062', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_CustSetting', @subscriber = N'DBTP10C', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_CustSetting', @subscriber = N'DBTP10C', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO

-- Adding the transactional publication
use [CustDB]
exec sp_addpublication @publication = N'CustDB_DBTrans_CustInfo', @description = N'Transactional publication of database ''CustDB'' from Publisher ''DBCUST''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'false', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'CustDB_DBTrans_CustInfo', @frequency_type = 4, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 8, @frequency_subday_interval = 1, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1
exec sp_grant_publication_access @publication = N'CustDB_DBTrans_CustInfo', @login = N'sa'
GO
exec sp_grant_publication_access @publication = N'CustDB_DBTrans_CustInfo', @login = N'NT AUTHORITY\SYSTEM'
GO
exec sp_grant_publication_access @publication = N'CustDB_DBTrans_CustInfo', @login = N'ONEWORKS\RDVivi'
GO
exec sp_grant_publication_access @publication = N'CustDB_DBTrans_CustInfo', @login = N'ONEWORKS\Viet'
GO
exec sp_grant_publication_access @publication = N'CustDB_DBTrans_CustInfo', @login = N'ONEWORKS\sasrp'
GO
exec sp_grant_publication_access @publication = N'CustDB_DBTrans_CustInfo', @login = N'ONEWORKS\RDCooper'
GO
exec sp_grant_publication_access @publication = N'CustDB_DBTrans_CustInfo', @login = N'ONEWORKS\sqladmin'
GO
exec sp_grant_publication_access @publication = N'CustDB_DBTrans_CustInfo', @login = N'NT SERVICE\SQLSERVERAGENT'
GO
exec sp_grant_publication_access @publication = N'CustDB_DBTrans_CustInfo', @login = N'NT SERVICE\MSSQLSERVER'
GO
exec sp_grant_publication_access @publication = N'CustDB_DBTrans_CustInfo', @login = N'vnLukas'
GO
exec sp_grant_publication_access @publication = N'CustDB_DBTrans_CustInfo', @login = N'RDVivi'
GO
exec sp_grant_publication_access @publication = N'CustDB_DBTrans_CustInfo', @login = N'RDCooper'
GO
exec sp_grant_publication_access @publication = N'CustDB_DBTrans_CustInfo', @login = N'vnJoe'
GO
exec sp_grant_publication_access @publication = N'CustDB_DBTrans_CustInfo', @login = N'Viet'
GO

-- Adding the transactional articles
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustDirect', @source_owner = N'dbo', @source_object = N'Acc_CustDirect', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803589F, @identityrangemanagementoption = N'none', @destination_table = N'Acc_CustDirect', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAcc_CustDirect]', @del_cmd = N'CALL [sp_MSdel_dboAcc_CustDirect]', @upd_cmd = N'SCALL [sp_MSupd_dboAcc_CustDirect]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_00', @source_owner = N'dbo', @source_object = N'Acc_CustomerInfo_Execrep_00', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustomerInfo_Execrep_00', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_01', @source_owner = N'dbo', @source_object = N'Acc_CustomerInfo_Execrep_01', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustomerInfo_Execrep_01', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_02', @source_owner = N'dbo', @source_object = N'Acc_CustomerInfo_Execrep_02', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustomerInfo_Execrep_02', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_03', @source_owner = N'dbo', @source_object = N'Acc_CustomerInfo_Execrep_03', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustomerInfo_Execrep_03', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_04', @source_owner = N'dbo', @source_object = N'Acc_CustomerInfo_Execrep_04', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustomerInfo_Execrep_04', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_05', @source_owner = N'dbo', @source_object = N'Acc_CustomerInfo_Execrep_05', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustomerInfo_Execrep_05', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_06', @source_owner = N'dbo', @source_object = N'Acc_CustomerInfo_Execrep_06', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustomerInfo_Execrep_06', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_07', @source_owner = N'dbo', @source_object = N'Acc_CustomerInfo_Execrep_07', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustomerInfo_Execrep_07', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_08', @source_owner = N'dbo', @source_object = N'Acc_CustomerInfo_Execrep_08', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustomerInfo_Execrep_08', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_09', @source_owner = N'dbo', @source_object = N'Acc_CustomerInfo_Execrep_09', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustomerInfo_Execrep_09', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_10', @source_owner = N'dbo', @source_object = N'Acc_CustomerInfo_Execrep_10', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustomerInfo_Execrep_10', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_11', @source_owner = N'dbo', @source_object = N'Acc_CustomerInfo_Execrep_11', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustomerInfo_Execrep_11', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_12', @source_owner = N'dbo', @source_object = N'Acc_CustomerInfo_Execrep_12', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustomerInfo_Execrep_12', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_13', @source_owner = N'dbo', @source_object = N'Acc_CustomerInfo_Execrep_13', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustomerInfo_Execrep_13', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_14', @source_owner = N'dbo', @source_object = N'Acc_CustomerInfo_Execrep_14', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustomerInfo_Execrep_14', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_15', @source_owner = N'dbo', @source_object = N'Acc_CustomerInfo_Execrep_15', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustomerInfo_Execrep_15', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_16', @source_owner = N'dbo', @source_object = N'Acc_CustomerInfo_Execrep_16', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustomerInfo_Execrep_16', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_17', @source_owner = N'dbo', @source_object = N'Acc_CustomerInfo_Execrep_17', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustomerInfo_Execrep_17', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_18', @source_owner = N'dbo', @source_object = N'Acc_CustomerInfo_Execrep_18', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustomerInfo_Execrep_18', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_CustomerInfo_Execrep_19', @source_owner = N'dbo', @source_object = N'Acc_CustomerInfo_Execrep_19', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_CustomerInfo_Execrep_19', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_DynamicCustomerInfo_00', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustomerInfo_00', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustomerInfo_00', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_DynamicCustomerInfo_01', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustomerInfo_01', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustomerInfo_01', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_DynamicCustomerInfo_02', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustomerInfo_02', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustomerInfo_02', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_DynamicCustomerInfo_03', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustomerInfo_03', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustomerInfo_03', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_DynamicCustomerInfo_04', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustomerInfo_04', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustomerInfo_04', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_DynamicCustomerInfo_05', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustomerInfo_05', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustomerInfo_05', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_DynamicCustomerInfo_06', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustomerInfo_06', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustomerInfo_06', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_DynamicCustomerInfo_07', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustomerInfo_07', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustomerInfo_07', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_DynamicCustomerInfo_08', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustomerInfo_08', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustomerInfo_08', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_DynamicCustomerInfo_09', @source_owner = N'dbo', @source_object = N'Acc_DynamicCustomerInfo_09', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_DynamicCustomerInfo_09', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_00', @source_owner = N'dbo', @source_object = N'Acc_ExecRep_Cust_00', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_ExecRep_Cust_00', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_01', @source_owner = N'dbo', @source_object = N'Acc_ExecRep_Cust_01', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_ExecRep_Cust_01', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_02', @source_owner = N'dbo', @source_object = N'Acc_ExecRep_Cust_02', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_ExecRep_Cust_02', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_03', @source_owner = N'dbo', @source_object = N'Acc_ExecRep_Cust_03', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_ExecRep_Cust_03', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_04', @source_owner = N'dbo', @source_object = N'Acc_ExecRep_Cust_04', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_ExecRep_Cust_04', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_05', @source_owner = N'dbo', @source_object = N'Acc_ExecRep_Cust_05', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_ExecRep_Cust_05', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_06', @source_owner = N'dbo', @source_object = N'Acc_ExecRep_Cust_06', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_ExecRep_Cust_06', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_07', @source_owner = N'dbo', @source_object = N'Acc_ExecRep_Cust_07', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_ExecRep_Cust_07', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_08', @source_owner = N'dbo', @source_object = N'Acc_ExecRep_Cust_08', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_ExecRep_Cust_08', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_09', @source_owner = N'dbo', @source_object = N'Acc_ExecRep_Cust_09', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_ExecRep_Cust_09', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_10', @source_owner = N'dbo', @source_object = N'Acc_ExecRep_Cust_10', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_ExecRep_Cust_10', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_11', @source_owner = N'dbo', @source_object = N'Acc_ExecRep_Cust_11', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_ExecRep_Cust_11', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_12', @source_owner = N'dbo', @source_object = N'Acc_ExecRep_Cust_12', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_ExecRep_Cust_12', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_13', @source_owner = N'dbo', @source_object = N'Acc_ExecRep_Cust_13', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_ExecRep_Cust_13', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_14', @source_owner = N'dbo', @source_object = N'Acc_ExecRep_Cust_14', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_ExecRep_Cust_14', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_15', @source_owner = N'dbo', @source_object = N'Acc_ExecRep_Cust_15', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_ExecRep_Cust_15', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_16', @source_owner = N'dbo', @source_object = N'Acc_ExecRep_Cust_16', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_ExecRep_Cust_16', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_17', @source_owner = N'dbo', @source_object = N'Acc_ExecRep_Cust_17', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_ExecRep_Cust_17', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_18', @source_owner = N'dbo', @source_object = N'Acc_ExecRep_Cust_18', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_ExecRep_Cust_18', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Acc_ExecRep_Cust_19', @source_owner = N'dbo', @source_object = N'Acc_ExecRep_Cust_19', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_ExecRep_Cust_19', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'CS_DynamicCustomerInfo_00', @source_owner = N'dbo', @source_object = N'CS_DynamicCustomerInfo_00', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'CS_DynamicCustomerInfo_00', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'CS_DynamicCustomerInfo_01', @source_owner = N'dbo', @source_object = N'CS_DynamicCustomerInfo_01', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'CS_DynamicCustomerInfo_01', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'CS_DynamicCustomerInfo_02', @source_owner = N'dbo', @source_object = N'CS_DynamicCustomerInfo_02', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'CS_DynamicCustomerInfo_02', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'CS_DynamicCustomerInfo_03', @source_owner = N'dbo', @source_object = N'CS_DynamicCustomerInfo_03', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'CS_DynamicCustomerInfo_03', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'CS_DynamicCustomerInfo_04', @source_owner = N'dbo', @source_object = N'CS_DynamicCustomerInfo_04', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'CS_DynamicCustomerInfo_04', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'CS_DynamicCustomerInfo_05', @source_owner = N'dbo', @source_object = N'CS_DynamicCustomerInfo_05', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'CS_DynamicCustomerInfo_05', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'CS_DynamicCustomerInfo_06', @source_owner = N'dbo', @source_object = N'CS_DynamicCustomerInfo_06', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'CS_DynamicCustomerInfo_06', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'CS_DynamicCustomerInfo_07', @source_owner = N'dbo', @source_object = N'CS_DynamicCustomerInfo_07', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'CS_DynamicCustomerInfo_07', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'CS_DynamicCustomerInfo_08', @source_owner = N'dbo', @source_object = N'CS_DynamicCustomerInfo_08', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'CS_DynamicCustomerInfo_08', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'CS_DynamicCustomerInfo_09', @source_owner = N'dbo', @source_object = N'CS_DynamicCustomerInfo_09', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'CS_DynamicCustomerInfo_09', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'custInfo', @source_owner = N'dbo', @source_object = N'custInfo', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'custInfo', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dbocustInfo]', @del_cmd = N'CALL [sp_MSdel_dbocustInfo]', @upd_cmd = N'SCALL [sp_MSupd_dbocustInfo]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Customer', @source_owner = N'dbo', @source_object = N'Customer', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'Customer', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustomer]', @del_cmd = N'CALL [sp_MSdel_dboCustomer]', @upd_cmd = N'SCALL [sp_MSupd_dboCustomer]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'CustProductStatus', @source_owner = N'dbo', @source_object = N'CustProductStatus', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803589F, @identityrangemanagementoption = N'none', @destination_table = N'CustProductStatus', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustProductStatus]', @del_cmd = N'CALL [sp_MSdel_dboCustProductStatus]', @upd_cmd = N'SCALL [sp_MSupd_dboCustProductStatus]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Dep_Customer_Archived', @source_owner = N'dbo', @source_object = N'Dep_Customer_Archived', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_Customer_Archived', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_Customer_Archived]', @del_cmd = N'CALL [sp_MSdel_dboDep_Customer_Archived]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_Customer_Archived]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Dep_CustSuper', @source_owner = N'dbo', @source_object = N'Dep_CustSuper', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_CustSuper', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustSuper]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustSuper]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustSuper]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'f_CheckRepTable', @source_owner = N'dbo', @source_object = N'f_CheckRepTable', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CheckRepTable', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'f_CustSetting_ProductStatusSel', @source_owner = N'dbo', @source_object = N'f_CustSetting_ProductStatusSel', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CustSetting_ProductStatusSel', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'f_DepSuper_1', @source_owner = N'dbo', @source_object = N'f_DepSuper_1', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_DepSuper_1', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'MsgError', @source_owner = N'dbo', @source_object = N'MsgError', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'MsgError', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboMsgError]', @del_cmd = N'CALL [sp_MSdel_dboMsgError]', @upd_cmd = N'SCALL [sp_MSupd_dboMsgError]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'MsgErrorGroup', @source_owner = N'dbo', @source_object = N'MsgErrorGroup', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'MsgErrorGroup', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboMsgErrorGroup]', @del_cmd = N'CALL [sp_MSdel_dboMsgErrorGroup]', @upd_cmd = N'SCALL [sp_MSupd_dboMsgErrorGroup]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'ProductSettingDetail', @source_owner = N'dbo', @source_object = N'ProductSettingDetail', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803589F, @identityrangemanagementoption = N'none', @destination_table = N'ProductSettingDetail', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProductSettingDetail]', @del_cmd = N'CALL [sp_MSdel_dboProductSettingDetail]', @upd_cmd = N'SCALL [sp_MSupd_dboProductSettingDetail]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'ProductStatusProfile', @source_owner = N'dbo', @source_object = N'ProductStatusProfile', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803589F, @identityrangemanagementoption = N'none', @destination_table = N'ProductStatusProfile', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProductStatusProfile]', @del_cmd = N'CALL [sp_MSdel_dboProductStatusProfile]', @upd_cmd = N'SCALL [sp_MSupd_dboProductStatusProfile]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'ProductStatusSiteCurrency', @source_owner = N'dbo', @source_object = N'ProductStatusSiteCurrency', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803589F, @identityrangemanagementoption = N'none', @destination_table = N'ProductStatusSiteCurrency', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProductStatusSiteCurrency]', @del_cmd = N'CALL [sp_MSdel_dboProductStatusSiteCurrency]', @upd_cmd = N'SCALL [sp_MSupd_dboProductStatusSiteCurrency]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'Site', @source_owner = N'dbo', @source_object = N'Site', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'Site', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSite]', @del_cmd = N'CALL [sp_MSdel_dboSite]', @upd_cmd = N'SCALL [sp_MSupd_dboSite]'
GO

-- Adding the transactional subscriptions
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_DBTrans_CustInfo', @subscriber = N'DBTRANS', @destination_db = N'CustDB', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_DBTrans_CustInfo', @subscriber = N'DBTRANS', @subscriber_db = N'CustDB', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO

-- Adding the transactional publication
use [CustDB]
exec sp_addpublication @publication = N'CustDB_DBTrans_Exchange', @description = N'Transactional publication of database ''CustDB'' from Publisher ''DBCUST''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'false', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'CustDB_DBTrans_Exchange', @frequency_type = 4, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 8, @frequency_subday_interval = 1, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1
exec sp_grant_publication_access @publication = N'CustDB_DBTrans_Exchange', @login = N'sa'
GO
exec sp_grant_publication_access @publication = N'CustDB_DBTrans_Exchange', @login = N'NT AUTHORITY\SYSTEM'
GO
exec sp_grant_publication_access @publication = N'CustDB_DBTrans_Exchange', @login = N'ONEWORKS\RDVivi'
GO
exec sp_grant_publication_access @publication = N'CustDB_DBTrans_Exchange', @login = N'ONEWORKS\Viet'
GO
exec sp_grant_publication_access @publication = N'CustDB_DBTrans_Exchange', @login = N'ONEWORKS\sasrp'
GO
exec sp_grant_publication_access @publication = N'CustDB_DBTrans_Exchange', @login = N'ONEWORKS\RDCooper'
GO
exec sp_grant_publication_access @publication = N'CustDB_DBTrans_Exchange', @login = N'ONEWORKS\sqladmin'
GO
exec sp_grant_publication_access @publication = N'CustDB_DBTrans_Exchange', @login = N'NT SERVICE\SQLSERVERAGENT'
GO
exec sp_grant_publication_access @publication = N'CustDB_DBTrans_Exchange', @login = N'NT SERVICE\MSSQLSERVER'
GO
exec sp_grant_publication_access @publication = N'CustDB_DBTrans_Exchange', @login = N'vnLukas'
GO
exec sp_grant_publication_access @publication = N'CustDB_DBTrans_Exchange', @login = N'RDVivi'
GO
exec sp_grant_publication_access @publication = N'CustDB_DBTrans_Exchange', @login = N'RDCooper'
GO
exec sp_grant_publication_access @publication = N'CustDB_DBTrans_Exchange', @login = N'vnJoe'
GO
exec sp_grant_publication_access @publication = N'CustDB_DBTrans_Exchange', @login = N'Viet'
GO

-- Adding the transactional articles
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_Exchange', @article = N'Acc_GroupExtraPT2Setting', @source_owner = N'dbo', @source_object = N'Acc_GroupExtraPT2Setting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Acc_GroupExtraPT2Setting', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAcc_GroupExtraPT2Setting]', @del_cmd = N'CALL [sp_MSdel_dboAcc_GroupExtraPT2Setting]', @upd_cmd = N'SCALL [sp_MSupd_dboAcc_GroupExtraPT2Setting]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_Exchange', @article = N'exchange', @source_owner = N'dbo', @source_object = N'exchange', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'exchange', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboexchange]', @del_cmd = N'CALL [sp_MSdel_dboexchange]', @upd_cmd = N'SCALL [sp_MSupd_dboexchange]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_Exchange', @article = N'ExchangeDailyOanda', @source_owner = N'dbo', @source_object = N'ExchangeDailyOanda', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'ExchangeDailyOanda', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboExchangeDailyOanda]', @del_cmd = N'CALL [sp_MSdel_dboExchangeDailyOanda]', @upd_cmd = N'SCALL [sp_MSupd_dboExchangeDailyOanda]'
GO

-- Adding the transactional subscriptions
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_DBTrans_Exchange', @subscriber = N'DBTRANS', @destination_db = N'CustDB', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_DBTrans_Exchange', @subscriber = N'DBTRANS', @subscriber_db = N'CustDB', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO

-- Adding the transactional publication
use [CustDB]
exec sp_addpublication @publication = N'CustDB_DR_sync', @description = N'Transactional publication of database ''CustDB'' from Publisher ''DBCUST''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'false', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'CustDB_DR_sync', @frequency_type = 4, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 8, @frequency_subday_interval = 1, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1
exec sp_grant_publication_access @publication = N'CustDB_DR_sync', @login = N'sa'
GO
exec sp_grant_publication_access @publication = N'CustDB_DR_sync', @login = N'NT AUTHORITY\SYSTEM'
GO
exec sp_grant_publication_access @publication = N'CustDB_DR_sync', @login = N'ONEWORKS\RDVivi'
GO
exec sp_grant_publication_access @publication = N'CustDB_DR_sync', @login = N'ONEWORKS\Viet'
GO
exec sp_grant_publication_access @publication = N'CustDB_DR_sync', @login = N'ONEWORKS\sasrp'
GO
exec sp_grant_publication_access @publication = N'CustDB_DR_sync', @login = N'ONEWORKS\RDCooper'
GO
exec sp_grant_publication_access @publication = N'CustDB_DR_sync', @login = N'ONEWORKS\sqladmin'
GO
exec sp_grant_publication_access @publication = N'CustDB_DR_sync', @login = N'NT SERVICE\SQLSERVERAGENT'
GO
exec sp_grant_publication_access @publication = N'CustDB_DR_sync', @login = N'NT SERVICE\MSSQLSERVER'
GO
exec sp_grant_publication_access @publication = N'CustDB_DR_sync', @login = N'vnLukas'
GO
exec sp_grant_publication_access @publication = N'CustDB_DR_sync', @login = N'RDVivi'
GO
exec sp_grant_publication_access @publication = N'CustDB_DR_sync', @login = N'RDCooper'
GO
exec sp_grant_publication_access @publication = N'CustDB_DR_sync', @login = N'vnJoe'
GO
exec sp_grant_publication_access @publication = N'CustDB_DR_sync', @login = N'Viet'
GO

-- Adding the transactional articles
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'Acc_CustAllowList', @source_owner = N'dbo', @source_object = N'Acc_CustAllowList', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Acc_CustAllowList', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAcc_CustAllowList]', @del_cmd = N'CALL [sp_MSdel_dboAcc_CustAllowList]', @upd_cmd = N'SCALL [sp_MSupd_dboAcc_CustAllowList]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'Acc_DWLList', @source_owner = N'dbo', @source_object = N'Acc_DWLList', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Acc_DWLList', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAcc_DWLList]', @del_cmd = N'CALL [sp_MSdel_dboAcc_DWLList]', @upd_cmd = N'SCALL [sp_MSupd_dboAcc_DWLList]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'Acc_DWLList_ExtraPT', @source_owner = N'dbo', @source_object = N'Acc_DWLList_ExtraPT', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Acc_DWLList_ExtraPT', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAcc_DWLList_ExtraPT]', @del_cmd = N'CALL [sp_MSdel_dboAcc_DWLList_ExtraPT]', @upd_cmd = N'SCALL [sp_MSupd_dboAcc_DWLList_ExtraPT]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'Acc_DWLList_ExtraPT_xtest', @source_owner = N'dbo', @source_object = N'Acc_DWLList_ExtraPT_xtest', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Acc_DWLList_ExtraPT_xtest', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAcc_DWLList_ExtraPT_xtest]', @del_cmd = N'CALL [sp_MSdel_dboAcc_DWLList_ExtraPT_xtest]', @upd_cmd = N'SCALL [sp_MSupd_dboAcc_DWLList_ExtraPT_xtest]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'Acc_DWLList_xtest', @source_owner = N'dbo', @source_object = N'Acc_DWLList_xtest', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Acc_DWLList_xtest', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAcc_DWLList_xtest]', @del_cmd = N'CALL [sp_MSdel_dboAcc_DWLList_xtest]', @upd_cmd = N'SCALL [sp_MSupd_dboAcc_DWLList_xtest]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'Acc_GroupExtraPT_Product', @source_owner = N'dbo', @source_object = N'Acc_GroupExtraPT_Product', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Acc_GroupExtraPT_Product', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAcc_GroupExtraPT_Product]', @del_cmd = N'CALL [sp_MSdel_dboAcc_GroupExtraPT_Product]', @upd_cmd = N'SCALL [sp_MSupd_dboAcc_GroupExtraPT_Product]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'Acc_GroupExtraPT2_Product', @source_owner = N'dbo', @source_object = N'Acc_GroupExtraPT2_Product', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Acc_GroupExtraPT2_Product', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAcc_GroupExtraPT2_Product]', @del_cmd = N'CALL [sp_MSdel_dboAcc_GroupExtraPT2_Product]', @upd_cmd = N'SCALL [sp_MSupd_dboAcc_GroupExtraPT2_Product]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'Acc_SuperPrefix', @source_owner = N'dbo', @source_object = N'Acc_SuperPrefix', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Acc_SuperPrefix', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAcc_SuperPrefix]', @del_cmd = N'CALL [sp_MSdel_dboAcc_SuperPrefix]', @upd_cmd = N'SCALL [sp_MSupd_dboAcc_SuperPrefix]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'Age_CustSeq', @source_owner = N'dbo', @source_object = N'Age_CustSeq', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Age_CustSeq', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAge_CustSeq]', @del_cmd = N'CALL [sp_MSdel_dboAge_CustSeq]', @upd_cmd = N'SCALL [sp_MSupd_dboAge_CustSeq]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'BetLimitControlDefaultSetting', @source_owner = N'dbo', @source_object = N'BetLimitControlDefaultSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'BetLimitControlDefaultSetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboBetLimitControlDefaultSetting]', @del_cmd = N'CALL [sp_MSdel_dboBetLimitControlDefaultSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboBetLimitControlDefaultSetting]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'BetTradeComm', @source_owner = N'dbo', @source_object = N'BetTradeComm', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'BetTradeComm', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboBetTradeComm]', @del_cmd = N'CALL [sp_MSdel_dboBetTradeComm]', @upd_cmd = N'SCALL [sp_MSupd_dboBetTradeComm]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'BonusCurrencySetting', @source_owner = N'dbo', @source_object = N'BonusCurrencySetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'BonusCurrencySetting', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboBonusCurrencySetting]', @del_cmd = N'CALL [sp_MSdel_dboBonusCurrencySetting]', @upd_cmd = N'SCALL [sp_MSupd_dboBonusCurrencySetting]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'BonusCustomerQualified', @source_owner = N'dbo', @source_object = N'BonusCustomerQualified', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'BonusCustomerQualified', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboBonusCustomerQualified]', @del_cmd = N'CALL [sp_MSdel_dboBonusCustomerQualified]', @upd_cmd = N'SCALL [sp_MSupd_dboBonusCustomerQualified]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'BonusCustomerStatus', @source_owner = N'dbo', @source_object = N'BonusCustomerStatus', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'BonusCustomerStatus', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboBonusCustomerStatus]', @del_cmd = N'CALL [sp_MSdel_dboBonusCustomerStatus]', @upd_cmd = N'SCALL [sp_MSupd_dboBonusCustomerStatus]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'BonusLanguageSetting', @source_owner = N'dbo', @source_object = N'BonusLanguageSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'BonusLanguageSetting', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboBonusLanguageSetting]', @del_cmd = N'CALL [sp_MSdel_dboBonusLanguageSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboBonusLanguageSetting]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'BonusSetting', @source_owner = N'dbo', @source_object = N'BonusSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'BonusSetting', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboBonusSetting]', @del_cmd = N'CALL [sp_MSdel_dboBonusSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboBonusSetting]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'CS_HeadlineExtraPTGroup', @source_owner = N'dbo', @source_object = N'CS_HeadlineExtraPTGroup', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CS_HeadlineExtraPTGroup', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCS_HeadlineExtraPTGroup]', @del_cmd = N'CALL [sp_MSdel_dboCS_HeadlineExtraPTGroup]', @upd_cmd = N'SCALL [sp_MSupd_dboCS_HeadlineExtraPTGroup]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'CS_ReportPermission', @source_owner = N'dbo', @source_object = N'CS_ReportPermission', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CS_ReportPermission', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCS_ReportPermission]', @del_cmd = N'CALL [sp_MSdel_dboCS_ReportPermission]', @upd_cmd = N'SCALL [sp_MSupd_dboCS_ReportPermission]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'CustInDirectLogin', @source_owner = N'dbo', @source_object = N'CustInDirectLogin', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustInDirectLogin', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustInDirectLogin]', @del_cmd = N'CALL [sp_MSdel_dboCustInDirectLogin]', @upd_cmd = N'SCALL [sp_MSupd_dboCustInDirectLogin]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'CustLoginInfo', @source_owner = N'dbo', @source_object = N'CustLoginInfo', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustLoginInfo', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustLoginInfo]', @del_cmd = N'CALL [sp_MSdel_dboCustLoginInfo]', @upd_cmd = N'SCALL [sp_MSupd_dboCustLoginInfo]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'CustLoginInfo_Member', @source_owner = N'dbo', @source_object = N'CustLoginInfo_Member', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustLoginInfo_Member', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustLoginInfo_Member]', @del_cmd = N'CALL [sp_MSdel_dboCustLoginInfo_Member]', @upd_cmd = N'SCALL [sp_MSupd_dboCustLoginInfo_Member]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'CustLoginInfoSub', @source_owner = N'dbo', @source_object = N'CustLoginInfoSub', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustLoginInfoSub', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustLoginInfoSub]', @del_cmd = N'CALL [sp_MSdel_dboCustLoginInfoSub]', @upd_cmd = N'SCALL [sp_MSupd_dboCustLoginInfoSub]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'CustOTP', @source_owner = N'dbo', @source_object = N'CustOTP', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustOTP', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustOTP]', @del_cmd = N'CALL [sp_MSdel_dboCustOTP]', @upd_cmd = N'SCALL [sp_MSupd_dboCustOTP]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'CustOTPDetail', @source_owner = N'dbo', @source_object = N'CustOTPDetail', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustOTPDetail', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustOTPDetail]', @del_cmd = N'CALL [sp_MSdel_dboCustOTPDetail]', @upd_cmd = N'SCALL [sp_MSupd_dboCustOTPDetail]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'CustQRCode', @source_owner = N'dbo', @source_object = N'CustQRCode', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustQRCode', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustQRCode]', @del_cmd = N'CALL [sp_MSdel_dboCustQRCode]', @upd_cmd = N'SCALL [sp_MSupd_dboCustQRCode]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'CustRequestGame', @source_owner = N'dbo', @source_object = N'CustRequestGame', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'CustRequestGame', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustRequestGame]', @del_cmd = N'CALL [sp_MSdel_dboCustRequestGame]', @upd_cmd = N'SCALL [sp_MSupd_dboCustRequestGame]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'CustSuperProfile', @source_owner = N'dbo', @source_object = N'CustSuperProfile', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustSuperProfile', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustSuperProfile]', @del_cmd = N'CALL [sp_MSdel_dboCustSuperProfile]', @upd_cmd = N'SCALL [sp_MSupd_dboCustSuperProfile]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'CustUserMapping3rd', @source_owner = N'dbo', @source_object = N'CustUserMapping3rd', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustUserMapping3rd', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustUserMapping3rd]', @del_cmd = N'CALL [sp_MSdel_dboCustUserMapping3rd]', @upd_cmd = N'SCALL [sp_MSupd_dboCustUserMapping3rd]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'CustVersion', @source_owner = N'dbo', @source_object = N'CustVersion', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustVersion', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustVersion]', @del_cmd = N'CALL [sp_MSdel_dboCustVersion]', @upd_cmd = N'SCALL [sp_MSupd_dboCustVersion]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'Dep_CustBAActive', @source_owner = N'dbo', @source_object = N'Dep_CustBAActive', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_CustBAActive', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustBAActive]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustBAActive]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustBAActive]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'Dep_CustBetLimit_Special', @source_owner = N'dbo', @source_object = N'Dep_CustBetLimit_Special', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'Dep_CustBetLimit_Special', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustBetLimit_Special]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustBetLimit_Special]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustBetLimit_Special]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'Dep_CustBetLimitGameType_Special', @source_owner = N'dbo', @source_object = N'Dep_CustBetLimitGameType_Special', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_CustBetLimitGameType_Special', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustBetLimitGameType_Special]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustBetLimitGameType_Special]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustBetLimitGameType_Special]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'Dep_CustProductSetting', @source_owner = N'dbo', @source_object = N'Dep_CustProductSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_CustProductSetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustProductSetting]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustProductSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustProductSetting]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'Dep_CustSetting_AGCasino', @source_owner = N'dbo', @source_object = N'Dep_CustSetting_AGCasino', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_CustSetting_AGCasino', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustSetting_AGCasino]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustSetting_AGCasino]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustSetting_AGCasino]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'Dep_DefaultOddGroup', @source_owner = N'dbo', @source_object = N'Dep_DefaultOddGroup', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_DefaultOddGroup', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_DefaultOddGroup]', @del_cmd = N'CALL [sp_MSdel_dboDep_DefaultOddGroup]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_DefaultOddGroup]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'Dep_SuperSetting_AGCasino', @source_owner = N'dbo', @source_object = N'Dep_SuperSetting_AGCasino', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_SuperSetting_AGCasino', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_SuperSetting_AGCasino]', @del_cmd = N'CALL [sp_MSdel_dboDep_SuperSetting_AGCasino]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_SuperSetting_AGCasino]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'Dep_SupperProductSetting', @source_owner = N'dbo', @source_object = N'Dep_SupperProductSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_SupperProductSetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_SupperProductSetting]', @del_cmd = N'CALL [sp_MSdel_dboDep_SupperProductSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_SupperProductSetting]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'EASCustOTP', @source_owner = N'dbo', @source_object = N'EASCustOTP', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'EASCustOTP', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboEASCustOTP]', @del_cmd = N'CALL [sp_MSdel_dboEASCustOTP]', @upd_cmd = N'SCALL [sp_MSupd_dboEASCustOTP]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'EmailNotification', @source_owner = N'dbo', @source_object = N'EmailNotification', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'EmailNotification', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboEmailNotification]', @del_cmd = N'CALL [sp_MSdel_dboEmailNotification]', @upd_cmd = N'SCALL [sp_MSupd_dboEmailNotification]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'GameLaunchPerCurrency', @source_owner = N'dbo', @source_object = N'GameLaunchPerCurrency', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'GameLaunchPerCurrency', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboGameLaunchPerCurrency]', @del_cmd = N'CALL [sp_MSdel_dboGameLaunchPerCurrency]', @upd_cmd = N'SCALL [sp_MSupd_dboGameLaunchPerCurrency]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'GameLaunchPerSite', @source_owner = N'dbo', @source_object = N'GameLaunchPerSite', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'GameLaunchPerSite', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboGameLaunchPerSite]', @del_cmd = N'CALL [sp_MSdel_dboGameLaunchPerSite]', @upd_cmd = N'SCALL [sp_MSupd_dboGameLaunchPerSite]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'GameRoundBetLimitSettings', @source_owner = N'dbo', @source_object = N'GameRoundBetLimitSettings', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'GameRoundBetLimitSettings', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboGameRoundBetLimitSettings]', @del_cmd = N'CALL [sp_MSdel_dboGameRoundBetLimitSettings]', @upd_cmd = N'SCALL [sp_MSupd_dboGameRoundBetLimitSettings]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'Intg_Member', @source_owner = N'dbo', @source_object = N'Intg_Member', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Intg_Member', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboIntg_Member]', @del_cmd = N'CALL [sp_MSdel_dboIntg_Member]', @upd_cmd = N'SCALL [sp_MSupd_dboIntg_Member]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'Intg_ServerCredential', @source_owner = N'dbo', @source_object = N'Intg_ServerCredential', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Intg_ServerCredential', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboIntg_ServerCredential]', @del_cmd = N'CALL [sp_MSdel_dboIntg_ServerCredential]', @upd_cmd = N'SCALL [sp_MSupd_dboIntg_ServerCredential]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'Intg_Site', @source_owner = N'dbo', @source_object = N'Intg_Site', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Intg_Site', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboIntg_Site]', @del_cmd = N'CALL [sp_MSdel_dboIntg_Site]', @upd_cmd = N'SCALL [sp_MSupd_dboIntg_Site]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'Intg_SiteVendor', @source_owner = N'dbo', @source_object = N'Intg_SiteVendor', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Intg_SiteVendor', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboIntg_SiteVendor]', @del_cmd = N'CALL [sp_MSdel_dboIntg_SiteVendor]', @upd_cmd = N'SCALL [sp_MSupd_dboIntg_SiteVendor]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'Intg_Vendor', @source_owner = N'dbo', @source_object = N'Intg_Vendor', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Intg_Vendor', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboIntg_Vendor]', @del_cmd = N'CALL [sp_MSdel_dboIntg_Vendor]', @upd_cmd = N'SCALL [sp_MSupd_dboIntg_Vendor]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'Intg_VendorAgent', @source_owner = N'dbo', @source_object = N'Intg_VendorAgent', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Intg_VendorAgent', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboIntg_VendorAgent]', @del_cmd = N'CALL [sp_MSdel_dboIntg_VendorAgent]', @upd_cmd = N'SCALL [sp_MSupd_dboIntg_VendorAgent]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'Member_LoginVerify', @source_owner = N'dbo', @source_object = N'Member_LoginVerify', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'Member_LoginVerify', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboMember_LoginVerify]', @del_cmd = N'CALL [sp_MSdel_dboMember_LoginVerify]', @upd_cmd = N'SCALL [sp_MSupd_dboMember_LoginVerify]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'PhoneBettingCustomerList', @source_owner = N'dbo', @source_object = N'PhoneBettingCustomerList', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'PhoneBettingCustomerList', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPhoneBettingCustomerList]', @del_cmd = N'CALL [sp_MSdel_dboPhoneBettingCustomerList]', @upd_cmd = N'SCALL [sp_MSupd_dboPhoneBettingCustomerList]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'ProductSettingSystemDisplay', @source_owner = N'dbo', @source_object = N'ProductSettingSystemDisplay', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'ProductSettingSystemDisplay', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProductSettingSystemDisplay]', @del_cmd = N'CALL [sp_MSdel_dboProductSettingSystemDisplay]', @upd_cmd = N'SCALL [sp_MSupd_dboProductSettingSystemDisplay]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'ProductSettingUpdateRestriction', @source_owner = N'dbo', @source_object = N'ProductSettingUpdateRestriction', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'ProductSettingUpdateRestriction', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProductSettingUpdateRestriction]', @del_cmd = N'CALL [sp_MSdel_dboProductSettingUpdateRestriction]', @upd_cmd = N'SCALL [sp_MSupd_dboProductSettingUpdateRestriction]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'RobotList', @source_owner = N'dbo', @source_object = N'RobotList', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'RobotList', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboRobotList]', @del_cmd = N'CALL [sp_MSdel_dboRobotList]', @upd_cmd = N'SCALL [sp_MSupd_dboRobotList]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'TradeComm', @source_owner = N'dbo', @source_object = N'TradeComm', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'TradeComm', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboTradeComm]', @del_cmd = N'CALL [sp_MSdel_dboTradeComm]', @upd_cmd = N'SCALL [sp_MSupd_dboTradeComm]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'VendorGlobalSetting', @source_owner = N'dbo', @source_object = N'VendorGlobalSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'VendorGlobalSetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVendorGlobalSetting]', @del_cmd = N'CALL [sp_MSdel_dboVendorGlobalSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboVendorGlobalSetting]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'VRAgentAutoAdjustment', @source_owner = N'dbo', @source_object = N'VRAgentAutoAdjustment', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'VRAgentAutoAdjustment', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVRAgentAutoAdjustment]', @del_cmd = N'CALL [sp_MSdel_dboVRAgentAutoAdjustment]', @upd_cmd = N'SCALL [sp_MSupd_dboVRAgentAutoAdjustment]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'VRAgentProfile', @source_owner = N'dbo', @source_object = N'VRAgentProfile', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'VRAgentProfile', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVRAgentProfile]', @del_cmd = N'CALL [sp_MSdel_dboVRAgentProfile]', @upd_cmd = N'SCALL [sp_MSupd_dboVRAgentProfile]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'VRCustAutoAdjustment', @source_owner = N'dbo', @source_object = N'VRCustAutoAdjustment', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'VRCustAutoAdjustment', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVRCustAutoAdjustment]', @del_cmd = N'CALL [sp_MSdel_dboVRCustAutoAdjustment]', @upd_cmd = N'SCALL [sp_MSupd_dboVRCustAutoAdjustment]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'Winlimit_ActionSetting', @source_owner = N'dbo', @source_object = N'Winlimit_ActionSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Winlimit_ActionSetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboWinlimit_ActionSetting]', @del_cmd = N'CALL [sp_MSdel_dboWinlimit_ActionSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboWinlimit_ActionSetting]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'WinLimit_CustGameMonitoring', @source_owner = N'dbo', @source_object = N'WinLimit_CustGameMonitoring', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'WinLimit_CustGameMonitoring', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboWinLimit_CustGameMonitoring]', @del_cmd = N'CALL [sp_MSdel_dboWinLimit_CustGameMonitoring]', @upd_cmd = N'SCALL [sp_MSupd_dboWinLimit_CustGameMonitoring]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'WinLimit_CustGameMonitoring_History', @source_owner = N'dbo', @source_object = N'WinLimit_CustGameMonitoring_History', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'WinLimit_CustGameMonitoring_History', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboWinLimit_CustGameMonitoring_History]', @del_cmd = N'CALL [sp_MSdel_dboWinLimit_CustGameMonitoring_History]', @upd_cmd = N'SCALL [sp_MSupd_dboWinLimit_CustGameMonitoring_History]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'WinLimit_CustGameSetting', @source_owner = N'dbo', @source_object = N'WinLimit_CustGameSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'WinLimit_CustGameSetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboWinLimit_CustGameSetting]', @del_cmd = N'CALL [sp_MSdel_dboWinLimit_CustGameSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboWinLimit_CustGameSetting]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'WinLimit_CustGameStatus', @source_owner = N'dbo', @source_object = N'WinLimit_CustGameStatus', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'WinLimit_CustGameStatus', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboWinLimit_CustGameStatus]', @del_cmd = N'CALL [sp_MSdel_dboWinLimit_CustGameStatus]', @upd_cmd = N'SCALL [sp_MSupd_dboWinLimit_CustGameStatus]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'Winlimit_GameGroupSetting', @source_owner = N'dbo', @source_object = N'Winlimit_GameGroupSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Winlimit_GameGroupSetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboWinlimit_GameGroupSetting]', @del_cmd = N'CALL [sp_MSdel_dboWinlimit_GameGroupSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboWinlimit_GameGroupSetting]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'Winlimit_LevelSetting', @source_owner = N'dbo', @source_object = N'Winlimit_LevelSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Winlimit_LevelSetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboWinlimit_LevelSetting]', @del_cmd = N'CALL [sp_MSdel_dboWinlimit_LevelSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboWinlimit_LevelSetting]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'Winlimit_ProductSetting', @source_owner = N'dbo', @source_object = N'Winlimit_ProductSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Winlimit_ProductSetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboWinlimit_ProductSetting]', @del_cmd = N'CALL [sp_MSdel_dboWinlimit_ProductSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboWinlimit_ProductSetting]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'WinLimit_ProductSettingDetail', @source_owner = N'dbo', @source_object = N'WinLimit_ProductSettingDetail', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'WinLimit_ProductSettingDetail', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboWinLimit_ProductSettingDetail]', @del_cmd = N'CALL [sp_MSdel_dboWinLimit_ProductSettingDetail]', @upd_cmd = N'SCALL [sp_MSupd_dboWinLimit_ProductSettingDetail]'
GO
------ request add new tables
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'Dep_WLMonitored_Player', @source_owner = N'dbo', @source_object = N'Dep_WLMonitored_Player', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_WLMonitored_Player', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_WLMonitored_Player]', @del_cmd = N'CALL [sp_MSdel_dboDep_WLMonitored_Player]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_WLMonitored_Player]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'WLMonitored_Player', @source_owner = N'dbo', @source_object = N'WLMonitored_Player', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'WLMonitored_Player', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboWLMonitored_Player]', @del_cmd = N'CALL [sp_MSdel_dboWLMonitored_Player]', @upd_cmd = N'SCALL [sp_MSupd_dboWLMonitored_Player]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'WLMonitored_PersonalPreset', @source_owner = N'dbo', @source_object = N'WLMonitored_PersonalPreset', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'WLMonitored_PersonalPreset', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboWLMonitored_PersonalPreset]', @del_cmd = N'CALL [sp_MSdel_dboWLMonitored_PersonalPreset]', @upd_cmd = N'SCALL [sp_MSupd_dboWLMonitored_PersonalPreset]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'WLMonitored_Global', @source_owner = N'dbo', @source_object = N'WLMonitored_Global', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'WLMonitored_Global', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboWLMonitored_Global]', @del_cmd = N'CALL [sp_MSdel_dboWLMonitored_Global]', @upd_cmd = N'SCALL [sp_MSupd_dboWLMonitored_Global]'
GO
---------


-- Adding the transactional subscriptions
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_DR_sync', @subscriber = N'DB061', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_DR_sync', @subscriber = N'DB061', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_DR_sync', @subscriber = N'DB062', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_DR_sync', @subscriber = N'DB062', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_DR_sync', @subscriber = N'DBTP10C', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_DR_sync', @subscriber = N'DBTP10C', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO

-- Adding the transactional publication
use [CustDB]
exec sp_addpublication @publication = N'CustDB_ExchangeDaily', @description = N'Transactional publication of database ''CustDB'' from Publisher ''DBTRANS''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'false', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'CustDB_ExchangeDaily', @frequency_type = 4, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 8, @frequency_subday_interval = 1, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1
exec sp_grant_publication_access @publication = N'CustDB_ExchangeDaily', @login = N'sa'
GO
exec sp_grant_publication_access @publication = N'CustDB_ExchangeDaily', @login = N'NT AUTHORITY\SYSTEM'
GO
exec sp_grant_publication_access @publication = N'CustDB_ExchangeDaily', @login = N'ONEWORKS\RDVivi'
GO
exec sp_grant_publication_access @publication = N'CustDB_ExchangeDaily', @login = N'ONEWORKS\Viet'
GO
exec sp_grant_publication_access @publication = N'CustDB_ExchangeDaily', @login = N'ONEWORKS\sasrp'
GO
exec sp_grant_publication_access @publication = N'CustDB_ExchangeDaily', @login = N'ONEWORKS\RDCooper'
GO
exec sp_grant_publication_access @publication = N'CustDB_ExchangeDaily', @login = N'ONEWORKS\sqladmin'
GO
exec sp_grant_publication_access @publication = N'CustDB_ExchangeDaily', @login = N'NT SERVICE\SQLSERVERAGENT'
GO
exec sp_grant_publication_access @publication = N'CustDB_ExchangeDaily', @login = N'NT SERVICE\MSSQLSERVER'
GO
exec sp_grant_publication_access @publication = N'CustDB_ExchangeDaily', @login = N'vnLukas'
GO
exec sp_grant_publication_access @publication = N'CustDB_ExchangeDaily', @login = N'RDVivi'
GO
exec sp_grant_publication_access @publication = N'CustDB_ExchangeDaily', @login = N'RDCooper'
GO
exec sp_grant_publication_access @publication = N'CustDB_ExchangeDaily', @login = N'vnJoe'
GO
exec sp_grant_publication_access @publication = N'CustDB_ExchangeDaily', @login = N'Viet'
GO

-- Adding the transactional articles
use [CustDB]
exec sp_addarticle @publication = N'CustDB_ExchangeDaily', @article = N'Acc_GroupExtraCommRateSetting', @source_owner = N'dbo', @source_object = N'Acc_GroupExtraCommRateSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Acc_GroupExtraCommRateSetting', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAcc_GroupExtraCommRateSetting]', @del_cmd = N'CALL [sp_MSdel_dboAcc_GroupExtraCommRateSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboAcc_GroupExtraCommRateSetting]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_ExchangeDaily', @article = N'Acc_GroupExtraPT2Setting', @source_owner = N'dbo', @source_object = N'Acc_GroupExtraPT2Setting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Acc_GroupExtraPT2Setting', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAcc_GroupExtraPT2Setting]', @del_cmd = N'CALL [sp_MSdel_dboAcc_GroupExtraPT2Setting]', @upd_cmd = N'SCALL [sp_MSupd_dboAcc_GroupExtraPT2Setting]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_ExchangeDaily', @article = N'Acc_GroupExtraPTSetting', @source_owner = N'dbo', @source_object = N'Acc_GroupExtraPTSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Acc_GroupExtraPTSetting', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAcc_GroupExtraPTSetting]', @del_cmd = N'CALL [sp_MSdel_dboAcc_GroupExtraPTSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboAcc_GroupExtraPTSetting]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_ExchangeDaily', @article = N'CurrencyModifier_History', @source_owner = N'dbo', @source_object = N'CurrencyModifier_History', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CurrencyModifier_History', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCurrencyModifier_History]', @del_cmd = N'CALL [sp_MSdel_dboCurrencyModifier_History]', @upd_cmd = N'SCALL [sp_MSupd_dboCurrencyModifier_History]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_ExchangeDaily', @article = N'ExchangeDailyOanda', @source_owner = N'dbo', @source_object = N'ExchangeDailyOanda', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'ExchangeDailyOanda', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboExchangeDailyOanda]', @del_cmd = N'CALL [sp_MSdel_dboExchangeDailyOanda]', @upd_cmd = N'SCALL [sp_MSupd_dboExchangeDailyOanda]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_ExchangeDaily', @article = N'TOControl_GlobalSetting', @source_owner = N'dbo', @source_object = N'TOControl_GlobalSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'TOControl_GlobalSetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboTOControl_GlobalSetting]', @del_cmd = N'CALL [sp_MSdel_dboTOControl_GlobalSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboTOControl_GlobalSetting]'
GO

-- Adding the transactional subscriptions
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_ExchangeDaily', @subscriber = N'DB052', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_ExchangeDaily', @subscriber = N'DB052', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_ExchangeDaily', @subscriber = N'DB053', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_ExchangeDaily', @subscriber = N'DB053', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_ExchangeDaily', @subscriber = N'DB054', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_ExchangeDaily', @subscriber = N'DB054', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_ExchangeDaily', @subscriber = N'DB055', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_ExchangeDaily', @subscriber = N'DB055', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_ExchangeDaily', @subscriber = N'DB061', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_ExchangeDaily', @subscriber = N'DB061', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_ExchangeDaily', @subscriber = N'DB062', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_ExchangeDaily', @subscriber = N'DB062', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_ExchangeDaily', @subscriber = N'DBTP10C', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_ExchangeDaily', @subscriber = N'DBTP10C', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO

-- Adding the transactional publication
use [CustDB]
exec sp_addpublication @publication = N'CustDB_ExecRepAcc_Cust', @description = N'Transactional publication of database ''CustDB'' from Publisher ''DBTRANS''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'false', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'CustDB_ExecRepAcc_Cust', @frequency_type = 4, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 8, @frequency_subday_interval = 1, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1
exec sp_grant_publication_access @publication = N'CustDB_ExecRepAcc_Cust', @login = N'sa'
GO
exec sp_grant_publication_access @publication = N'CustDB_ExecRepAcc_Cust', @login = N'NT AUTHORITY\SYSTEM'
GO
exec sp_grant_publication_access @publication = N'CustDB_ExecRepAcc_Cust', @login = N'ONEWORKS\RDVivi'
GO
exec sp_grant_publication_access @publication = N'CustDB_ExecRepAcc_Cust', @login = N'ONEWORKS\Viet'
GO
exec sp_grant_publication_access @publication = N'CustDB_ExecRepAcc_Cust', @login = N'ONEWORKS\sasrp'
GO
exec sp_grant_publication_access @publication = N'CustDB_ExecRepAcc_Cust', @login = N'ONEWORKS\RDCooper'
GO
exec sp_grant_publication_access @publication = N'CustDB_ExecRepAcc_Cust', @login = N'ONEWORKS\sqladmin'
GO
exec sp_grant_publication_access @publication = N'CustDB_ExecRepAcc_Cust', @login = N'NT SERVICE\SQLSERVERAGENT'
GO
exec sp_grant_publication_access @publication = N'CustDB_ExecRepAcc_Cust', @login = N'NT SERVICE\MSSQLSERVER'
GO
exec sp_grant_publication_access @publication = N'CustDB_ExecRepAcc_Cust', @login = N'vnLukas'
GO
exec sp_grant_publication_access @publication = N'CustDB_ExecRepAcc_Cust', @login = N'RDVivi'
GO
exec sp_grant_publication_access @publication = N'CustDB_ExecRepAcc_Cust', @login = N'RDCooper'
GO
exec sp_grant_publication_access @publication = N'CustDB_ExecRepAcc_Cust', @login = N'vnJoe'
GO
exec sp_grant_publication_access @publication = N'CustDB_ExecRepAcc_Cust', @login = N'Viet'
GO

-- Adding the transactional articles
use [CustDB]
exec sp_addarticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_00', @source_owner = N'dbo', @source_object = N'Acc_ExecRep_Cust_00', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_ExecRep_Cust_00', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_01', @source_owner = N'dbo', @source_object = N'Acc_ExecRep_Cust_01', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_ExecRep_Cust_01', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_02', @source_owner = N'dbo', @source_object = N'Acc_ExecRep_Cust_02', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_ExecRep_Cust_02', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_03', @source_owner = N'dbo', @source_object = N'Acc_ExecRep_Cust_03', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_ExecRep_Cust_03', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_04', @source_owner = N'dbo', @source_object = N'Acc_ExecRep_Cust_04', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_ExecRep_Cust_04', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_05', @source_owner = N'dbo', @source_object = N'Acc_ExecRep_Cust_05', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_ExecRep_Cust_05', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_06', @source_owner = N'dbo', @source_object = N'Acc_ExecRep_Cust_06', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_ExecRep_Cust_06', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_07', @source_owner = N'dbo', @source_object = N'Acc_ExecRep_Cust_07', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_ExecRep_Cust_07', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_08', @source_owner = N'dbo', @source_object = N'Acc_ExecRep_Cust_08', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_ExecRep_Cust_08', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_09', @source_owner = N'dbo', @source_object = N'Acc_ExecRep_Cust_09', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_ExecRep_Cust_09', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_10', @source_owner = N'dbo', @source_object = N'Acc_ExecRep_Cust_10', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_ExecRep_Cust_10', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_11', @source_owner = N'dbo', @source_object = N'Acc_ExecRep_Cust_11', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_ExecRep_Cust_11', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_12', @source_owner = N'dbo', @source_object = N'Acc_ExecRep_Cust_12', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_ExecRep_Cust_12', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_13', @source_owner = N'dbo', @source_object = N'Acc_ExecRep_Cust_13', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_ExecRep_Cust_13', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_14', @source_owner = N'dbo', @source_object = N'Acc_ExecRep_Cust_14', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_ExecRep_Cust_14', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_15', @source_owner = N'dbo', @source_object = N'Acc_ExecRep_Cust_15', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_ExecRep_Cust_15', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_16', @source_owner = N'dbo', @source_object = N'Acc_ExecRep_Cust_16', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_ExecRep_Cust_16', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_17', @source_owner = N'dbo', @source_object = N'Acc_ExecRep_Cust_17', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_ExecRep_Cust_17', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_18', @source_owner = N'dbo', @source_object = N'Acc_ExecRep_Cust_18', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_ExecRep_Cust_18', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'Acc_ExecRep_Cust_19', @source_owner = N'dbo', @source_object = N'Acc_ExecRep_Cust_19', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Acc_ExecRep_Cust_19', @destination_owner = N'dbo', @status = 0
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_ExecRepAcc_Cust', @article = N'f_CheckRepTable', @source_owner = N'dbo', @source_object = N'f_CheckRepTable', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CheckRepTable', @destination_owner = N'dbo', @status = 16
GO

-- Adding the transactional subscriptions
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_ExecRepAcc_Cust', @subscriber = N'DB04ADMIN1', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_ExecRepAcc_Cust', @subscriber = N'DB04ADMIN1', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_ExecRepAcc_Cust', @subscriber = N'DB04ADMIN2', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_ExecRepAcc_Cust', @subscriber = N'DB04ADMIN2', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_ExecRepAcc_Cust', @subscriber = N'DB05', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_ExecRepAcc_Cust', @subscriber = N'DB05', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_ExecRepAcc_Cust', @subscriber = N'DB052', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_ExecRepAcc_Cust', @subscriber = N'DB052', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_ExecRepAcc_Cust', @subscriber = N'DB053', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_ExecRepAcc_Cust', @subscriber = N'DB053', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_ExecRepAcc_Cust', @subscriber = N'DB054', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_ExecRepAcc_Cust', @subscriber = N'DB054', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_ExecRepAcc_Cust', @subscriber = N'DB055', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_ExecRepAcc_Cust', @subscriber = N'DB055', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_ExecRepAcc_Cust', @subscriber = N'DB05BK1', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_ExecRepAcc_Cust', @subscriber = N'DB05BK1', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_ExecRepAcc_Cust', @subscriber = N'DB061', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_ExecRepAcc_Cust', @subscriber = N'DB061', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_ExecRepAcc_Cust', @subscriber = N'DB062', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_ExecRepAcc_Cust', @subscriber = N'DB062', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_ExecRepAcc_Cust', @subscriber = N'DBTP10C', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_ExecRepAcc_Cust', @subscriber = N'DBTP10C', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO

-- Adding the transactional publication
use [CustDB]
exec sp_addpublication @publication = N'CustDB_Login_Exchange', @description = N'Transactional publication of database ''CustDB'' from Publisher ''DBTRANS''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'false', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'CustDB_Login_Exchange', @frequency_type = 4, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 8, @frequency_subday_interval = 1, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1
exec sp_grant_publication_access @publication = N'CustDB_Login_Exchange', @login = N'sa'
GO
exec sp_grant_publication_access @publication = N'CustDB_Login_Exchange', @login = N'NT AUTHORITY\SYSTEM'
GO
exec sp_grant_publication_access @publication = N'CustDB_Login_Exchange', @login = N'ONEWORKS\RDVivi'
GO
exec sp_grant_publication_access @publication = N'CustDB_Login_Exchange', @login = N'ONEWORKS\Viet'
GO
exec sp_grant_publication_access @publication = N'CustDB_Login_Exchange', @login = N'ONEWORKS\sasrp'
GO
exec sp_grant_publication_access @publication = N'CustDB_Login_Exchange', @login = N'ONEWORKS\RDCooper'
GO
exec sp_grant_publication_access @publication = N'CustDB_Login_Exchange', @login = N'ONEWORKS\sqladmin'
GO
exec sp_grant_publication_access @publication = N'CustDB_Login_Exchange', @login = N'NT SERVICE\SQLSERVERAGENT'
GO
exec sp_grant_publication_access @publication = N'CustDB_Login_Exchange', @login = N'NT SERVICE\MSSQLSERVER'
GO
exec sp_grant_publication_access @publication = N'CustDB_Login_Exchange', @login = N'vnLukas'
GO
exec sp_grant_publication_access @publication = N'CustDB_Login_Exchange', @login = N'RDVivi'
GO
exec sp_grant_publication_access @publication = N'CustDB_Login_Exchange', @login = N'RDCooper'
GO
exec sp_grant_publication_access @publication = N'CustDB_Login_Exchange', @login = N'vnJoe'
GO
exec sp_grant_publication_access @publication = N'CustDB_Login_Exchange', @login = N'Viet'
GO

-- Adding the transactional articles
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Login_Exchange', @article = N'Dot_MemberAllowList', @source_owner = N'dbo', @source_object = N'Dot_MemberAllowList', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x00000000081F509F, @identityrangemanagementoption = N'none', @destination_table = N'Dot_MemberAllowList', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDot_MemberAllowList]', @del_cmd = N'CALL [sp_MSdel_dboDot_MemberAllowList]', @upd_cmd = N'SCALL [sp_MSupd_dboDot_MemberAllowList]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Login_Exchange', @article = N'Dot_StreamingVIP', @source_owner = N'dbo', @source_object = N'Dot_StreamingVIP', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x00000000081F509F, @identityrangemanagementoption = N'none', @destination_table = N'Dot_StreamingVIP', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDot_StreamingVIP]', @del_cmd = N'CALL [sp_MSdel_dboDot_StreamingVIP]', @upd_cmd = N'SCALL [sp_MSupd_dboDot_StreamingVIP]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Login_Exchange', @article = N'exchange', @source_owner = N'dbo', @source_object = N'exchange', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'exchange', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboexchange]', @del_cmd = N'CALL [sp_MSdel_dboexchange]', @upd_cmd = N'SCALL [sp_MSupd_dboexchange]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Login_Exchange', @article = N'Site', @source_owner = N'dbo', @source_object = N'Site', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x00000000081F509F, @identityrangemanagementoption = N'manual', @destination_table = N'Site', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSite]', @del_cmd = N'CALL [sp_MSdel_dboSite]', @upd_cmd = N'SCALL [sp_MSupd_dboSite]'
GO

-- Adding the transactional subscriptions
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB02', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_Login_Exchange', @subscriber = N'DB02', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB04ADMIN1', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_Login_Exchange', @subscriber = N'DB04ADMIN1', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB04ADMIN2', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_Login_Exchange', @subscriber = N'DB04ADMIN2', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB05', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_Login_Exchange', @subscriber = N'DB05', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB052', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_Login_Exchange', @subscriber = N'DB052', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB053', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_Login_Exchange', @subscriber = N'DB053', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB054', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_Login_Exchange', @subscriber = N'DB054', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB055', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_Login_Exchange', @subscriber = N'DB055', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB05BK1', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_Login_Exchange', @subscriber = N'DB05BK1', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB061', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_Login_Exchange', @subscriber = N'DB061', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DB062', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_Login_Exchange', @subscriber = N'DB062', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DBM2STAGE', @destination_db = N'bodb_Odds', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_Login_Exchange', @subscriber = N'DBM2STAGE', @subscriber_db = N'bodb_Odds', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DBODDSN1', @destination_db = N'bodb_Odds', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_Login_Exchange', @subscriber = N'DBODDSN1', @subscriber_db = N'bodb_Odds', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DBODDSN2', @destination_db = N'bodb_Odds', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_Login_Exchange', @subscriber = N'DBODDSN2', @subscriber_db = N'bodb_Odds', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = xxx, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO
use [CustDB]
exec sp_addsubscription @publication = N'CustDB_Login_Exchange', @subscriber = N'DBTP10C', @destination_db = N'bodb02', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'CustDB_Login_Exchange', @subscriber = N'DBTP10C', @subscriber_db = N'bodb02', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
GO



