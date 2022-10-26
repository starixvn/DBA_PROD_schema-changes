/*
	Task: Add articles
	Run script below @AWS DBTRANS
*/

-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBTrans_ExecRep_UAT', @article = N'Bet_ExecRep_NAP_Admin_01_UAT4', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_01_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_01_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTrans_ExecRep_UAT', @article = N'Bet_ExecRep_NAP_Admin_02_UAT4', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_02_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_02_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTrans_ExecRep_UAT', @article = N'Bet_ExecRep_NAP_Admin_03_UAT4', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_03_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_03_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTrans_ExecRep_UAT', @article = N'Bet_ExecRep_NAP_Admin_04_UAT4', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_04_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_04_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTrans_ExecRep_UAT', @article = N'Bet_ExecRep_NAP_Admin_05_UAT4', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_05_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_05_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTrans_ExecRep_UAT', @article = N'Bet_ExecRep_NAP_Admin_06_UAT4', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_06_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_06_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTrans_ExecRep_UAT', @article = N'Bet_ExecRep_NAP_Admin_07_UAT4', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_07_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_07_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTrans_ExecRep_UAT', @article = N'Bet_ExecRep_NAP_Admin_08_UAT4', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_08_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_08_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTrans_ExecRep_UAT', @article = N'Bet_ExecRep_NAP_Admin_09_UAT4', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_09_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_09_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTrans_ExecRep_UAT', @article = N'Bet_ExecRep_NAP_Admin_10_UAT4', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_10_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_10_UAT4', @destination_owner = N'dbo', @status = 0
GO

-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBTrans_ExecRep_UAT', @article = N'ExecRep_NAP_Admin_01_UAT4', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_01_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_01_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTrans_ExecRep_UAT', @article = N'ExecRep_NAP_Admin_02_UAT4', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_02_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_02_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTrans_ExecRep_UAT', @article = N'ExecRep_NAP_Admin_03_UAT4', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_03_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_03_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTrans_ExecRep_UAT', @article = N'ExecRep_NAP_Admin_04_UAT4', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_04_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_04_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTrans_ExecRep_UAT', @article = N'ExecRep_NAP_Admin_05_UAT4', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_05_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_05_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTrans_ExecRep_UAT', @article = N'ExecRep_NAP_Admin_06_UAT4', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_06_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_06_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTrans_ExecRep_UAT', @article = N'ExecRep_NAP_Admin_07_UAT4', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_07_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_07_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTrans_ExecRep_UAT', @article = N'ExecRep_NAP_Admin_08_UAT4', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_08_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_08_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTrans_ExecRep_UAT', @article = N'ExecRep_NAP_Admin_09_UAT4', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_09_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_09_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTrans_ExecRep_UAT', @article = N'ExecRep_NAP_Admin_10_UAT4', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_10_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_10_UAT4', @destination_owner = N'dbo', @status = 0
GO