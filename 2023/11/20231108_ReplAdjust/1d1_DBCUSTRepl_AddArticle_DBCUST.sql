/*
	Task: Add articles to publication
	Run on DBCUST
*/


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
exec sp_articlecolumn @publication = N'CustDB_CustInfo', @article = N'custInfo', @column = N'DisableEsports', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_CustInfo', @article = N'custInfo', @column = N'DisableSuperLive', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_CustInfo', @article = N'custInfo', @column = N'DEL_DisableColossusBet', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_CustInfo', @article = N'custInfo', @column = N'DEL_HideColossusBet', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_CustInfo', @article = N'custInfo', @column = N'LockUpd', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_CustInfo', @article = N'custInfo', @column = N'BonusWalletFlag', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_CustInfo', @article = N'custInfo', @column = N'CreditUpdatedDate', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_CustInfo', @article = N'custInfo', @column = N'DangerLevel', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_CustInfo', @article = N'custInfo', @column = N'CustomerClass', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_CustInfo', @article = N'custInfo', @column = N'Danger4', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_CustInfo', @article = N'custInfo', @column = N'Danger5', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_CustInfo', @article = N'custInfo', @column = N'CCSoccer', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_CustInfo', @article = N'custInfo', @column = N'CCBasketball', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_CustInfo', @article = N'custInfo', @column = N'CCEsports', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_CustInfo', @article = N'custInfo', @column = N'CCOtherSports', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_CustInfo', @article = N'custInfo', @column = N'CCNonSports', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'CustDB_CustInfo', @article = N'custInfo', @column = N'autosuspend3', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1

-- Adding the article synchronization object
exec sp_articleview @publication = N'CustDB_CustInfo', @article = N'custInfo', @view_name = N'SYNC_custInfo_1__56', @filter_clause = N'', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
GO


-- Adding the transactional articles
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'custInfo', @source_owner = N'dbo', @source_object = N'custInfo', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'custInfo', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dbocustInfo]', @del_cmd = N'CALL [sp_MSdel_dbocustInfo]', @upd_cmd = N'SCALL [sp_MSupd_dbocustInfo]'
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'custInfo', @source_owner = N'dbo', @source_object = N'custInfo', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'custInfo', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dbocustInfo]', @del_cmd = N'CALL [sp_MSdel_dbocustInfo]', @upd_cmd = N'SCALL [sp_MSupd_dbocustInfo]'
GO


-- Adding the transactional articles
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'f_CustSetting_ProductProfileSelByGroupType', @source_owner = N'dbo', @source_object = N'f_CustSetting_ProductProfileSelByGroupType', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CustSetting_ProductProfileSelByGroupType', @destination_owner = N'dbo', @status = 16
GO
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DBTrans_CustInfo', @article = N'f_CustSetting_ProductProfileSelByGroupType', @source_owner = N'dbo', @source_object = N'f_CustSetting_ProductProfileSelByGroupType', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_CustSetting_ProductProfileSelByGroupType', @destination_owner = N'dbo', @status = 16
GO