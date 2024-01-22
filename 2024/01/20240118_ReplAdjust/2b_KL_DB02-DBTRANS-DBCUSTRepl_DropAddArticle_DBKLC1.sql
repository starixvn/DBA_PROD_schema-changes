/*
	Task: Add articles to publication
	Run on KL DBKLC1
*/


-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBKLC1_Sync_DR_P', @article = N'SettlementSpecialBettypeProfile', @source_owner = N'dbo', @source_object = N'SettlementSpecialBettypeProfile', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'SettlementSpecialBettypeProfile', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSettlementSpecialBettypeProfile]', @del_cmd = N'CALL [sp_MSdel_dboSettlementSpecialBettypeProfile]', @upd_cmd = N'SCALL [sp_MSupd_dboSettlementSpecialBettypeProfile]'
GO


-- Dropping the transactional articles
use [bodb02]
GO
exec sp_dropsubscription @publication = N'DBKLC1_Bet_n_ExecRep_T', @article = N'NAP_Admin_Calculate_MP_9_UAT1', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBKLC1_Bet_n_ExecRep_T', @article = N'NAP_Admin_Calculate_MP_9_UAT1', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBKLC1_Bet_n_ExecRep_T', @article = N'NAP_Admin_Calculate_MP_9_UAT2', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBKLC1_Bet_n_ExecRep_T', @article = N'NAP_Admin_Calculate_MP_9_UAT2', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBKLC1_Bet_n_ExecRep_T', @article = N'NAP_Admin_Calculate_MP_9_UAT3', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBKLC1_Bet_n_ExecRep_T', @article = N'NAP_Admin_Calculate_MP_9_UAT3', @force_invalidate_snapshot = 1
GO

exec sp_dropsubscription @publication = N'DBKLC1_Bet_n_ExecRep_T', @article = N'NAP_Admin_Calculate_MP_9_UAT4', @subscriber = N'all', @destination_db = N'all'
GO
exec sp_droparticle @publication = N'DBKLC1_Bet_n_ExecRep_T', @article = N'NAP_Admin_Calculate_MP_9_UAT4', @force_invalidate_snapshot = 1
GO


--========================================================================================================================================================================
-- Adding the transactional articles - no repl

use [bodb02]
exec sp_addarticle @publication = N'DBKLC1_DR_sync_C', @article = N'WinLimit_CustWinlostGame', @source_owner = N'dbo', @source_object = N'WinLimit_CustWinlostGame', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'WinLimit_CustWinlostGame', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboWinLimit_CustWinlostGame]', @del_cmd = N'CALL [sp_MSdel_dboWinLimit_CustWinlostGame]', @upd_cmd = N'SCALL [sp_MSupd_dboWinLimit_CustWinlostGame]'
GO

-- Adding the transactional articles
-- use [CustDB]
-- exec sp_addarticle @publication = N'DBKLC1_DR_sync_C', @article = N'CustCategoryHistory', @source_owner = N'dbo', @source_object = N'CustCategoryHistory', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'CustCategoryHistory', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustCategoryHistory]', @del_cmd = N'CALL [sp_MSdel_dboCustCategoryHistory]', @upd_cmd = N'SCALL [sp_MSupd_dboCustCategoryHistory]'
-- GO
use [bodb02]
exec sp_addarticle @publication = N'DBKLC1_DR_sync_C', @article = N'CustomerClassPolicy', @source_owner = N'dbo', @source_object = N'CustomerClassPolicy', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'CustomerClassPolicy', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustomerClassPolicy]', @del_cmd = N'CALL [sp_MSdel_dboCustomerClassPolicy]', @upd_cmd = N'SCALL [sp_MSupd_dboCustomerClassPolicy]'
GO



