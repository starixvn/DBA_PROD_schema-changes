

--**************************--before UM 3 hours--**************************--
-- create backup to local storage
-- 09:25
BACKUP DATABASE bodb02				TO  DISK = N'T:\DB0531_migration\bodb02_20200416.bak'				WITH COMPRESSION

-- 00:04
BACKUP DATABASE bodb_Licensee		TO  DISK = N'T:\DB0531_migration\bodb_Licensee_20200416.bak'		WITH COMPRESSION
 
 -- 05:06
BACKUP DATABASE bodb_PlaytechCS		TO  DISK = N'T:\DB0531_migration\bodb_PlaytechCS_20200416.bak'		WITH COMPRESSION

 -- 02:24
BACKUP DATABASE bodb_FraudSensor	TO  DISK = N'T:\DB0531_migration\bodb_FraudSensor_20200416.bak'		WITH COMPRESSION

 -- 00:24
BACKUP DATABASE bk					TO  DISK = N'T:\DB0531_migration\bk_20200416.bak'					WITH COMPRESSION

 -- 00:16
BACKUP DATABASE bodb_3rdProduct		TO  DISK = N'T:\DB0531_migration\bodb_3rdProduct_20200416.bak'		WITH COMPRESSION

 -- 00:57
BACKUP DATABASE bodb_Ploutos		TO  DISK = N'T:\DB0531_migration\bodb_Ploutos_20200416.bak'			WITH COMPRESSION

 -- 00:55
BACKUP DATABASE MonDB				TO  DISK = N'T:\DB0531_migration\MonDB_20200416.bak'				WITH COMPRESSION

 -- 00:11
BACKUP DATABASE bodb_ChatBot		TO  DISK = N'T:\DB0531_migration\bodb_ChatBot_20200416.bak'			WITH COMPRESSION

-- 00:02
BACKUP DATABASE bodb_AGE			TO  DISK = N'T:\DB0531_migration\bodb_AGE_20200416.bak'				WITH COMPRESSION


