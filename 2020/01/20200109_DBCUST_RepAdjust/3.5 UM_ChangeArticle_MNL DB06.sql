/*
	Task: Drop article from replication
	Using UI or run script below @ MNL DB06
*/

-- Add article
use [bodb_Licensee]
exec sp_addarticle @publication = N'DB06_bodb_Licensee', @article = N'LA_ChargeRateByCurrency ', @source_owner = N'dbo', @source_object = N'LA_ChargeRateByCurrency ', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'LA_ChargeRateByCurrency ', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_ChargeRateByCurrency ]', @del_cmd = N'CALL [sp_MSdel_dboLA_ChargeRateByCurrency ]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_ChargeRateByCurrency ]'
GO

-- Drop article
use [bodb02]
exec sp_dropsubscription @publication = N'DB06_DR_sync', @article = N'Intg_VendorAPI', @subscriber = N'all', @destination_db = N'all'
GO
use [bodb02]
exec sp_droparticle @publication = N'DB06_DR_sync', @article = N'Intg_VendorAPI', @force_invalidate_snapshot = 1
GO

