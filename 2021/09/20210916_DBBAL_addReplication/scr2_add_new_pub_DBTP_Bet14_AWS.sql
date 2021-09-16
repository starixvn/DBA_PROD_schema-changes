/*
	Task: Add article
	Run script below @DBTP
*/

-- 1. Adding the transactional publication DBTP_Bet14_AWS
use [bodb02]
exec sp_addpublication @publication = N'DBTP_Bet14_AWS', @description = N'Transactional publication of database ''bodb02'' from Publisher ''DBTP''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'false', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'DBTP_Bet14_AWS', @frequency_type = 1, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 0, @publisher_login = N'sa', @publisher_password = N''
exec sp_grant_publication_access @publication = N'DBTP_Bet14_AWS', @login = N'sa'
GO
exec sp_grant_publication_access @publication = N'DBTP_Bet14_AWS', @login = N'NT AUTHORITY\SYSTEM'
GO
exec sp_grant_publication_access @publication = N'DBTP_Bet14_AWS', @login = N'NT SERVICE\MSSQLSERVER'
GO
exec sp_grant_publication_access @publication = N'DBTP_Bet14_AWS', @login = N'ONEWORKS\DBTPSQLADMIN'
GO
exec sp_grant_publication_access @publication = N'DBTP_Bet14_AWS', @login = N'NT SERVICE\SQLSERVERAGENT'
GO
exec sp_grant_publication_access @publication = N'DBTP_Bet14_AWS', @login = N'ONEWORKS\RDVivi'
GO
exec sp_grant_publication_access @publication = N'DBTP_Bet14_AWS', @login = N'ONEWORKS\RDVincent'
GO
exec sp_grant_publication_access @publication = N'DBTP_Bet14_AWS', @login = N'RDVivi'
GO
exec sp_grant_publication_access @publication = N'DBTP_Bet14_AWS', @login = N'Thien'
GO
exec sp_grant_publication_access @publication = N'DBTP_Bet14_AWS', @login = N'sasrp'
GO
exec sp_grant_publication_access @publication = N'DBTP_Bet14_AWS', @login = N'ONEWORKS\Jamie'
GO
exec sp_grant_publication_access @publication = N'DBTP_Bet14_AWS', @login = N'ONEWORKS\RDSylvia'
GO
exec sp_grant_publication_access @publication = N'DBTP_Bet14_AWS', @login = N'ONEWORKS\Thien.net'
GO
exec sp_grant_publication_access @publication = N'DBTP_Bet14_AWS', @login = N'ONEWORKS\Viet'
GO
exec sp_grant_publication_access @publication = N'DBTP_Bet14_AWS', @login = N'RDSylvia'
GO
exec sp_grant_publication_access @publication = N'DBTP_Bet14_AWS', @login = N'Viet'
GO
exec sp_grant_publication_access @publication = N'DBTP_Bet14_AWS', @login = N'RDVictor'
GO
exec sp_grant_publication_access @publication = N'DBTP_Bet14_AWS', @login = N'RDCooper'
GO
exec sp_grant_publication_access @publication = N'DBTP_Bet14_AWS', @login = N'vnLukas'
GO
exec sp_grant_publication_access @publication = N'DBTP_Bet14_AWS', @login = N'RDBenLee'
GO
exec sp_grant_publication_access @publication = N'DBTP_Bet14_AWS', @login = N'vnDaniel'
GO
exec sp_grant_publication_access @publication = N'DBTP_Bet14_AWS', @login = N'RDLeon'
GO
exec sp_grant_publication_access @publication = N'DBTP_Bet14_AWS', @login = N'ONEWORKS\sqladmin'
GO
exec sp_grant_publication_access @publication = N'DBTP_Bet14_AWS', @login = N'vnJoe'
GO
exec sp_grant_publication_access @publication = N'DBTP_Bet14_AWS', @login = N'vnBilly'
GO
exec sp_grant_publication_access @publication = N'DBTP_Bet14_AWS', @login = N'vnPatrick'
GO
exec sp_grant_publication_access @publication = N'DBTP_Bet14_AWS', @login = N'RDAlfie'
GO
exec sp_grant_publication_access @publication = N'DBTP_Bet14_AWS', @login = N'vnHelen'
GO
exec sp_grant_publication_access @publication = N'DBTP_Bet14_AWS', @login = N'RDCharlie'
GO
exec sp_grant_publication_access @publication = N'DBTP_Bet14_AWS', @login = N'RDMei'
GO



-- Adding the transactional articles
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @source_owner = N'dbo', @source_object = N'bettrans14', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'bettrans14', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'true', @ins_cmd = N'CALL [sp_MSins_dbobettrans14]', @del_cmd = N'CALL [sp_MSdel_dbobettrans14]', @upd_cmd = N'SCALL [sp_MSupd_dbobettrans14]'

