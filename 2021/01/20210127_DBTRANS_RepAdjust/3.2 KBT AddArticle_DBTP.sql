/*
	Task: Add article
	Run script below @DBTRANS
*/


-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBTP_API_Data', @article = N'Ticketvoiding_VoidBetAutomation_Service', @source_owner = N'dbo', @source_object = N'Ticketvoiding_VoidBetAutomation_Service', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'Ticketvoiding_VoidBetAutomation_Service', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboTicketvoiding_VoidBetAutomation_Service]', @del_cmd = N'CALL [sp_MSdel_dboTicketvoiding_VoidBetAutomation_Service]', @upd_cmd = N'SCALL [sp_MSupd_dboTicketvoiding_VoidBetAutomation_Service]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_API_Data', @article = N'BonusTrans', @source_owner = N'dbo', @source_object = N'BonusTrans', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'BonusTrans', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboBonusTrans]', @del_cmd = N'CALL [sp_MSdel_dboBonusTrans]', @upd_cmd = N'SCALL [sp_MSupd_dboBonusTrans]'
GO

