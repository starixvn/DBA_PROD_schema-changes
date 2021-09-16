/*
	Task: Add article
	Run script below @DBTP
*/

-- 1.Adding the transactional articles on publication [DBTP_API_Data_AWS]
------use [bodb02]
------exec sp_addarticle @publication = N'DBTP_API_Data_AWS', @article = N'BetTradeCust', @source_owner = N'dbo', @source_object = N'BetTradeCust', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'BetTradeCust', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboBetTradeCust]', @del_cmd = N'CALL [sp_MSdel_dboBetTradeCust]', @upd_cmd = N'SCALL [sp_MSupd_dboBetTradeCust]'
------GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_API_Data_AWS', @article = N'PayoutTrans', @source_owner = N'dbo', @source_object = N'PayoutTrans', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'manual', @destination_table = N'PayoutTrans', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPayoutTrans]', @del_cmd = N'CALL [sp_MSdel_dboPayoutTrans]', @upd_cmd = N'SCALL [sp_MSupd_dboPayoutTrans]'
GO
------use [bodb02]
------exec sp_addarticle @publication = N'DBTP_API_Data_AWS', @article = N'TradeCust', @source_owner = N'dbo', @source_object = N'TradeCust', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'TradeCust', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboTradeCust]', @del_cmd = N'CALL [sp_MSdel_dboTradeCust]', @upd_cmd = N'SCALL [sp_MSupd_dboTradeCust]'
------GO

-- 2.Adding the transactional articles on publication [DBTP_Bet_n_ExecRep_AWS]
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Bet_n_ExecRep_AWS', @article = N'ExecRep_11', @source_owner = N'dbo', @source_object = N'ExecRep_11', @type = N'proc exec', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'ExecRep_11', @destination_owner = N'dbo', @status = 0
GO
 

-- 3.Adding the transactional articles on publication DBTP_Odds_Odds_AWS
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Odds_Odds_AWS', @article = N'bettype', @source_owner = N'dbo', @source_object = N'bettype', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'bettype', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dbobettype]', @del_cmd = N'CALL [sp_MSdel_dbobettype]', @upd_cmd = N'SCALL [sp_MSupd_dbobettype]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @source_owner = N'dbo', @source_object = N'League', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'manual', @destination_table = N'League', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'true', @ins_cmd = N'CALL [sp_MSins_dboLeague]', @del_cmd = N'CALL [sp_MSdel_dboLeague]', @upd_cmd = N'SCALL [sp_MSupd_dboLeague]'

-- Adding the article's partition column(s)
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'leagueid', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'leaguename', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'maxstake', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'minstake', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'maxstakeou', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'maxstakeoe', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'leaguenamec', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'leaguenametc', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'creator', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'lcolor', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'hdp_min', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'hdp_max', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'hdp_risk', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'hdp_range', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'hdp_allowance', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'hdp_gapodds', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'hdp_gapoddsr', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'ou_min', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'ou_max', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'ou_risk', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'ou_range', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'ou_allowance', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'ou_gapodds', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'ou_gapoddsr', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'oe_min', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'oe_max', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'oe_risk', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'oe_range', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'oe_gapodds', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'cs_min', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'cs_max', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'cs_risk', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'cs_range', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'cs_gapodds', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'b1x2_min', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'b1x2_max', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'b1x2_risk', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'b1x2_range', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'b1x2_gapodds', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'tg_min', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'tg_max', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'tg_risk', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'tg_range', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'tg_gapodds', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'ht_min', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'ht_max', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'ht_risk', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'ht_range', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'ht_allowance', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'ht_gapodds', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'ht_gapoddsr', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'ht1x2_min', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'ht1x2_max', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'ht1x2_risk', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'ht1x2_range', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'ht1x2_gapodds', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'leaguenamec_uni', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'leaguenamej', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'sporttype', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'createdate', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'leaguenamecn', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'oe_gapoddsr', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'DisplayMode', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'isTest', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'leaguenameth', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'ProgramID', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'TrackCondition', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'IsActive', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'leaguenameko', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'TrackConditionCh', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'TrackConditionCs', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'leaguenameES', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'CountryCode', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'leaguenameVN', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'GameSession', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'SessionTime', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'OverTime', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'leaguenameEL', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'OverTimeSession', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'IsCountDownTimer', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'IsMainMarket', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'category', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'DisplayCat', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'leagueCode', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'ShowInAllMarket', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'PutInMainCat', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'outright', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'leaguenameSC2', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'leaguenameMMR', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'IsAutoPayout', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'leaguenameHI', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'AutoSetting', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'Group', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'ShowLiveScore', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'extraSpread', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'LeagueGroupID', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @column = N'MaxPayoutGroup', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1

