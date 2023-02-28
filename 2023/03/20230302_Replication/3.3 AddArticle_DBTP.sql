/*
	Task: Add articles
	Run script below @DBTP - add 40 articles Bet_ExecRep_NAP_Admin_[01-10]_UAT[1-4]to pub DBTP_Bet_n_ExecRep, DBTP_Bet_n_ExecRep_AWS
*/

-- Adding the transactional articles (TW)
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'Bet_ExecRep_20', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_20', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_20', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'Bet_ExecRep_21', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_21', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_21', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'Bet_ExecRep_22', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_22', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_22', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'Bet_ExecRep_23', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_23', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_23', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'Bet_ExecRep_24', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_24', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_24', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'Bet_ExecRep_25', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_25', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_25', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'Bet_ExecRep_26', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_26', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_26', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'Bet_ExecRep_27', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_27', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_27', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'Bet_ExecRep_28', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_28', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_28', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'Bet_ExecRep_29', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_29', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_29', @destination_owner = N'dbo', @status = 0
GO


--=======================================================================================================

-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'Bet_ExecRep_NAP_Admin_01_UAT4', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_01_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_01_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'Bet_ExecRep_NAP_Admin_02_UAT4', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_02_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_02_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'Bet_ExecRep_NAP_Admin_03_UAT4', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_03_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_03_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'Bet_ExecRep_NAP_Admin_04_UAT4', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_04_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_04_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'Bet_ExecRep_NAP_Admin_05_UAT4', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_05_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_05_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'Bet_ExecRep_NAP_Admin_06_UAT4', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_06_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_06_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'Bet_ExecRep_NAP_Admin_07_UAT4', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_07_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_07_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'Bet_ExecRep_NAP_Admin_08_UAT4', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_08_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_08_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'Bet_ExecRep_NAP_Admin_09_UAT4', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_09_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_09_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'Bet_ExecRep_NAP_Admin_10_UAT4', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_10_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_10_UAT4', @destination_owner = N'dbo', @status = 0
GO

-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'ExecRep_NAP_Admin_01_UAT4', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_01_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_01_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'ExecRep_NAP_Admin_02_UAT4', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_02_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_02_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'ExecRep_NAP_Admin_03_UAT4', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_03_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_03_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'ExecRep_NAP_Admin_04_UAT4', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_04_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_04_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'ExecRep_NAP_Admin_05_UAT4', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_05_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_05_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'ExecRep_NAP_Admin_06_UAT4', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_06_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_06_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'ExecRep_NAP_Admin_07_UAT4', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_07_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_07_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'ExecRep_NAP_Admin_08_UAT4', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_08_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_08_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'ExecRep_NAP_Admin_09_UAT4', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_09_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_09_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep', @article = N'ExecRep_NAP_Admin_10_UAT4', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_10_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_10_UAT4', @destination_owner = N'dbo', @status = 0
GO


--=================================================================================================


-- Adding the transactional articles (TW)
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_20', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_20', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_20', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_21', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_21', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_21', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_22', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_22', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_22', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_23', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_23', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_23', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_24', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_24', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_24', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_25', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_25', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_25', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_26', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_26', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_26', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_27', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_27', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_27', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_28', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_28', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_28', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_29', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_29', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_29', @destination_owner = N'dbo', @status = 0
GO

-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_NAP_Admin_01_UAT1', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_01_UAT1', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_01_UAT1', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_NAP_Admin_02_UAT1', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_02_UAT1', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_02_UAT1', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_NAP_Admin_03_UAT1', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_03_UAT1', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_03_UAT1', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_NAP_Admin_04_UAT1', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_04_UAT1', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_04_UAT1', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_NAP_Admin_05_UAT1', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_05_UAT1', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_05_UAT1', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_NAP_Admin_06_UAT1', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_06_UAT1', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_06_UAT1', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_NAP_Admin_07_UAT1', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_07_UAT1', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_07_UAT1', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_NAP_Admin_08_UAT1', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_08_UAT1', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_08_UAT1', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_NAP_Admin_09_UAT1', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_09_UAT1', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_09_UAT1', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_NAP_Admin_10_UAT1', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_10_UAT1', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_10_UAT1', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_NAP_Admin_01_UAT2', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_01_UAT2', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_01_UAT2', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_NAP_Admin_02_UAT2', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_02_UAT2', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_02_UAT2', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_NAP_Admin_03_UAT2', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_03_UAT2', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_03_UAT2', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_NAP_Admin_04_UAT2', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_04_UAT2', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_04_UAT2', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_NAP_Admin_05_UAT2', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_05_UAT2', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_05_UAT2', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_NAP_Admin_06_UAT2', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_06_UAT2', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_06_UAT2', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_NAP_Admin_07_UAT2', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_07_UAT2', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_07_UAT2', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_NAP_Admin_08_UAT2', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_08_UAT2', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_08_UAT2', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_NAP_Admin_09_UAT2', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_09_UAT2', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_09_UAT2', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_NAP_Admin_10_UAT2', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_10_UAT2', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_10_UAT2', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_NAP_Admin_01_UAT3', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_01_UAT3', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_01_UAT3', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_NAP_Admin_02_UAT3', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_02_UAT3', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_02_UAT3', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_NAP_Admin_03_UAT3', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_03_UAT3', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_03_UAT3', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_NAP_Admin_04_UAT3', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_04_UAT3', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_04_UAT3', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_NAP_Admin_05_UAT3', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_05_UAT3', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_05_UAT3', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_NAP_Admin_06_UAT3', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_06_UAT3', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_06_UAT3', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_NAP_Admin_07_UAT3', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_07_UAT3', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_07_UAT3', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_NAP_Admin_08_UAT3', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_08_UAT3', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_08_UAT3', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_NAP_Admin_09_UAT3', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_09_UAT3', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_09_UAT3', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_NAP_Admin_10_UAT3', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_10_UAT3', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_10_UAT3', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_NAP_Admin_01_UAT4', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_01_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_01_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_NAP_Admin_02_UAT4', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_02_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_02_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_NAP_Admin_03_UAT4', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_03_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_03_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_NAP_Admin_04_UAT4', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_04_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_04_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_NAP_Admin_05_UAT4', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_05_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_05_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_NAP_Admin_06_UAT4', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_06_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_06_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_NAP_Admin_07_UAT4', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_07_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_07_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_NAP_Admin_08_UAT4', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_08_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_08_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_NAP_Admin_09_UAT4', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_09_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_09_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'Bet_ExecRep_NAP_Admin_10_UAT4', @source_owner = N'dbo', @source_object = N'Bet_ExecRep_NAP_Admin_10_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'Bet_ExecRep_NAP_Admin_10_UAT4', @destination_owner = N'dbo', @status = 0
GO

