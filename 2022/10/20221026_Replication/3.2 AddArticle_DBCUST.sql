/*
	Task: Add article
	Run script below @DBCUST
*/

-- Adding the transactional articles
use [CustDB]
exec sp_addarticle @publication = N'CustDB_DR_sync', @article = N'SportBettypeSettingMatrix', @source_owner = N'dbo', @source_object = N'SportBettypeSettingMatrix', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'SportBettypeSettingMatrix', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSportBettypeSettingMatrix]', @del_cmd = N'CALL [sp_MSdel_dboSportBettypeSettingMatrix]', @upd_cmd = N'SCALL [sp_MSupd_dboSportBettypeSettingMatrix]'
GO