-- Adding the article synchronization object
exec sp_articleview @publication = N'DBTP_Odds_Odds_AWS', @article = N'League', @view_name = N'syncobj_0x3537354631413741', @filter_clause = N'', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Odds_Odds_AWS', @article = N'Products', @source_owner = N'dbo', @source_object = N'Products', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'Products', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboProducts]', @del_cmd = N'CALL [sp_MSdel_dboProducts]', @upd_cmd = N'SCALL [sp_MSupd_dboProducts]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Odds_Odds_AWS', @article = N'Site', @source_owner = N'dbo', @source_object = N'Site', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'manual', @destination_table = N'Site', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSite]', @del_cmd = N'CALL [sp_MSdel_dboSite]', @upd_cmd = N'SCALL [sp_MSupd_dboSite]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Odds_Odds_AWS', @article = N'SportBettypeMatrix', @source_owner = N'dbo', @source_object = N'SportBettypeMatrix', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SportBettypeMatrix', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSportBettypeMatrix]', @del_cmd = N'CALL [sp_MSdel_dboSportBettypeMatrix]', @upd_cmd = N'SCALL [sp_MSupd_dboSportBettypeMatrix]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Odds_Odds_AWS', @article = N'Sports', @source_owner = N'dbo', @source_object = N'Sports', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'Sports', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSports]', @del_cmd = N'CALL [sp_MSdel_dboSports]', @upd_cmd = N'SCALL [sp_MSupd_dboSports]'
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Odds_Odds_AWS', @article = N'VSOutright', @source_owner = N'dbo', @source_object = N'VSOutright', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'manual', @destination_table = N'VSOutright', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'true', @ins_cmd = N'CALL [sp_MSins_dboVSOutright]', @del_cmd = N'CALL [sp_MSdel_dboVSOutright]', @upd_cmd = N'SCALL [sp_MSupd_dboVSOutright]'

-- Adding the article's partition column(s)
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'VSOutright', @column = N'Orid', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'VSOutright', @column = N'EventID', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'VSOutright', @column = N'RacerNum', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'VSOutright', @column = N'IsFavor', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'VSOutright', @column = N'EventDate', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'VSOutright', @column = N'KickoffTime', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'VSOutright', @column = N'RacerID', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'VSOutright', @column = N'HumanID', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'VSOutright', @column = N'WinOdds', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'VSOutright', @column = N'PlaceOdds', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'VSOutright', @column = N'Lane', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'VSOutright', @column = N'MaxBet', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'VSOutright', @column = N'DisplayMode', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'VSOutright', @column = N'Placing', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'VSOutright', @column = N'Colours', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'VSOutright', @column = N'Creator', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'VSOutright', @column = N'ChangeTime', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'VSOutright', @column = N'EventStatus', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1

-- Adding the article synchronization object
exec sp_articleview @publication = N'DBTP_Odds_Odds_AWS', @article = N'VSOutright', @view_name = N'syncobj_0x4233413437463241', @filter_clause = N'', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
GO
use [bodb02]
exec sp_addarticle @publication = N'DBTP_Odds_Odds_AWS', @article = N'VSRaceInfo', @source_owner = N'dbo', @source_object = N'VSRaceInfo', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VSRaceInfo', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'true', @ins_cmd = N'CALL [sp_MSins_dboVSRaceInfo]', @del_cmd = N'CALL [sp_MSdel_dboVSRaceInfo]', @upd_cmd = N'SCALL [sp_MSupd_dboVSRaceInfo]'

-- Adding the article's partition column(s)
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'VSRaceInfo', @column = N'EventID', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'VSRaceInfo', @column = N'EventTime', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'VSRaceInfo', @column = N'LeagueID', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'VSRaceInfo', @column = N'PayOut', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'VSRaceInfo', @column = N'EachWay', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'VSRaceInfo', @column = N'CourseName', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'VSRaceInfo', @column = N'TrackType', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'VSRaceInfo', @column = N'Distance', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'VSRaceInfo', @column = N'Racers', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'VSRaceInfo', @column = N'ForeCastPayout', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'VSRaceInfo', @column = N'TriCastPayout', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'VSRaceInfo', @column = N'CreateDate', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'VSRaceInfo', @column = N'Calculate', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'VSRaceInfo', @column = N'SportType', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'VSRaceInfo', @column = N'ChangeTime', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'VSRaceInfo', @column = N'EventStatus', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
exec sp_articlecolumn @publication = N'DBTP_Odds_Odds_AWS', @article = N'VSRaceInfo', @column = N'BetStatus', @operation = N'add', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1

-- Adding the article synchronization object
exec sp_articleview @publication = N'DBTP_Odds_Odds_AWS', @article = N'VSRaceInfo', @view_name = N'syncobj_0x3530333733303544', @filter_clause = N'', @force_invalidate_snapshot = 1, @force_reinit_subscription = 1
GO