--------@@@bodb02---------------------------
RESTORE DATABASE bodb02 FROM DISK = N'G:\DB0531_tmp\bodb02_20200416.bak' 	
WITH norecovery, FILE = 1,	
MOVE N'bodb02_Primary'			TO N'H:\USER_DB\bodb02\bodb02_Primary.MDF',
MOVE N'bodb02_DATA-1'			TO N'H:\USER_DB\bodb02\bodb02_Data1.NDF',
MOVE N'bodb02_DATA-2'			TO N'H:\USER_DB\bodb02\bodb02_Data2.NDF',
MOVE N'bodb02_DATA-3'			TO N'H:\USER_DB\bodb02\bodb02_Data3.NDF',
MOVE N'bodb02_DATA-4'			TO N'H:\USER_DB\bodb02\bodb02_Data4.NDF',
MOVE N'bodb02_Index-2'			TO N'H:\USER_DB\bodb02\bodb02_Index2.NDF',
MOVE N'DAT3-1'					TO N'H:\USER_DB\bodb02\bodb02_DAT3.ndf',
MOVE N'CustOverride_table_01'	TO N'H:\USER_DB\bodb02\bodb02_CustOverride_Table1.ndf',
MOVE N'CustInfo_index_01'		TO N'H:\USER_DB\bodb02\bodb02_CustInfo_Index.ndf',
MOVE N'CustInfo_table_01'		TO N'H:\USER_DB\bodb02\bodb02_CustInfo_Table.ndf',
MOVE N'Customer_index_01'		TO N'H:\USER_DB\bodb02\bodb02_Customer_Index.ndf',
MOVE N'Customer_table_01'		TO N'H:\USER_DB\bodb02\bodb02_Customer_Table.ndf',
MOVE N'event_table-1'			TO N'H:\USER_DB\bodb02\bodb02_event_Table.ndf',
MOVE N'table_event-1'			TO N'H:\USER_DB\bodb02\bodb02_event_Table2.ndf',
MOVE N'CustSetting3rd_table_02'	 TO N'H:\USER_DB\bodb02\bodb02_CustSetting3rd_Table2.ndf',
MOVE N'CustSetting3rd_table_03'	 TO N'H:\USER_DB\bodb02\bodb02_CustSetting3rd_Table3.ndf',
MOVE N'CustSetting3rd_table_04'	 TO N'H:\USER_DB\bodb02\bodb02_CustSetting3rd_Table4.ndf',
MOVE N'CustSetting3rd_table_01'	 TO N'H:\USER_DB\bodb02\bodb02_CustSetting3rd_Table1.ndf',
MOVE N'CustSetting_table_01'	 TO N'H:\USER_DB\bodb02\bodb02_CustSetting_Table1.ndf',
MOVE N'CustSetting_table_02'	 TO N'H:\USER_DB\bodb02\bodb02_CustSetting_Table2.ndf',
MOVE N'CustSetting_table_03'	 TO N'H:\USER_DB\bodb02\bodb02_CustSetting_Table3.ndf',
MOVE N'CustSetting_table_04'	 TO N'H:\USER_DB\bodb02\bodb02_CustSetting_Table4.ndf',
MOVE N'CustOverride3rd_table_01'	 TO N'H:\USER_DB\bodb02\bodb02_CustOverride3rd_Table.ndf',
MOVE N'Bettrans_table_03'	 TO N'H:\USER_DB\bodb02\bodb02_Bettrans_Table3.ndf',
MOVE N'Bettrans_table_02'	 TO N'H:\USER_DB\bodb02\bodb02_Bettrans_Table2.ndf',
MOVE N'Bettrans_table_01'	 TO N'H:\USER_DB\bodb02\bodb02_Bettrans_Table1.ndf',
MOVE N'Bettrans_index1_01'	 TO N'H:\USER_DB\bodb02\bodb02_Bettrans_Index1.ndf',
MOVE N'Bettrans_index2_01'	 TO N'H:\USER_DB\bodb02\bodb02_Bettrans_Index2.ndf',
MOVE N'Bettrans_index3_01'	 TO N'H:\USER_DB\bodb02\bodb02_Bettrans_Index3.ndf',
MOVE N'Bettrans14_table_01'	 TO N'H:\USER_DB\bodb02\bodb02_Bettrans14_Table1.ndf',
MOVE N'Bettrans14_table_02'	 TO N'H:\USER_DB\bodb02\bodb02_Bettrans14_Table2.ndf',
MOVE N'Bettrans14_index_01'	 TO N'H:\USER_DB\bodb02\bodb02_Bettrans14_Index1.ndf',
MOVE N'BettransM_table_01'	 TO N'H:\USER_DB\bodb02\bodb02_BettransM_Table.ndf',
MOVE N'BettransM_index_01'	 TO N'H:\USER_DB\bodb02\bodb02_BettransM_Index.ndf',
MOVE N'BettransM14_table_01'	 TO N'H:\USER_DB\bodb02\bodb02_BettransM14_Table.ndf',
MOVE N'BettransM14_index_01'	 TO N'H:\USER_DB\bodb02\bodb02_BettransM14_Index.ndf',
MOVE N'Event14_table_01'	 TO N'H:\USER_DB\bodb02\bodb02_Event14_Table.ndf',
MOVE N'Event14_index_01'	 TO N'H:\USER_DB\bodb02\bodb02_Event14_Index.ndf',
MOVE N'Event_index_01'		TO N'H:\USER_DB\bodb02\bodb02_Event_Index.ndf',
MOVE N'others_table-1'		TO N'H:\USER_DB\bodb02\bodb02_Others_Table1.ndf',
MOVE N'Others_table_01'		TO N'H:\USER_DB\bodb02\bodb02_Others_Table2.ndf',
MOVE N'Others_index_01'		TO N'H:\USER_DB\bodb02\bodb02_Others_Index.ndf',
MOVE N'bodb02_table_Customer'	 TO N'H:\USER_DB\bodb02\bodb02_Table_Customer.ndf',
MOVE N'Odds_Table-1'		TO N'H:\USER_DB\bodb02\bodb02_Odds_Table1.ndf',
MOVE N'bodb02_Odds_Index'	TO N'H:\USER_DB\bodb02\bodb02_Odds_Index.ndf',
MOVE N'P2PSetting'			TO N'H:\USER_DB\bodb02\bodb02_P2PSetting.ndf',
MOVE N'P2PSetting_index'	TO N'H:\USER_DB\bodb02\bodb02_P2PSetting_Index.ndf',
MOVE N'BettransG'			TO N'H:\USER_DB\bodb02\bodb02_BettransG.ndf',
MOVE N'BettransG14'			TO N'H:\USER_DB\bodb02\bodb02_BettransG14.ndf',
MOVE N'CustSettingGame_table'	 TO N'H:\USER_DB\bodb02\bodb02_CustSettingGame_Table.ndf',
MOVE N'Dep_Custsetting_table_01'	 TO N'H:\USER_DB\bodb02\bodb02_Dep_CustSetting_Table1.ndf',
MOVE N'Dep_Custsetting_table_02'	 TO N'H:\USER_DB\bodb02\bodb02_Dep_CustSetting_Table2.ndf',
MOVE N'Dep_Custsetting_table_03'	 TO N'H:\USER_DB\bodb02\bodb02_Dep_CustSetting_Table3.ndf',
MOVE N'Dep_Custsetting3rd_table_01'	 TO N'H:\USER_DB\bodb02\bodb02_Dep_CustSetting3rd_Table1.ndf',
MOVE N'Dep_Custsetting3rd_table_02'	 TO N'H:\USER_DB\bodb02\bodb02_Dep_CustSetting3rd_Table2.ndf',
MOVE N'Dep_Custsetting3rd_table_03'	 TO N'H:\USER_DB\bodb02\bodb02_Dep_CustSetting3rd_Table3.ndf',
MOVE N'CustGameType_table_01'	 TO N'H:\USER_DB\bodb02\CustGameType_table_01.ndf',
MOVE N'CustGameType_table_02'	 TO N'H:\USER_DB\bodb02\CustGameType_table_02.ndf',
MOVE N'CustGameType_table_03'	 TO N'H:\USER_DB\bodb02\CustGameType_table_03.ndf',
MOVE N'translog_index1'	 TO N'H:\USER_DB\bodb02\translog_index1.ndf',
MOVE N'translog_table1'	 TO N'H:\USER_DB\bodb02\translog_table1.ndf',
MOVE N'translog_table2'	 TO N'H:\USER_DB\bodb02\translog_table2.ndf',
MOVE N'translog14_index1'	 TO N'H:\USER_DB\bodb02\translog14_index1.ndf',
MOVE N'translog14_table1'	 TO N'H:\USER_DB\bodb02\translog14_table1.ndf',
MOVE N'translog14_table2'	 TO N'H:\USER_DB\bodb02\translog14_table2.ndf',
MOVE N'serviceBroker_01'	 TO N'H:\USER_DB\bodb02\serviceBroker_01.ndf',
MOVE N'serviceBroker_02'	 TO N'H:\USER_DB\bodb02\serviceBroker_02.ndf',
MOVE N'Dep_CustSettingGame_table'	 TO N'H:\USER_DB\bodb02\Dep_CustSettingGame_table.ndf',
MOVE N'Dep_CustSettingGame_Table_01'	 TO N'H:\USER_DB\bodb02\Dep_CustSettingGame_Table_01.ndf',
MOVE N'bettransRnG14_table'	 TO N'H:\USER_DB\bodb02\bettransRnG14_table.ndf',
MOVE N'bettransRnG14_index'	 TO N'H:\USER_DB\bodb02\bettransRnG14_index.ndf',
MOVE N'bettransLC14_table'	 TO N'H:\USER_DB\bodb02\bettransLC14_table.ndf',
MOVE N'bettransLC14_index'	 TO N'H:\USER_DB\bodb02\bettransLC14_index.ndf',
MOVE N'bettransLC_table'	 TO N'H:\USER_DB\bodb02\bettransLC_table.ndf',
MOVE N'bettransLC_index'	 TO N'H:\USER_DB\bodb02\bettransLC_index.ndf',
MOVE N'bettransRnG_table'	 TO N'H:\USER_DB\bodb02\bettransRnG_table.ndf',
MOVE N'bettransRnG_index'	 TO N'H:\USER_DB\bodb02\bettransRnG_index.ndf',
MOVE N'Odds3rd_index'	 TO N'H:\USER_DB\bodb02\Odds3rd_index.ndf',
MOVE N'Odds3rd_data'	 TO N'H:\USER_DB\bodb02\Odds3rd_data.ndf',
MOVE N'Odds3rd14_index'	 TO N'H:\USER_DB\bodb02\Odds3rd14_index.ndf',
MOVE N'Odds3rd14_data'	 TO N'H:\USER_DB\bodb02\Odds3rd14_data.ndf',
MOVE N'BetLucky3_Table'	 TO N'H:\USER_DB\bodb02\BetLucky3_Table.NDF',
MOVE N'Event3rd_table'	 TO N'H:\USER_DB\bodb02\Event3rd_table.ndf',
MOVE N'Event3rd14_table' TO N'H:\USER_DB\bodb02\Event3rd14_table.ndf',
MOVE N'ServiceBroker_Data_001'	 TO N'H:\USER_DB\bodb02\ServiceBroker_Data_001.ndf',
MOVE N'Odds_EX_index'	 TO N'H:\USER_DB\bodb02\Odds_EX_index.ndf',
MOVE N'Odds_EX_table'	 TO N'H:\USER_DB\bodb02\Odds_EX_table.ndf',
MOVE N'OddsES_table'	 TO N'H:\USER_DB\bodb02\OddsES_table.ndf',
MOVE N'OddsES14_table'	 TO N'H:\USER_DB\bodb02\OddsES14_table.ndf',
MOVE N'OddsES_index'	 TO N'H:\USER_DB\bodb02\OddsES_index.ndf',
MOVE N'OddsES14_index'	 TO N'H:\USER_DB\bodb02\OddsES14_index.ndf',
MOVE N'SMP_index'	 TO N'H:\USER_DB\bodb02\SMP_index.ndf',
MOVE N'SMP_index14'	 TO N'H:\USER_DB\bodb02\SMP_index14.ndf',
MOVE N'SMP_table'	 TO N'H:\USER_DB\bodb02\SMP_table.ndf',
MOVE N'SMP_table14'	 TO N'H:\USER_DB\bodb02\SMP_table14.ndf',
MOVE N'OddsEngine_index'	 TO N'H:\USER_DB\bodb02\OddsEngine_index.ndf',
MOVE N'OddsEngine_table'	 TO N'H:\USER_DB\bodb02\OddsEngine_table.ndf',
MOVE N'OddsCN88_index_01'	 TO N'H:\USER_DB\bodb02\OddsCN88_index_01.NDF',
MOVE N'OddsCN88_table_01'	 TO N'H:\USER_DB\bodb02\OddsCN88_Table_01.NDF',
MOVE N'OddsOS_index'	 TO N'H:\USER_DB\bodb02\OddsOS_index.ndf',
MOVE N'OddsOS_table'	 TO N'H:\USER_DB\bodb02\OddsOS_table.ndf',
MOVE N'OddsOS14_index'	 TO N'H:\USER_DB\bodb02\OddsOS14_index.ndf',
MOVE N'OddsOS14_table'	 TO N'H:\USER_DB\bodb02\OddsOS14_table.ndf',
MOVE N'oddsSettingOS_index'	 TO N'H:\USER_DB\bodb02\oddsSettingOS_index.ndf',
MOVE N'oddsSettingOS_table'	 TO N'H:\USER_DB\bodb02\oddsSettingOS_table.ndf',
MOVE N'oddsHistoryOS_index'	 TO N'H:\USER_DB\bodb02\oddsHistoryOS_index.ndf',
MOVE N'oddsHistoryOS_table'	 TO N'H:\USER_DB\bodb02\oddsHistoryOS_table.ndf',
MOVE N'BettransInfo_table1'	 TO N'H:\USER_DB\bodb02\BettransInfo_table1.ndf',
MOVE N'BettransInfo_table2'	 TO N'H:\USER_DB\bodb02\BettransInfo_table2.ndf',
MOVE N'BettransInfo_table3'	 TO N'H:\USER_DB\bodb02\BettransInfo_table3.ndf',
MOVE N'BettransInfo_table4'	 TO N'H:\USER_DB\bodb02\BettransInfo_table4.ndf',
MOVE N'BettransInfo14_table1'	 TO N'H:\USER_DB\bodb02\BettransInfo14_table1.ndf',
MOVE N'BettransInfo14_table2'	 TO N'H:\USER_DB\bodb02\BettransInfo14_table2.ndf',
MOVE N'BettransInfo14_table3'	 TO N'H:\USER_DB\bodb02\BettransInfo14_table3.ndf',
MOVE N'BettransInfo14_table4'	 TO N'H:\USER_DB\bodb02\BettransInfo14_table4.ndf',
MOVE N'bodb02_Log'				 TO N'H:\USER_DB\bodb02\bodb02_Log.ldf',
MOVE N'bodb02_LogG'				 TO N'G:\USER_DB\bodb02\bodb02_LogG.ldf',
  NOUNLOAD,  STATS = 10	


