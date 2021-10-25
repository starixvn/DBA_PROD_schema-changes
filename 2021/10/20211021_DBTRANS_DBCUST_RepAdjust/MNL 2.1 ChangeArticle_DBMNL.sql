/*
	Task: Change article from replication
	Using UI or run script below @ DBMNL
*/


-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBMNL_API_Data_T', @article = N'TicketVoiding_ABWhiteList', @source_owner = N'dbo', @source_object = N'TicketVoiding_ABWhiteList', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'TicketVoiding_ABWhiteList', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboTicketVoiding_ABWhiteList]', @del_cmd = N'CALL [sp_MSdel_dboTicketVoiding_ABWhiteList]', @upd_cmd = N'SCALL [sp_MSupd_dboTicketVoiding_ABWhiteList]'
GO