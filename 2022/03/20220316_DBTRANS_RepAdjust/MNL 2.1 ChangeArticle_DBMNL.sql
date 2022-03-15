/*
	Task: Change article from replication
	Using UI or run script below @ DBMNL
*/

-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBMNL_Bet_n_ExecRep_T', @article = N'CashOutSelling', @source_owner = N'dbo', @source_object = N'CashOutSelling', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CashOutSelling', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCashOutSelling]', @del_cmd = N'CALL [sp_MSdel_dboCashOutSelling]', @upd_cmd = N'SCALL [sp_MSupd_dboCashOutSelling]'
GO