go

--------@@@bodb_licensee---------------------------
RESTORE DATABASE bodb_Licensee FROM DISK = N'G:\DB0531_tmp\bodb_Licensee_20200416.bak' 	
WITH norecovery, FILE = 1,	
MOVE N'bodb_Licensee'		TO N'H:\USER_DB\bodb_Licensee\bodb_Licensee.mdf',
MOVE N'BA_Data_1'			TO N'H:\USER_DB\bodb_Licensee\BA_Data_01.ndf',
MOVE N'BA_DATA'				TO N'H:\USER_DB\bodb_Licensee\BA_DATA.ndf',
MOVE N'BA_Index_1'			TO N'H:\USER_DB\bodb_Licensee\BA_Index_01.ndf',
MOVE N'data01'				TO N'H:\USER_DB\bodb_Licensee\data01.ndf',
MOVE N'data02'				TO N'H:\USER_DB\bodb_licensee\data02.ndf',
MOVE N'licensee_index_2'	TO N'H:\USER_DB\bodb_licensee\licensee_index_02.ndf',
MOVE N'licensee_table_02'	TO N'H:\USER_DB\bodb_Licensee\licensee_table_02.ndf',
MOVE N'on_user_index_02'	TO N'H:\USER_DB\bodb_Licensee\on_user_index_02.ndf',
MOVE N'on_user_table_02'	TO N'H:\USER_DB\bodb_Licensee\on_user_table_02.ndf',
MOVE N'user_table_02'		TO N'H:\USER_DB\bodb_Licensee\user_table_02.ndf',
MOVE N'BATrans'				TO N'H:\USER_DB\bodb_Licensee\BATrans.ndf',
MOVE N'BATrans_BK_01'		TO N'H:\USER_DB\bodb_Licensee\BATrans_BK_01.ndf',
MOVE N'BATrans_BK_02'		TO N'H:\USER_DB\bodb_Licensee\BATrans_BK_02.ndf',
MOVE N'OWA_DATA'			TO N'H:\USER_DB\bodb_licensee\OWN_DATA.ndf',
MOVE N'OWA_INDEX'			TO N'H:\USER_DB\bodb_licensee\OWA_INDEX.ndf',
MOVE N'bodb_Licensee_log'	TO N'H:\USER_DB\bodb_Licensee\bodb_Licensee_log.ldf',
  NOUNLOAD,  STATS = 10	