-- Adding the article's partition column(s)
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'transid', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'custid', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'transdate', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'oddsid', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'hdp1', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'hdp2', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'odds', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'stake', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'status', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'winlost', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'awinlost', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'mwinlost', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'playercomm', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'comm', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'acomm', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'apositiontaking', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'mpositiontaking', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'tpositiontaking', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'playerdiscount', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'discount', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'adiscount', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'livehomescore', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'liveawayscore', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'liveindicator', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'betteam', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'creator', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'refno', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'comstatus', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'winlostdate', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'betfrom', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'betcheck', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'checktime', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'oddsspread', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'actualrate', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'matchid', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'recommend', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'mrecommend', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'ruben', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'betid', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'statuswinlost', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'modds', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'bettype', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'betdaqid', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'actual_stake', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'currency', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'ip', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'transdesc', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'sdiscount', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'scomm', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'spositiontaking', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'swinlost', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'srecommend', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'virtualrate', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'Username', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'CurrencyName', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'oddstype', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'statusID', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'currency2', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'balance', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'SecAcceptFlag', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'transid2', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'recommdate', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'ExtraInfo', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'WalletType', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'BonusID', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'RefCode', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'SettlementTime', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'epositiontaking', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'ReasonID', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @column = N'sort', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1

-- Adding the article synchronization object
exec sp_articleview @publication = N'DBTP_Bet14_AWS', @article = N'bettrans14', @view_name = N'syncobj_0x3337334333453631', @filter_clause = N'', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet14_AWS', @article = N'bettransG14', @source_owner = N'dbo', @source_object = N'bettransG14', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'bettransG14', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dbobettransG14]', @del_cmd = N'CALL [sp_MSdel_dbobettransG14]', @upd_cmd = N'SCALL [sp_MSupd_dbobettransG14]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet14_AWS', @article = N'BettransInfo14', @source_owner = N'dbo', @source_object = N'BettransInfo14', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'BettransInfo14', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboBettransInfo14]', @del_cmd = N'CALL [sp_MSdel_dboBettransInfo14]', @upd_cmd = N'SCALL [sp_MSupd_dboBettransInfo14]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet14_AWS', @article = N'bettransLC14', @source_owner = N'dbo', @source_object = N'bettransLC14', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'bettransLC14', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dbobettransLC14]', @del_cmd = N'CALL [sp_MSdel_dbobettransLC14]', @upd_cmd = N'SCALL [sp_MSupd_dbobettransLC14]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet14_AWS', @article = N'bettransm14', @source_owner = N'dbo', @source_object = N'bettransm14', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'bettransm14', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dbobettransm14]', @del_cmd = N'CALL [sp_MSdel_dbobettransm14]', @upd_cmd = N'SCALL [sp_MSupd_dbobettransm14]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet14_AWS', @article = N'bettransRnG14', @source_owner = N'dbo', @source_object = N'bettransRnG14', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'bettransRnG14', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dbobettransRnG14]', @del_cmd = N'CALL [sp_MSdel_dbobettransRnG14]', @upd_cmd = N'SCALL [sp_MSupd_dbobettransRnG14]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet14_AWS', @article = N'match14', @source_owner = N'dbo', @source_object = N'match14', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'match14', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'true', @ins_cmd = N'CALL [sp_MSins_dbomatch14]', @del_cmd = N'CALL [sp_MSdel_dbomatch14]', @upd_cmd = N'SCALL [sp_MSupd_dbomatch14]'

-- Adding the article's partition column(s)
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'match14', @column = N'matchid', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'match14', @column = N'leagueid', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'match14', @column = N'homeid', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'match14', @column = N'awayid', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'match14', @column = N'eventdate', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'match14', @column = N'eventstatus', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'match14', @column = N'betstatus', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'match14', @column = N'livehomescore', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'match14', @column = N'liveawayscore', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'match14', @column = N'finalhomescore', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'match14', @column = N'finalawayscore', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'match14', @column = N'creator', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'match14', @column = N'matchcode', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'match14', @column = N'kickofftime', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'match14', @column = N'closedtime', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'match14', @column = N'showtime', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'match14', @column = N'hthomescore', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'match14', @column = N'htawayscore', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'match14', @column = N'ruben', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'match14', @column = N'multiple', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'match14', @column = N'yenbet', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'match14', @column = N'exrisk', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'match14', @column = N'sporttype', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'match14', @column = N'homeid2', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'match14', @column = N'awayid2', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'match14', @column = N'DisplayMode', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'match14', @column = N'LeaguePatternID', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'match14', @column = N'HomeDisplayPatternID', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'match14', @column = N'AwayDisplayPatternID', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'match14', @column = N'IsNeutral', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'match14', @column = N'GoalRecord', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'match14', @column = N'settletime', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'match14', @column = N'GlobalShowTime', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'match14', @column = N'ParentID', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'match14', @column = N'IsAutoPayout', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'match14', @column = N'AutoSetting', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'match14', @column = N'ShowTimeDT', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'match14', @column = N'ChildMatchType', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1

