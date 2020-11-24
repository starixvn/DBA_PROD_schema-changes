/*
	Task: Change article from replication
	Using UI or run script below @ DBMNL
*/

-- Dropping the transactional articles
use [bodb02]
exec sp_dropsubscription @publication = N'DBMNL_DR_sync_C', @article = N'CustomerClassPolicy', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DBMNL_DR_sync_C', @article = N'CustomerClassPolicy', @force_invalidate_snapshot = 1
GO

-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBMNL_DR_sync_C', @article = N'Age_CustSeq', @source_owner = N'dbo', @source_object = N'Age_CustSeq', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Age_CustSeq', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAge_CustSeq]', @del_cmd = N'CALL [sp_MSdel_dboAge_CustSeq]', @upd_cmd = N'SCALL [sp_MSupd_dboAge_CustSeq]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBMNL_DR_sync_C', @article = N'WinLimit_CustGameMonitoring_History', @source_owner = N'dbo', @source_object = N'WinLimit_CustGameMonitoring_History', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'WinLimit_CustGameMonitoring_History', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboWinLimit_CustGameMonitoring_History]', @del_cmd = N'CALL [sp_MSdel_dboWinLimit_CustGameMonitoring_History]', @upd_cmd = N'SCALL [sp_MSupd_dboWinLimit_CustGameMonitoring_History]'
GO