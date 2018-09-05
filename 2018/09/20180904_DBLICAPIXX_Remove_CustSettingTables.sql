/*  Task: Remove unused cust setting tables @DBLICAPIXX - Gen list of tables to rename/truncate/drop
	Run at DBLICAPI.bo2b02, DBLICAPI2.bodb02
*/
/* GENERATE TABLES LIST & SCRIPTS TO RENAME, DROP/TRUNCATE:
--Get list of all cust setting rep tables from DB06
SELECT distinct article into #CSTable FROM DBACC.bodb02.dbo.MSreplication_objects with (nolock) where publication = 'CustDB_CustSetting'

--Get the list of cust setting tables not replicated at current server
select name, 'EXEC sp_rename ''' + name + ''', ''' + name + '_Deleted''' s1,
	 'TRUNCATE TABLE dbo.' + name s2
into #tmp
from sysobjects b inner join #CSTable cs on b.name = cs.article
where b.type = 'U' and name NOT IN(SELECT article FROM dbo.MSreplication_objects with (nolock))
order by name
drop table #CSTable
select * from #tmp

--check table usage - no data
SELECT TableName = object_name(s.object_id),
       Reads = SUM(user_seeks + user_scans + user_lookups), Writes =  SUM(user_updates)
FROM sys.dm_db_index_usage_stats AS s inner JOIN sys.indexes AS i
ON s.object_id = i.object_id
AND i.index_id = s.index_id
WHERE 1=1--objectproperty(s.object_id,'IsUserTable') = 1
	AND s.database_id = db_id('bodb02') and object_name(s.object_id) IN(select name from #tmp)
GROUP BY object_name(s.object_id) ORDER BY writes DESC
*/

EXEC sp_rename 'AgentCommRate', 'AgentCommRate_Deleted'
EXEC sp_rename 'CustBetSetting3rd_Agent', 'CustBetSetting3rd_Agent_Deleted'
EXEC sp_rename 'CustBetSetting3rd_Member', 'CustBetSetting3rd_Member_Deleted'
EXEC sp_rename 'CustCommRate', 'CustCommRate_Deleted'
EXEC sp_rename 'CustDiscount3rd_Agent', 'CustDiscount3rd_Agent_Deleted'
EXEC sp_rename 'CustDiscount3rd_Member', 'CustDiscount3rd_Member_Deleted'
EXEC sp_rename 'CustGameType', 'CustGameType_Deleted'
EXEC sp_rename 'CustNoComm', 'CustNoComm_Deleted'
EXEC sp_rename 'custOverride', 'custOverride_Deleted'
EXEC sp_rename 'custOverride3rd', 'custOverride3rd_Deleted'
EXEC sp_rename 'CustOverrideGame', 'CustOverrideGame_Deleted'
EXEC sp_rename 'CustPTGroupSetting3rd_Member', 'CustPTGroupSetting3rd_Member_Deleted'
EXEC sp_rename 'CustPTSetting3rd_Agent', 'CustPTSetting3rd_Agent_Deleted'
EXEC sp_rename 'CustPTSetting3rd_Member', 'CustPTSetting3rd_Member_Deleted'
EXEC sp_rename 'custSetting', 'custSetting_Deleted'
EXEC sp_rename 'CustSetting3rd', 'CustSetting3rd_Deleted'
EXEC sp_rename 'CustSettingGame', 'CustSettingGame_Deleted'
EXEC sp_rename 'CustSettingMode3rd', 'CustSettingMode3rd_Deleted'
EXEC sp_rename 'CustStakeLevel_Agent', 'CustStakeLevel_Agent_Deleted'
EXEC sp_rename 'CustStakeLevel_Member', 'CustStakeLevel_Member_Deleted'
EXEC sp_rename 'CustVirtualRate', 'CustVirtualRate_Deleted'
EXEC sp_rename 'CustVirtualSetting', 'CustVirtualSetting_Deleted'
EXEC sp_rename 'CustWinLimit', 'CustWinLimit_Deleted'
EXEC sp_rename 'CustWinLossLimit_Agent', 'CustWinLossLimit_Agent_Deleted'
EXEC sp_rename 'CustWinLossLimit_Member', 'CustWinLossLimit_Member_Deleted'
EXEC sp_rename 'Dep_AgentCommRate', 'Dep_AgentCommRate_Deleted'
EXEC sp_rename 'Dep_CustCommRate', 'Dep_CustCommRate_Deleted'
EXEC sp_rename 'Dep_CustProductStatus', 'Dep_CustProductStatus_Deleted'
EXEC sp_rename 'Dep_CustPTGroupSetting_Member', 'Dep_CustPTGroupSetting_Member_Deleted'
EXEC sp_rename 'Dep_CustPTSetting_Agent', 'Dep_CustPTSetting_Agent_Deleted'
EXEC sp_rename 'Dep_CustPTSetting_Member', 'Dep_CustPTSetting_Member_Deleted'
EXEC sp_rename 'Dep_CustSetting', 'Dep_CustSetting_Deleted'
EXEC sp_rename 'Dep_CustSetting3rd', 'Dep_CustSetting3rd_Deleted'
EXEC sp_rename 'Dep_CustSettingGame', 'Dep_CustSettingGame_Deleted'
EXEC sp_rename 'Dep_CustSettingMode', 'Dep_CustSettingMode_Deleted'
EXEC sp_rename 'Dep_CustStakeLevel_Agent', 'Dep_CustStakeLevel_Agent_Deleted'
EXEC sp_rename 'Dep_CustStakeLevel_Member', 'Dep_CustStakeLevel_Member_Deleted'
EXEC sp_rename 'Dep_LicenseeProductSetting', 'Dep_LicenseeProductSetting_Deleted'
EXEC sp_rename 'Dep_ProductSetting', 'Dep_ProductSetting_Deleted'
EXEC sp_rename 'Dep_ProductSettingDetail', 'Dep_ProductSettingDetail_Deleted'
EXEC sp_rename 'Dep_ProductStatusProfile', 'Dep_ProductStatusProfile_Deleted'
EXEC sp_rename 'Dep_StakeLevel', 'Dep_StakeLevel_Deleted'
EXEC sp_rename 'Dep_StakeLevelGroupDetail', 'Dep_StakeLevelGroupDetail_Deleted'
EXEC sp_rename 'GameGroup', 'GameGroup_Deleted'
EXEC sp_rename 'LossLimit_GlobalSetting', 'LossLimit_GlobalSetting_Deleted'
EXEC sp_rename 'PlayCurrencySetting', 'PlayCurrencySetting_Deleted'
EXEC sp_rename 'ProductBetSetting', 'ProductBetSetting_Deleted'
EXEC sp_rename 'ProductGlobalSetting', 'ProductGlobalSetting_Deleted'
EXEC sp_rename 'ProductLaunchedSiteCurrency', 'ProductLaunchedSiteCurrency_Deleted'
EXEC sp_rename 'ProfileVirtualSetting', 'ProfileVirtualSetting_Deleted'
EXEC sp_rename 'RacingBetSetting', 'RacingBetSetting_Deleted'
EXEC sp_rename 'StakeLevel', 'StakeLevel_Deleted'
EXEC sp_rename 'StakeLevelGroupDetail', 'StakeLevelGroupDetail_Deleted'
EXEC sp_rename 'WinLimit_CustSetting', 'WinLimit_CustSetting_Deleted'
