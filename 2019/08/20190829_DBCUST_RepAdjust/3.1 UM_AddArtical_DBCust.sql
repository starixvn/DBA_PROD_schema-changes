/*
	Task: add articles into replication
	Using UI or run script below @DBCUST
*/


-- Add articles
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'BetRestriction_Site', @source_owner = N'dbo', @source_object = N'BetRestriction_Site', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'BetRestriction_Site', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboBetRestriction_Site]', @del_cmd = N'CALL [sp_MSdel_dboBetRestriction_Site]', @upd_cmd = N'SCALL [sp_MSupd_dboBetRestriction_Site]'
GO

use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'BetRestriction_Customer', @source_owner = N'dbo', @source_object = N'BetRestriction_Customer', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'BetRestriction_Customer', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboBetRestriction_Customer]', @del_cmd = N'CALL [sp_MSdel_dboBetRestriction_Customer]', @upd_cmd = N'SCALL [sp_MSupd_dboBetRestriction_Customer]'
GO

use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'BetRestriction_Currency', @source_owner = N'dbo', @source_object = N'BetRestriction_Currency', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'BetRestriction_Currency', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboBetRestriction_Currency]', @del_cmd = N'CALL [sp_MSdel_dboBetRestriction_Currency]', @upd_cmd = N'SCALL [sp_MSupd_dboBetRestriction_Currency]'
GO

use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'BetRestriction_Setting', @source_owner = N'dbo', @source_object = N'BetRestriction_Setting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'BetRestriction_Setting', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboBetRestriction_Setting]', @del_cmd = N'CALL [sp_MSdel_dboBetRestriction_Setting]', @upd_cmd = N'SCALL [sp_MSupd_dboBetRestriction_Setting]'
GO

--------------
use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'ProblemAccountReason', @source_owner = N'dbo', @source_object = N'ProblemAccountReason', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'ProblemAccountReason', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProblemAccountReason]', @del_cmd = N'CALL [sp_MSdel_dboProblemAccountReason]', @upd_cmd = N'SCALL [sp_MSupd_dboProblemAccountReason]'
GO

use [CustDB]
exec sp_addarticle @publication = N'CustDB_CustSetting', @article = N'CS_ProblemAccount', @source_owner = N'dbo', @source_object = N'CS_ProblemAccount', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CS_ProblemAccount', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCS_ProblemAccount]', @del_cmd = N'CALL [sp_MSdel_dboCS_ProblemAccount]', @upd_cmd = N'SCALL [sp_MSupd_dboCS_ProblemAccount]'
GO
