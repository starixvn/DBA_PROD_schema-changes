/*
	Task: Drop article from replication
	Using UI or run script below @ MNL DB06
*/

-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DB06_Customer_Info', @article = N'SportNonOfferedSiteCurrency', @source_owner = N'dbo', @source_object = N'SportNonOfferedSiteCurrency', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'SportNonOfferedSiteCurrency', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSportNonOfferedSiteCurrency]', @del_cmd = N'CALL [sp_MSdel_dboSportNonOfferedSiteCurrency]', @upd_cmd = N'SCALL [sp_MSupd_dboSportNonOfferedSiteCurrency]'
GO