/*
	Task: add articles into replication
	Using UI or run script below @MNL DBCUST
*/



-- Add articles
use [CustDB]
exec sp_addarticle @publication = N'CustDB_Customer_Info', @article = N'Age_ProfilePicture', @source_owner = N'dbo', @source_object = N'Age_ProfilePicture', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'none', @destination_table = N'Age_ProfilePicture', @destination_owner = N'dbo', @status = 8, @vertical_partition = N'true', @ins_cmd = N'CALL [sp_MSins_dboAge_ProfilePicture]', @del_cmd = N'CALL [sp_MSdel_dboAge_ProfilePicture]', @upd_cmd = N'SCALL [sp_MSupd_dboAge_ProfilePicture]'
GO

--------------
use [bodb_Licensee]
exec sp_addarticle @publication = N'DBCust_bodb_licensee_LA', @article = N'LA_UserSettings', @source_owner = N'dbo', @source_object = N'LA_UserSettings', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'LA_UserSettings', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboLA_UserSettings]', @del_cmd = N'CALL [sp_MSdel_dboLA_UserSettings]', @upd_cmd = N'SCALL [sp_MSupd_dboLA_UserSettings]'
GO