/*
	Task: Add articles to publication
	Run on DB02
*/


-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DB02_Sync_DR', @article = N'SettlementSpecialBettypeProfile', @source_owner = N'dbo', @source_object = N'SettlementSpecialBettypeProfile', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'SettlementSpecialBettypeProfile', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSettlementSpecialBettypeProfile]', @del_cmd = N'CALL [sp_MSdel_dboSettlementSpecialBettypeProfile]', @upd_cmd = N'SCALL [sp_MSupd_dboSettlementSpecialBettypeProfile]'
GO

-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DB02_Trans_Odds_Info', @article = N'SettlementSpecialBettypeProfile', @source_owner = N'dbo', @source_object = N'SettlementSpecialBettypeProfile', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'SettlementSpecialBettypeProfile', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSettlementSpecialBettypeProfile]', @del_cmd = N'CALL [sp_MSdel_dboSettlementSpecialBettypeProfile]', @upd_cmd = N'SCALL [sp_MSupd_dboSettlementSpecialBettypeProfile]'
