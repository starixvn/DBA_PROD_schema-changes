/*
	Task: Add article
	Run script below @DBTP
*/

-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Customer_n_Setting', @article = N'Dep_CustCategoryHistory', @source_owner = N'dbo', @source_object = N'Dep_CustCategoryHistory', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000847589F, @identityrangemanagementoption = N'manual', @destination_table = N'Dep_CustCategoryHistory', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustCategoryHistory]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustCategoryHistory]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustCategoryHistory]'
GO