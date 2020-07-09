/*
	Task: Change article from replication
	Using UI or run script below @ DBMNL
*/

-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBMNL_Customer_Setting_C', @article = N'BetLimitControlProduct', @source_owner = N'dbo', @source_object = N'BetLimitControlProduct', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'BetLimitControlProduct', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboBetLimitControlProduct]', @del_cmd = N'CALL [sp_MSdel_dboBetLimitControlProduct]', @upd_cmd = N'SCALL [sp_MSupd_dboBetLimitControlProduct]'
GO

use [bodb02]
exec sp_addarticle @publication = N'DBMNL_Customer_Setting_C', @article = N'BetLimitControlCustSetting', @source_owner = N'dbo', @source_object = N'BetLimitControlCustSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'BetLimitControlCustSetting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboBetLimitControlCustSetting]', @del_cmd = N'CALL [sp_MSdel_dboBetLimitControlCustSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboBetLimitControlCustSetting]'
GO

use [bodb02]
exec sp_addarticle @publication = N'DBMNL_Customer_Setting_C', @article = N'BetLimitControlTypeDetail', @source_owner = N'dbo', @source_object = N'BetLimitControlTypeDetail', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'BetLimitControlTypeDetail', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboBetLimitControlTypeDetail]', @del_cmd = N'CALL [sp_MSdel_dboBetLimitControlTypeDetail]', @upd_cmd = N'SCALL [sp_MSupd_dboBetLimitControlTypeDetail]'
GO

use [bodb02]
exec sp_addarticle @publication = N'DBMNL_Customer_Setting_C', @article = N'BetLimitControlType', @source_owner = N'dbo', @source_object = N'BetLimitControlType', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'BetLimitControlType', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboBetLimitControlType]', @del_cmd = N'CALL [sp_MSdel_dboBetLimitControlType]', @upd_cmd = N'SCALL [sp_MSupd_dboBetLimitControlType]'
GO