--========================================================================================================================================================================
-- Adding the transactional articles - inhouse repl
use [bodb02]
exec sp_addarticle @publication = N'DBKLC1_DR_sync_C', @article = N'CustomerClassUtilityOfferDetail', @source_owner = N'dbo', @source_object = N'CustomerClassUtilityOfferDetail', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustomerClassUtilityOfferDetail', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustomerClassUtilityOfferDetail]', @del_cmd = N'CALL [sp_MSdel_dboCustomerClassUtilityOfferDetail]', @upd_cmd = N'SCALL [sp_MSupd_dboCustomerClassUtilityOfferDetail]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBKLC1_DR_sync_C', @article = N'CustomerClassUtilityOfferDetail_UAT', @source_owner = N'dbo', @source_object = N'CustomerClassUtilityOfferDetail_UAT', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustomerClassUtilityOfferDetail_UAT', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustomerClassUtilityOfferDetail_UAT]', @del_cmd = N'CALL [sp_MSdel_dboCustomerClassUtilityOfferDetail_UAT]', @upd_cmd = N'SCALL [sp_MSupd_dboCustomerClassUtilityOfferDetail_UAT]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBKLC1_DR_sync_C', @article = N'Dep_CustBonusSharing', @source_owner = N'dbo', @source_object = N'Dep_CustBonusSharing', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_CustBonusSharing', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustBonusSharing]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustBonusSharing]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustBonusSharing]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBKLC1_DR_sync_C', @article = N'Dep_ProductStakeLevelGroup', @source_owner = N'dbo', @source_object = N'Dep_ProductStakeLevelGroup', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_ProductStakeLevelGroup', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_ProductStakeLevelGroup]', @del_cmd = N'CALL [sp_MSdel_dboDep_ProductStakeLevelGroup]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_ProductStakeLevelGroup]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBKLC1_DR_sync_C', @article = N'ProductStakeLevelGroup', @source_owner = N'dbo', @source_object = N'ProductStakeLevelGroup', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'ProductStakeLevelGroup', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProductStakeLevelGroup]', @del_cmd = N'CALL [sp_MSdel_dboProductStakeLevelGroup]', @upd_cmd = N'SCALL [sp_MSupd_dboProductStakeLevelGroup]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBKLC1_DR_sync_C', @article = N'SportBettypeSettingMatrix', @source_owner = N'dbo', @source_object = N'SportBettypeSettingMatrix', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'SportBettypeSettingMatrix', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSportBettypeSettingMatrix]', @del_cmd = N'CALL [sp_MSdel_dboSportBettypeSettingMatrix]', @upd_cmd = N'SCALL [sp_MSupd_dboSportBettypeSettingMatrix]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBKLC1_DR_sync_C', @article = N'CustomerClassNonSportsDetail', @source_owner = N'dbo', @source_object = N'CustomerClassNonSportsDetail', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustomerClassNonSportsDetail', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustomerClassNonSportsDetail]', @del_cmd = N'CALL [sp_MSdel_dboCustomerClassNonSportsDetail]', @upd_cmd = N'SCALL [sp_MSupd_dboCustomerClassNonSportsDetail]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBKLC1_DR_sync_C', @article = N'CustomerClassNonSportsDetail_UAT', @source_owner = N'dbo', @source_object = N'CustomerClassNonSportsDetail_UAT', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'CustomerClassNonSportsDetail_UAT', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustomerClassNonSportsDetail_UAT]', @del_cmd = N'CALL [sp_MSdel_dboCustomerClassNonSportsDetail_UAT]', @upd_cmd = N'SCALL [sp_MSupd_dboCustomerClassNonSportsDetail_UAT]'
GO

-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBKLC1_DR_sync_C', @article = N'CustomerClassUtilityOffer', @source_owner = N'dbo', @source_object = N'CustomerClassUtilityOffer', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'CustomerClassUtilityOffer', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustomerClassUtilityOffer]', @del_cmd = N'CALL [sp_MSdel_dboCustomerClassUtilityOffer]', @upd_cmd = N'SCALL [sp_MSupd_dboCustomerClassUtilityOffer]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBKLC1_DR_sync_C', @article = N'CustomerClassUtilityOffer_UAT', @source_owner = N'dbo', @source_object = N'CustomerClassUtilityOffer_UAT', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'CustomerClassUtilityOffer_UAT', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustomerClassUtilityOffer_UAT]', @del_cmd = N'CALL [sp_MSdel_dboCustomerClassUtilityOffer_UAT]', @upd_cmd = N'SCALL [sp_MSupd_dboCustomerClassUtilityOffer_UAT]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBKLC1_DR_sync_C', @article = N'DomainManagement', @source_owner = N'dbo', @source_object = N'DomainManagement', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'DomainManagement', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDomainManagement]', @del_cmd = N'CALL [sp_MSdel_dboDomainManagement]', @upd_cmd = N'SCALL [sp_MSupd_dboDomainManagement]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBKLC1_DR_sync_C', @article = N'CustomerClassNonSports', @source_owner = N'dbo', @source_object = N'CustomerClassNonSports', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'CustomerClassNonSports', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustomerClassNonSports]', @del_cmd = N'CALL [sp_MSdel_dboCustomerClassNonSports]', @upd_cmd = N'SCALL [sp_MSupd_dboCustomerClassNonSports]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBKLC1_DR_sync_C', @article = N'CustomerClassNonSports_UAT', @source_owner = N'dbo', @source_object = N'CustomerClassNonSports_UAT', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'CustomerClassNonSports_UAT', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustomerClassNonSports_UAT]', @del_cmd = N'CALL [sp_MSdel_dboCustomerClassNonSports_UAT]', @upd_cmd = N'SCALL [sp_MSupd_dboCustomerClassNonSports_UAT]'
GO