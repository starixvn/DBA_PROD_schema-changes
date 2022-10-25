/*
	Task: Add article to replication
	Run script below @ DBTKO
*/

-- Adding the transactional articles (TW)
use [bodb02]
exec sp_addarticle @publication = N'DBTKO_Bet_n_ExecRep_T', @article = N'Bet_ExecRep_20', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_20', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_20', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTKO_Bet_n_ExecRep_T', @article = N'Bet_ExecRep_21', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_21', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_21', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTKO_Bet_n_ExecRep_T', @article = N'Bet_ExecRep_22', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_22', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_22', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTKO_Bet_n_ExecRep_T', @article = N'Bet_ExecRep_23', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_23', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_23', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTKO_Bet_n_ExecRep_T', @article = N'Bet_ExecRep_24', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_24', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_24', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTKO_Bet_n_ExecRep_T', @article = N'Bet_ExecRep_25', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_25', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_25', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTKO_Bet_n_ExecRep_T', @article = N'Bet_ExecRep_26', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_26', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_26', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTKO_Bet_n_ExecRep_T', @article = N'Bet_ExecRep_27', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_27', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_27', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTKO_Bet_n_ExecRep_T', @article = N'Bet_ExecRep_28', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_28', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_28', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTKO_Bet_n_ExecRep_T', @article = N'Bet_ExecRep_29', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_29', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_29', @destination_owner = N'dbo', @status = 0
GO

-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBTKO_Bet_n_ExecRep_T', @article = N'Bet_ExecRep_NAP_Admin_01_UAT4', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_01_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_01_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTKO_Bet_n_ExecRep_T', @article = N'Bet_ExecRep_NAP_Admin_02_UAT4', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_02_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_02_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTKO_Bet_n_ExecRep_T', @article = N'Bet_ExecRep_NAP_Admin_03_UAT4', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_03_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_03_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTKO_Bet_n_ExecRep_T', @article = N'Bet_ExecRep_NAP_Admin_04_UAT4', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_04_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_04_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTKO_Bet_n_ExecRep_T', @article = N'Bet_ExecRep_NAP_Admin_05_UAT4', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_05_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_05_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTKO_Bet_n_ExecRep_T', @article = N'Bet_ExecRep_NAP_Admin_06_UAT4', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_06_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_06_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTKO_Bet_n_ExecRep_T', @article = N'Bet_ExecRep_NAP_Admin_07_UAT4', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_07_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_07_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTKO_Bet_n_ExecRep_T', @article = N'Bet_ExecRep_NAP_Admin_08_UAT4', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_08_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_08_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTKO_Bet_n_ExecRep_T', @article = N'Bet_ExecRep_NAP_Admin_09_UAT4', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_09_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_09_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTKO_Bet_n_ExecRep_T', @article = N'Bet_ExecRep_NAP_Admin_10_UAT4', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_10_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_10_UAT4', @destination_owner = N'dbo', @status = 0
GO

-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBTKO_Bet_n_ExecRep_T', @article = N'ExecRep_NAP_Admin_01_UAT4', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_01_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_01_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTKO_Bet_n_ExecRep_T', @article = N'ExecRep_NAP_Admin_02_UAT4', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_02_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_02_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTKO_Bet_n_ExecRep_T', @article = N'ExecRep_NAP_Admin_03_UAT4', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_03_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_03_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTKO_Bet_n_ExecRep_T', @article = N'ExecRep_NAP_Admin_04_UAT4', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_04_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_04_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTKO_Bet_n_ExecRep_T', @article = N'ExecRep_NAP_Admin_05_UAT4', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_05_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_05_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTKO_Bet_n_ExecRep_T', @article = N'ExecRep_NAP_Admin_06_UAT4', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_06_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_06_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTKO_Bet_n_ExecRep_T', @article = N'ExecRep_NAP_Admin_07_UAT4', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_07_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_07_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTKO_Bet_n_ExecRep_T', @article = N'ExecRep_NAP_Admin_08_UAT4', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_08_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_08_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTKO_Bet_n_ExecRep_T', @article = N'ExecRep_NAP_Admin_09_UAT4', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_09_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_09_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTKO_Bet_n_ExecRep_T', @article = N'ExecRep_NAP_Admin_10_UAT4', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_10_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_10_UAT4', @destination_owner = N'dbo', @status = 0
GO



-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBTKO_DR_sync_C', @article = N'SportBettypeSettingMatrix', @source_owner = N'dbo', @source_object = N'SportBettypeSettingMatrix', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'SportBettypeSettingMatrix', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSportBettypeSettingMatrix]', @del_cmd = N'CALL [sp_MSdel_dboSportBettypeSettingMatrix]', @upd_cmd = N'SCALL [sp_MSupd_dboSportBettypeSettingMatrix]'
GO