go
--------@@@bodb_PlaytechCS---------------------------
RESTORE DATABASE bodb_PlaytechCS FROM DISK = N'G:\DB0531_tmp\bodb_PlaytechCS_20200416.bak' 	
WITH norecovery, FILE = 1,	
MOVE N'bodb_PlaytechCS'		 TO N'F:\USER_DB\bodb_PlaytechCS\bodb_PlaytechCS.mdf',
MOVE N'PlaytechCS_Index_01'	 TO N'F:\USER_DB\bodb_PlaytechCS\bettrans_PlaytechCS_Index_01.ndf',
MOVE N'PlaytechCS_Data_01'	 TO N'F:\USER_DB\bodb_PlaytechCS\bettrans_PlaytechCS_Data_01.ndf',
MOVE N'PlaytechCS_Table_01'	 TO N'F:\USER_DB\bodb_PlaytechCS\bettrans_playtechCS_Table_01.ndf',
MOVE N'bodb_PlaytechCS_log'	 TO N'F:\USER_DB\bodb_PlaytechCS\bodb_PlaytechCS_log.ldf',
  NOUNLOAD,  STATS = 10 
   

go
--------@@@bk---------------------------
RESTORE DATABASE bk FROM DISK = N'G:\DB0531_tmp\bk_20200416.bak' 	
WITH NORECOVERY, FILE = 1,	
MOVE N'bk'					TO N'F:\USER_DB\bk\bk.mdf',
MOVE N'bk_02'				TO N'F:\USER_DB\bk\bk_02.ndf',
MOVE N'bk_03'				TO N'F:\USER_DB\bk\bk_03.ndf',
MOVE N'bk_04'				TO N'F:\USER_DB\bk\bk_04.ndf',
MOVE N'bets_data'			TO N'F:\USER_DB\bk\bets_data.ndf',
MOVE N'bets_index'			TO N'F:\USER_DB\bk\bets_index.ndf',
MOVE N'betsReject_data'		TO N'F:\USER_DB\bk\betsReject_data.ndf',
MOVE N'betsReject_index'	TO N'F:\USER_DB\bk\betsReject_index.ndf',
MOVE N'bk_log'				TO N'F:\USER_DB\bk\bk_log.ldf',
MOVE N'bk_Log2'				TO N'F:\USER_DB\bk\bk_5.ldf',
  NOUNLOAD,  STATS = 10	


