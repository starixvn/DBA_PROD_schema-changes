/*
	Task: Add article
	Run script below @DBTP
*/

-- Adding the transactional publication DBTP_CustInfo_AWS
use [bodb02]
exec sp_addpublication @publication = N'DBTP_CustInfo_AWS', @description = N'Transactional publication of database ''bodb02'' from Publisher ''DBTP''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'false', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'DBTP_CustInfo_AWS', @frequency_type = 1, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 0, @publisher_login = N'sa', @publisher_password = N''
exec sp_grant_publication_access @publication = N'DBTP_CustInfo_AWS', @login = N'sa'
GO
exec sp_grant_publication_access @publication = N'DBTP_CustInfo_AWS', @login = N'NT AUTHORITY\SYSTEM'
GO
exec sp_grant_publication_access @publication = N'DBTP_CustInfo_AWS', @login = N'NT SERVICE\MSSQLSERVER'
GO
exec sp_grant_publication_access @publication = N'DBTP_CustInfo_AWS', @login = N'ONEWORKS\DBTPSQLADMIN'
GO
exec sp_grant_publication_access @publication = N'DBTP_CustInfo_AWS', @login = N'NT SERVICE\SQLSERVERAGENT'
GO
exec sp_grant_publication_access @publication = N'DBTP_CustInfo_AWS', @login = N'ONEWORKS\RDVivi'
GO
exec sp_grant_publication_access @publication = N'DBTP_CustInfo_AWS', @login = N'ONEWORKS\RDVincent'
GO
exec sp_grant_publication_access @publication = N'DBTP_CustInfo_AWS', @login = N'RDVivi'
GO
exec sp_grant_publication_access @publication = N'DBTP_CustInfo_AWS', @login = N'Thien'
GO
exec sp_grant_publication_access @publication = N'DBTP_CustInfo_AWS', @login = N'sasrp'
GO
exec sp_grant_publication_access @publication = N'DBTP_CustInfo_AWS', @login = N'ONEWORKS\Jamie'
GO
exec sp_grant_publication_access @publication = N'DBTP_CustInfo_AWS', @login = N'ONEWORKS\RDSylvia'
GO
exec sp_grant_publication_access @publication = N'DBTP_CustInfo_AWS', @login = N'ONEWORKS\Thien.net'
GO
exec sp_grant_publication_access @publication = N'DBTP_CustInfo_AWS', @login = N'ONEWORKS\Viet'
GO
exec sp_grant_publication_access @publication = N'DBTP_CustInfo_AWS', @login = N'RDSylvia'
GO
exec sp_grant_publication_access @publication = N'DBTP_CustInfo_AWS', @login = N'Viet'
GO
exec sp_grant_publication_access @publication = N'DBTP_CustInfo_AWS', @login = N'RDVictor'
GO
exec sp_grant_publication_access @publication = N'DBTP_CustInfo_AWS', @login = N'RDCooper'
GO
exec sp_grant_publication_access @publication = N'DBTP_CustInfo_AWS', @login = N'vnLukas'
GO
exec sp_grant_publication_access @publication = N'DBTP_CustInfo_AWS', @login = N'RDBenLee'
GO
exec sp_grant_publication_access @publication = N'DBTP_CustInfo_AWS', @login = N'vnDaniel'
GO
exec sp_grant_publication_access @publication = N'DBTP_CustInfo_AWS', @login = N'RDLeon'
GO
exec sp_grant_publication_access @publication = N'DBTP_CustInfo_AWS', @login = N'ONEWORKS\sqladmin'
GO
exec sp_grant_publication_access @publication = N'DBTP_CustInfo_AWS', @login = N'vnJoe'
GO
exec sp_grant_publication_access @publication = N'DBTP_CustInfo_AWS', @login = N'vnBilly'
GO
exec sp_grant_publication_access @publication = N'DBTP_CustInfo_AWS', @login = N'vnPatrick'
GO
exec sp_grant_publication_access @publication = N'DBTP_CustInfo_AWS', @login = N'RDAlfie'
GO
exec sp_grant_publication_access @publication = N'DBTP_CustInfo_AWS', @login = N'vnHelen'
GO
exec sp_grant_publication_access @publication = N'DBTP_CustInfo_AWS', @login = N'RDCharlie'
GO
exec sp_grant_publication_access @publication = N'DBTP_CustInfo_AWS', @login = N'RDMei'
GO


-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBTP_CustInfo_AWS', @article = N'custInfo', @source_owner = N'dbo', @source_object = N'custInfo', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'custInfo', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dbocustInfo]', @del_cmd = N'CALL [sp_MSdel_dbocustInfo]', @upd_cmd = N'SCALL [sp_MSupd_dbocustInfo]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_CustInfo_AWS', @article = N'Customer', @source_owner = N'dbo', @source_object = N'Customer', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'manual', @destination_table = N'Customer', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboCustomer]', @del_cmd = N'CALL [sp_MSdel_dboCustomer]', @upd_cmd = N'SCALL [sp_MSupd_dboCustomer]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_CustInfo_AWS', @article = N'Dep_CustSuper', @source_owner = N'dbo', @source_object = N'Dep_CustSuper', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'Dep_CustSuper', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboDep_CustSuper]', @del_cmd = N'CALL [sp_MSdel_dboDep_CustSuper]', @upd_cmd = N'SCALL [sp_MSupd_dboDep_CustSuper]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_CustInfo_AWS', @article = N'exchange', @source_owner = N'dbo', @source_object = N'exchange', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'exchange', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboexchange]', @del_cmd = N'CALL [sp_MSdel_dboexchange]', @upd_cmd = N'SCALL [sp_MSupd_dboexchange]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_CustInfo_AWS', @article = N'ExchangeDailyOanda', @source_owner = N'dbo', @source_object = N'ExchangeDailyOanda', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'ExchangeDailyOanda', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboExchangeDailyOanda]', @del_cmd = N'CALL [sp_MSdel_dboExchangeDailyOanda]', @upd_cmd = N'SCALL [sp_MSupd_dboExchangeDailyOanda]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_CustInfo_AWS', @article = N'BetTradeCust', @source_owner = N'dbo', @source_object = N'BetTradeCust', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'BetTradeCust', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboBetTradeCust]', @del_cmd = N'CALL [sp_MSdel_dboBetTradeCust]', @upd_cmd = N'SCALL [sp_MSupd_dboBetTradeCust]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_CustInfo_AWS', @article = N'TradeCust', @source_owner = N'dbo', @source_object = N'TradeCust', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'TradeCust', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboTradeCust]', @del_cmd = N'CALL [sp_MSdel_dboTradeCust]', @upd_cmd = N'SCALL [sp_MSupd_dboTradeCust]'
GO


--- add pull subscription (run this part on publisher)
use [bodb02]
-- Parameter @sync_type is scripted as 'automatic', please adjust when appropriate.
exec sp_addsubscription @publication = N'DBTP_CustInfo_AWS', @subscriber = N'DBBAL', @destination_db = N'bodb02', @sync_type = N'replication support only', @subscription_type = N'pull', @update_mode = N'read only'
GO

