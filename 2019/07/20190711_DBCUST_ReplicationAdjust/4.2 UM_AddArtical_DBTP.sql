/*
	Task: add articles / add tables into replication
	Using UI or run script below @ DBTP
*/

use [bodb02]
GO
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'CS_ProductBetSetting', @source_owner = N'dbo', @source_object = N'CS_ProductBetSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CS_ProductBetSetting', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCS_ProductBetSetting]', @del_cmd = N'CALL [sp_MSdel_dboCS_ProductBetSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboCS_ProductBetSetting]'
GO

-----VR tables

use [bodb02]
GO
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'VRLeagueGroup', @source_owner = N'dbo', @source_object = N'VRLeagueGroup', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'VRLeagueGroup', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVRLeagueGroup]', @del_cmd = N'CALL [sp_MSdel_dboVRLeagueGroup]', @upd_cmd = N'SCALL [sp_MSupd_dboVRLeagueGroup]'
GO

use [bodb02]
GO
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'VRLeagueGroupMapping', @source_owner = N'dbo', @source_object = N'VRLeagueGroupMapping', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'VRLeagueGroupMapping', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVRLeagueGroupMapping]', @del_cmd = N'CALL [sp_MSdel_dboVRLeagueGroupMapping]', @upd_cmd = N'SCALL [sp_MSupd_dboVRLeagueGroupMapping]'
GO

use [bodb02]
GO
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'VRBettypeGroup', @source_owner = N'dbo', @source_object = N'VRBettypeGroup', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'VRBettypeGroup', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVRBettypeGroup]', @del_cmd = N'CALL [sp_MSdel_dboVRBettypeGroup]', @upd_cmd = N'SCALL [sp_MSupd_dboVRBettypeGroup]'
GO

use [bodb02]
GO
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'VRValueMapping', @source_owner = N'dbo', @source_object = N'VRValueMapping', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'VRValueMapping', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVRValueMapping]', @del_cmd = N'CALL [sp_MSdel_dboVRValueMapping]', @upd_cmd = N'SCALL [sp_MSupd_dboVRValueMapping]'
GO

use [bodb02]
GO
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'VRSettingHierarchy', @source_owner = N'dbo', @source_object = N'VRSettingHierarchy', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'VRSettingHierarchy', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVRSettingHierarchy]', @del_cmd = N'CALL [sp_MSdel_dboVRSettingHierarchy]', @upd_cmd = N'SCALL [sp_MSupd_dboVRSettingHierarchy]'
GO

use [bodb02]
GO
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'VRCustSetting', @source_owner = N'dbo', @source_object = N'VRCustSetting', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'VRCustSetting', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVRCustSetting]', @del_cmd = N'CALL [sp_MSdel_dboVRCustSetting]', @upd_cmd = N'SCALL [sp_MSupd_dboVRCustSetting]'
GO
