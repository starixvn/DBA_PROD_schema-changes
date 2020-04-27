/*
	Task: Drop article from replication
	Using UI or run script below @ MNL DB06
*/

-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DB06_DR_sync', @article = N'CustQRCode', @source_owner = N'dbo', @source_object = N'CustQRCode', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustQRCode', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustQRCode]', @del_cmd = N'CALL [sp_MSdel_dboCustQRCode]', @upd_cmd = N'SCALL [sp_MSupd_dboCustQRCode]'
GO