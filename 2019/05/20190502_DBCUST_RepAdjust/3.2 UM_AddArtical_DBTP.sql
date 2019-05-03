/*
	Task: GameRoundBetLimitSettings, f_GenerateSuspendInfo, f_GetSuspendInfoStatus: add articals into replication
	Using UI or run script below @ DBTP
*/

use [bodb02]
exec sp_addarticle @publication = N'DBTP_DR_sync', @article = N'GameRoundBetLimitSettings', @source_owner = N'dbo', @source_object = N'GameRoundBetLimitSettings', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'GameRoundBetLimitSettings', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboGameRoundBetLimitSettings]', @del_cmd = N'CALL [sp_MSdel_dboGameRoundBetLimitSettings]', @upd_cmd = N'SCALL [sp_MSupd_dboGameRoundBetLimitSettings]'
GO


use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_Info', @article = N'f_GenerateSuspendInfo', @source_owner = N'dbo', @source_object = N'f_GenerateSuspendInfo', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_GenerateSuspendInfo', @destination_owner = N'dbo', @status = 16
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_Info', @article = N'f_GetSuspendInfoStatus', @source_owner = N'dbo', @source_object = N'f_GetSuspendInfoStatus', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_GetSuspendInfoStatus', @destination_owner = N'dbo', @status = 16
GO

use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'f_GenerateSuspendInfo', @source_owner = N'dbo', @source_object = N'f_GenerateSuspendInfo', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_GenerateSuspendInfo', @destination_owner = N'dbo', @status = 16
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'f_GetSuspendInfoStatus', @source_owner = N'dbo', @source_object = N'f_GetSuspendInfoStatus', @type = N'func schema only', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'f_GetSuspendInfoStatus', @destination_owner = N'dbo', @status = 16
GO