-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'ExecRep_NAP_Admin_01_UAT1', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_01_UAT1', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_01_UAT1', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'ExecRep_NAP_Admin_02_UAT1', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_02_UAT1', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_02_UAT1', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'ExecRep_NAP_Admin_03_UAT1', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_03_UAT1', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_03_UAT1', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'ExecRep_NAP_Admin_04_UAT1', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_04_UAT1', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_04_UAT1', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'ExecRep_NAP_Admin_05_UAT1', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_05_UAT1', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_05_UAT1', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'ExecRep_NAP_Admin_06_UAT1', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_06_UAT1', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_06_UAT1', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'ExecRep_NAP_Admin_07_UAT1', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_07_UAT1', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_07_UAT1', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'ExecRep_NAP_Admin_08_UAT1', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_08_UAT1', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_08_UAT1', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'ExecRep_NAP_Admin_09_UAT1', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_09_UAT1', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_09_UAT1', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'ExecRep_NAP_Admin_10_UAT1', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_10_UAT1', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_10_UAT1', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'ExecRep_NAP_Admin_01_UAT2', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_01_UAT2', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_01_UAT2', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'ExecRep_NAP_Admin_02_UAT2', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_02_UAT2', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_02_UAT2', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'ExecRep_NAP_Admin_03_UAT2', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_03_UAT2', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_03_UAT2', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'ExecRep_NAP_Admin_04_UAT2', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_04_UAT2', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_04_UAT2', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'ExecRep_NAP_Admin_05_UAT2', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_05_UAT2', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_05_UAT2', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'ExecRep_NAP_Admin_06_UAT2', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_06_UAT2', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_06_UAT2', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'ExecRep_NAP_Admin_07_UAT2', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_07_UAT2', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_07_UAT2', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'ExecRep_NAP_Admin_08_UAT2', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_08_UAT2', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_08_UAT2', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'ExecRep_NAP_Admin_09_UAT2', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_09_UAT2', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_09_UAT2', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'ExecRep_NAP_Admin_10_UAT2', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_10_UAT2', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_10_UAT2', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'ExecRep_NAP_Admin_01_UAT3', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_01_UAT3', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_01_UAT3', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'ExecRep_NAP_Admin_02_UAT3', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_02_UAT3', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_02_UAT3', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'ExecRep_NAP_Admin_03_UAT3', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_03_UAT3', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_03_UAT3', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'ExecRep_NAP_Admin_04_UAT3', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_04_UAT3', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_04_UAT3', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'ExecRep_NAP_Admin_05_UAT3', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_05_UAT3', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_05_UAT3', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'ExecRep_NAP_Admin_06_UAT3', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_06_UAT3', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_06_UAT3', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'ExecRep_NAP_Admin_07_UAT3', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_07_UAT3', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_07_UAT3', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'ExecRep_NAP_Admin_08_UAT3', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_08_UAT3', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_08_UAT3', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'ExecRep_NAP_Admin_09_UAT3', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_09_UAT3', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_09_UAT3', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'ExecRep_NAP_Admin_10_UAT3', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_10_UAT3', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_10_UAT3', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'ExecRep_NAP_Admin_01_UAT4', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_01_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_01_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'ExecRep_NAP_Admin_02_UAT4', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_02_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_02_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'ExecRep_NAP_Admin_03_UAT4', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_03_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_03_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'ExecRep_NAP_Admin_04_UAT4', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_04_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_04_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'ExecRep_NAP_Admin_05_UAT4', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_05_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_05_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'ExecRep_NAP_Admin_06_UAT4', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_06_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_06_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'ExecRep_NAP_Admin_07_UAT4', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_07_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_07_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'ExecRep_NAP_Admin_08_UAT4', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_08_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_08_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'ExecRep_NAP_Admin_09_UAT4', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_09_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_09_UAT4', @destination_owner = N'dbo', @status = 0
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'ExecRep_NAP_Admin_10_UAT4', @source_owner = N'dbo', @source_object = N'ExecRep_NAP_Admin_10_UAT4', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_NAP_Admin_10_UAT4', @destination_owner = N'dbo', @status = 0
GO


--=================================================================================================



-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBTP_DR_sync', @article = N'SportBettypeSettingMatrix', @source_owner = N'dbo', @source_object = N'SportBettypeSettingMatrix', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'SportBettypeSettingMatrix', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSportBettypeSettingMatrix]', @del_cmd = N'CALL [sp_MSdel_dboSportBettypeSettingMatrix]', @upd_cmd = N'SCALL [sp_MSupd_dboSportBettypeSettingMatrix]'
GO
