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

DROP TABLE dbo.AgentCommRate_Deleted
DROP TABLE dbo.CustBetSetting3rd_Agent_Deleted
DROP TABLE dbo.CustBetSetting3rd_Member_Deleted
DROP TABLE dbo.CustCommRate_Deleted
DROP TABLE dbo.CustDiscount3rd_Agent_Deleted
DROP TABLE dbo.CustDiscount3rd_Member_Deleted
DROP TABLE dbo.CustGameType_Deleted
DROP TABLE dbo.CustNoComm_Deleted
DROP TABLE dbo.custOverride_Deleted
DROP TABLE dbo.custOverride3rd_Deleted
DROP TABLE dbo.CustOverrideGame_Deleted
DROP TABLE dbo.CustPTGroupSetting3rd_Member_Deleted
DROP TABLE dbo.CustPTSetting3rd_Agent_Deleted
DROP TABLE dbo.CustPTSetting3rd_Member_Deleted
DROP TABLE dbo.custSetting_Deleted
DROP TABLE dbo.CustSetting3rd_Deleted
DROP TABLE dbo.CustSettingGame_Deleted
DROP TABLE dbo.CustSettingMode3rd_Deleted
DROP TABLE dbo.CustStakeLevel_Agent_Deleted
DROP TABLE dbo.CustStakeLevel_Member_Deleted
DROP TABLE dbo.CustVirtualRate_Deleted
DROP TABLE dbo.CustVirtualSetting_Deleted
DROP TABLE dbo.CustWinLimit_Deleted
DROP TABLE dbo.CustWinLossLimit_Agent_Deleted
DROP TABLE dbo.CustWinLossLimit_Member_Deleted
DROP TABLE dbo.Dep_AgentCommRate_Deleted
DROP TABLE dbo.Dep_CustCommRate_Deleted
DROP TABLE dbo.Dep_CustProductStatus_Deleted
DROP TABLE dbo.Dep_CustPTGroupSetting_Member_Deleted
DROP TABLE dbo.Dep_CustPTSetting_Agent_Deleted
DROP TABLE dbo.Dep_CustPTSetting_Member_Deleted
DROP TABLE dbo.Dep_CustSetting_Deleted
DROP TABLE dbo.Dep_CustSetting3rd_Deleted
DROP TABLE dbo.Dep_CustSettingGame_Deleted
DROP TABLE dbo.Dep_CustSettingMode_Deleted
DROP TABLE dbo.Dep_CustStakeLevel_Agent_Deleted
DROP TABLE dbo.Dep_CustStakeLevel_Member_Deleted
DROP TABLE dbo.Dep_LicenseeProductSetting_Deleted
DROP TABLE dbo.Dep_ProductSetting_Deleted
DROP TABLE dbo.Dep_ProductSettingDetail_Deleted
DROP TABLE dbo.Dep_ProductStatusProfile_Deleted
DROP TABLE dbo.Dep_StakeLevel_Deleted
DROP TABLE dbo.Dep_StakeLevelGroupDetail_Deleted
DROP TABLE dbo.GameGroup_Deleted
DROP TABLE dbo.LossLimit_GlobalSetting_Deleted
DROP TABLE dbo.PlayCurrencySetting_Deleted
DROP TABLE dbo.ProductBetSetting_Deleted
DROP TABLE dbo.ProductGlobalSetting_Deleted
DROP TABLE dbo.ProductLaunchedSiteCurrency_Deleted
DROP TABLE dbo.ProfileVirtualSetting_Deleted
DROP TABLE dbo.RacingBetSetting_Deleted
DROP TABLE dbo.StakeLevel_Deleted
DROP TABLE dbo.StakeLevelGroupDetail_Deleted
DROP TABLE dbo.WinLimit_CustSetting_Deleted