-- Adding the article synchronization object
exec sp_articleview @publication = N'DBTP_Bet14_AWS', @article = N'match14', @view_name = N'syncobj_0x4136453745303241', @filter_clause = N'', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet14_AWS', @article = N'outright14', @source_owner = N'dbo', @source_object = N'outright14', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'outright14', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dbooutright14]', @del_cmd = N'CALL [sp_MSdel_dbooutright14]', @upd_cmd = N'SCALL [sp_MSupd_dbooutright14]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet14_AWS', @article = N'VSOutright14', @source_owner = N'dbo', @source_object = N'VSOutright14', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VSOutright14', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'true', @ins_cmd = N'CALL [sp_MSins_dboVSOutright14]', @del_cmd = N'CALL [sp_MSdel_dboVSOutright14]', @upd_cmd = N'SCALL [sp_MSupd_dboVSOutright14]'

-- Adding the article's partition column(s)
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'VSOutright14', @column = N'Orid', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'VSOutright14', @column = N'EventID', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'VSOutright14', @column = N'RacerNum', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'VSOutright14', @column = N'IsFavor', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'VSOutright14', @column = N'EventDate', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'VSOutright14', @column = N'KickoffTime', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'VSOutright14', @column = N'RacerID', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'VSOutright14', @column = N'HumanID', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'VSOutright14', @column = N'WinOdds', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'VSOutright14', @column = N'PlaceOdds', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'VSOutright14', @column = N'Lane', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'VSOutright14', @column = N'MaxBet', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'VSOutright14', @column = N'DisplayMode', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'VSOutright14', @column = N'Placing', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'VSOutright14', @column = N'Colours', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'VSOutright14', @column = N'Creator', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'VSOutright14', @column = N'ChangeTime', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'VSOutright14', @column = N'EventStatus', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1

-- Adding the article synchronization object
exec sp_articleview @publication = N'DBTP_Bet14_AWS', @article = N'VSOutright14', @view_name = N'syncobj_0x4443373533433536', @filter_clause = N'', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet14_AWS', @article = N'VSRaceInfo14', @source_owner = N'dbo', @source_object = N'VSRaceInfo14', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VSRaceInfo14', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'true', @ins_cmd = N'CALL [sp_MSins_dboVSRaceInfo14]', @del_cmd = N'CALL [sp_MSdel_dboVSRaceInfo14]', @upd_cmd = N'SCALL [sp_MSupd_dboVSRaceInfo14]'

-- Adding the article's partition column(s)
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'VSRaceInfo14', @column = N'EventID', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'VSRaceInfo14', @column = N'EventTime', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'VSRaceInfo14', @column = N'LeagueID', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'VSRaceInfo14', @column = N'PayOut', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'VSRaceInfo14', @column = N'EachWay', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'VSRaceInfo14', @column = N'CourseName', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'VSRaceInfo14', @column = N'TrackType', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'VSRaceInfo14', @column = N'Distance', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'VSRaceInfo14', @column = N'Racers', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'VSRaceInfo14', @column = N'ForeCastPayout', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'VSRaceInfo14', @column = N'TriCastPayout', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'VSRaceInfo14', @column = N'CreateDate', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'VSRaceInfo14', @column = N'Calculate', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'VSRaceInfo14', @column = N'SportType', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'VSRaceInfo14', @column = N'ChangeTime', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'VSRaceInfo14', @column = N'EventStatus', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Bet14_AWS', @article = N'VSRaceInfo14', @column = N'BetStatus', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1

-- Adding the article synchronization object
exec sp_articleview @publication = N'DBTP_Bet14_AWS', @article = N'VSRaceInfo14', @view_name = N'syncobj_0x3431363242423346', @filter_clause = N'', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
GO

--- add pull subscription (run this part on publisher)
use [bodb02]
-- Parameter @sync_type is scripted as 'automatic', please adjust when appropriate.
exec sp_addsubscription @publication = N'DBTP_Bet14_AWS', @subscriber = N'DBBAL', @destination_db = N'bodb02', @sync_type = N'replication support only', @subscription_type = N'pull', @update_mode = N'read only'
GO