--------@@@bodb_chatbot---------------------------
RESTORE DATABASE bodb_ChatBot FROM DISK = N'G:\DB0531_tmp\bodb_ChatBot_20200416.bak' 	
WITH NORECOVERY, FILE = 1,	
MOVE N'bodb_ChatBot'			TO N'F:\USER_DB\bodb_ChatBot\bodb_ChatBot.mdf',
MOVE N'bodb_ChatBot_Data'		TO N'F:\USER_DB\bodb_ChatBot\bodb_ChatBot_data.NDF',
MOVE N'bodb_ChatBot_DataLog'	TO N'F:\USER_DB\bodb_ChatBot\bodb_ChatBot_DataLog.NDF',
MOVE N'bodb_ChatBot_log'		TO N'F:\USER_DB\bodb_ChatBot\bodb_ChatBot_log.ldf',
  NOUNLOAD,  STATS = 10	


--------@@@bodb_3rdProduct---------------------------
RESTORE DATABASE bodb_3rdProduct FROM DISK = N'G:\DB0531_tmp\bodb_3rdProduct_20200416.bak' 	
WITH NORECOVERY, FILE = 1,	
MOVE N'bodb_3rdProduct'			TO N'F:\USER_DB\bodb_3rdProduct\bodb_3rdProduct.mdf',
MOVE N'3rdProduct_Data'			TO N'F:\USER_DB\bodb_3rdProduct\3rdProduct_Data.ndf',
MOVE N'3rdProduct_Index'		TO N'F:\USER_DB\bodb_3rdProduct\3rdProduct_Index.ndf',
MOVE N'bodb_3rdProduct_log'		TO N'F:\USER_DB\bodb_3rdProduct\bodb_3rdProduct_log.ldf',
  NOUNLOAD,  STATS = 10	


--------@@@bodb_FraudSensor---------------------------
RESTORE DATABASE bodb_FraudSensor FROM DISK = N'G:\DB0531_tmp\bodb_FraudSensor_20200416.bak' 	
WITH norecovery, FILE = 1,	
MOVE N'bodb_FraudSensor'	TO N'F:\USER_DB\bodb_FraudSensor\bodb_FraudSensor.mdf',
MOVE N'DATA'				TO N'F:\USER_DB\bodb_FraudSensor\data_01.ndf',
MOVE N'IDX'					TO N'F:\USER_DB\bodb_FraudSensor\idx_01.ndf',
MOVE N'UserLog'				TO N'F:\USER_DB\bodb_FraudSensor\UserLog_01.ndf',
MOVE N'OddsLog'				TO N'F:\USER_DB\bodb_FraudSensor\OddsLog_01.ndf',
MOVE N'FS_Footprint'		TO N'F:\USER_DB\bodb_FraudSensor\FS_Footprint.ndf',
MOVE N'bodb_FraudSensor_log'	 TO N'F:\USER_DB\bodb_FraudSensor\bodb_FraudSensor_log.ldf',
  NOUNLOAD,  STATS = 10	

 
 


--------@@@bodb_Ploutos---------------------------
RESTORE DATABASE bodb_Ploutos FROM DISK = N'G:\DB0531_tmp\bodb_Ploutos_20200416.bak' 	
WITH norecovery, FILE = 1,	
MOVE N'bodb_Ploutos'		TO N'F:\USER_DB\bodb_Ploutos\bodb_Ploutos.mdf',
MOVE N'API_Logs01'			TO N'F:\USER_DB\bodb_Ploutos\API_Logs01.ndf',
MOVE N'API_Logs02'			TO N'F:\USER_DB\bodb_Ploutos\API_Logs02.ndf',
MOVE N'BetTicket'			TO N'F:\USER_DB\bodb_Ploutos\BetTicket.ndf',
MOVE N'bodb_Ploutos_DATA'	TO N'F:\USER_DB\bodb_Ploutos\bodb_Ploutos_DATA.ndf',
MOVE N'PlayerProfile'		TO N'F:\USER_DB\bodb_Ploutos\PlayerProfile.ndf',
MOVE N'bodb_Ploutos_log'	TO N'F:\USER_DB\bodb_Ploutos\bodb_Ploutos_log.ldf',
  NOUNLOAD,  STATS = 10	
  

--------@@@bodb_AGE---------------------------
RESTORE DATABASE bodb_AGE FROM DISK = N'G:\DB0531_tmp\bodb_AGE_20200416.bak' 	
WITH norecovery, FILE = 1,	
MOVE N'bodb_AGE'			TO N'F:\USER_DB\bodb_Age\bodb_AGE.mdf',
MOVE N'ageDATA_02'			TO N'F:\USER_DB\bodb_Age\ageDATA_02.ndf',
MOVE N'ageTable_01'			TO N'F:\USER_DB\bodb_Age\ageTable_01.ndf',
MOVE N'ageBettransTable_01'	TO N'F:\USER_DB\bodb_Age\ageBettransTable_01.ndf',
MOVE N'ageBettransIndex_01'	TO N'F:\USER_DB\bodb_Age\ageBettransIndex_01.ndf',
MOVE N'ageIndex_01'			TO N'F:\USER_DB\bodb_Age\ageIndex_01.ndf',
MOVE N'ageBettransIndex02'	TO N'F:\USER_DB\bodb_Age\ageBettransIndex02.ndf',
MOVE N'profiledata'			TO N'F:\USER_DB\bodb_AGE\ageProfiledata.NDF',
MOVE N'ageBettransIndex03'	TO N'F:\USER_DB\bodb_Age\ageBettransIndex03.ndf',
MOVE N'bodb_AGE_log'		TO N'F:\USER_DB\bodb_Age\bodb_AGE_log.ldf',
MOVE N'bodb_AGE_log_02'		TO N'F:\USER_DB\bodb_AGE\bodb_AGE_log_02.ldf',
  NOUNLOAD,  STATS = 10	



--------@@@MonDB---------------------------
RESTORE DATABASE MonDB FROM DISK = N'G:\DB0531_tmp\MonDB_20200416.bak' 	
WITH norecovery, FILE = 1,	
MOVE N'MonDB'			TO N'F:\USER_DB\MonDB\MonDB.mdf',
MOVE N'MonDB_log'		TO N'F:\USER_DB\MonDB\MonDB_log.ldf',
  NOUNLOAD,  STATS = 10	
