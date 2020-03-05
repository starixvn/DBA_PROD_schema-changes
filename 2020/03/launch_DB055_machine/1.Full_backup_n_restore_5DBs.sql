
-- step 1: create FULL backup to local storage before UM
BACKUP DATABASE ServiceBrokerDB TO DISK = N'G:\BACKUP\ServiceBrokerDB_20200305_full.bak' WITH COMPRESSION 
GO
BACKUP DATABASE bodb_Licensee	TO DISK = N'G:\BACKUP\bodb_Licensee_20200305_full.bak'	WITH COMPRESSION 
GO
BACKUP DATABASE MonDB			TO DISK = N'G:\BACKUP\MonDB_20200305_full.bak'			WITH COMPRESSION 
GO
BACKUP DATABASE bodb02			TO DISK = N'G:\BACKUP\bodb02_20200305_full.bak'			WITH COMPRESSION
GO
BACKUP DATABASE bodb_ost		TO DISK = N'G:\BACKUP\bodb_ost_20200305_full.bak'		WITH COMPRESSION 
GO


--- step 2: copy to DB055 - GUI

--- step 3: restore on DB055
--- bodb_Licensee
RESTORE DATABASE bodb_Licensee FROM DISK = N'G:\DB055Lukas\bodb_licensee_20200305_full.bak' 	
WITH NORECOVERY, FILE = 1,	
MOVE N'bodb_Licensee_Data'		TO N'H:\USER_DB\bodb_Licensee\bodb_Licensee_Data.mdf',
MOVE N'BATrans_Data'			TO N'H:\USER_DB\bodb_Licensee\BATrans_Data.ndf',
MOVE N'BATrans_Index'			TO N'H:\USER_DB\bodb_Licensee\BATrans_Index.ndf',
MOVE N'bodb_Licensee_Data_Log'	TO N'H:\USER_DB\bodb_Licensee\bodb_Licensee_Data_Log.ldf',
  NOUNLOAD,  STATS = 10	

go
-- ServiceBrokerDB
RESTORE DATABASE ServiceBrokerDB FROM DISK = N'G:\DB055Lukas\ServiceBrokerDB_20200305_full.bak' 	
WITH NORECOVERY, FILE = 1,	
MOVE N'ServiceBrokerDB'			TO N'H:\USER_DB\ServiceBrokerDB\ServiceBrokerDB.mdf',
MOVE N'ServiceBrokerData_01'	TO N'H:\USER_DB\ServiceBrokerDB\ServiceBrokerData_01.ndf',
MOVE N'ServiceBrokerDB_log'		TO N'H:\USER_DB\ServiceBrokerDB\ServiceBrokerDB_log.ldf',
  NOUNLOAD,  STATS = 10	

go
-- MonDB
RESTORE DATABASE MonDB FROM DISK = N'G:\DB055Lukas\MonDB_20200305_full.bak' 	
WITH NORECOVERY, FILE = 1,	
MOVE N'MonDB'		TO N'G:\USER_DB\MonDB\MonDB.mdf',
MOVE N'MonDB_log'	TO N'G:\USER_DB\MonDB\MonDB_log.ldf',
  NOUNLOAD,  STATS = 10	

-- bodb_ost
RESTORE DATABASE bodb_ost FROM DISK = N'G:\DB055Lukas\bodb_ost_20200305_full.bak' 	
WITH NORECOVERY, FILE = 1,	
MOVE N'bodb_ost'		 TO N'H:\USER_DB\bodb_ost\bodb_ost.mdf',
MOVE N'bettrans_index1'	 TO N'H:\USER_DB\bodb_ost\bettrans_index1.ndf',
MOVE N'bettrans_index2'	 TO N'H:\USER_DB\bodb_ost\bettrans_index2.ndf',
MOVE N'bettrans_table1'	 TO N'H:\USER_DB\bodb_ost\bettrans_table1.ndf',
MOVE N'bettrans_table2'	 TO N'H:\USER_DB\bodb_ost\bettrans_table2.ndf',
MOVE N'Data_table'		 TO N'H:\USER_DB\bodb_ost\Data_table.ndf',
MOVE N'bodb_ost_log'	 TO N'H:\USER_DB\bodb_ost\bodb_ost_log.ldf',
  NOUNLOAD,  STATS = 10	

--bodb02
RESTORE DATABASE bodb02 FROM DISK = N'G:\DB055Lukas\bodb02_20200305_full.bak' 	
WITH NORECOVERY, FILE = 1,	
MOVE N'bodb02_Primary'	 TO N'H:\USER_DB\bodb02\bodb02_Primary.MDF',
MOVE N'bodb02_DATA-1'	 TO N'H:\USER_DB\bodb02\bodb02_Data1.NDF',
MOVE N'bodb02_DATA-2'	 TO N'H:\USER_DB\bodb02\bodb02_Data2.NDF',
MOVE N'bodb02_DATA-3'	 TO N'H:\USER_DB\bodb02\bodb02_Data3.NDF',
MOVE N'bodb02_DATA-4'	 TO N'H:\USER_DB\bodb02\bodb02_Data4.NDF',
MOVE N'bodb02_DATA-5'	 TO N'H:\USER_DB\bodb02\bodb02_DATA-5.ndf',
MOVE N'bodb02_Index-2'	 TO N'H:\USER_DB\bodb02\bodb02_Index2.NDF',
MOVE N'Odds_index_01'	 TO N'H:\USER_DB\bodb02\bodb02_Odds_index_01.ndf',
MOVE N'Odds_table_01'	 TO N'H:\USER_DB\bodb02\bodb02_Odds_table_01.ndf',
MOVE N'Bettrans14_index_01'	 TO N'H:\USER_DB\bodb02\Bettrans14_index_01.ndf',
MOVE N'Bettrans14_table_01'	 TO N'H:\USER_DB\bodb02\Bettrans14_table_01.ndf',
MOVE N'BettransM_index_01'	 TO N'H:\USER_DB\bodb02\BettransM_index_01.ndf',
MOVE N'BettransM_table_01'	 TO N'H:\USER_DB\bodb02\BettransM_table_01.ndf',
MOVE N'BettransM14_index_01' TO N'H:\USER_DB\bodb02\BettransM14_index_01.ndf',
MOVE N'BettransM14_table_01' TO N'H:\USER_DB\bodb02\BettransM14_table_01.ndf',
MOVE N'bettrans_index1_02'	 TO N'H:\USER_DB\bodb02\bettrans_index1_02.ndf',
MOVE N'bettrans_index1_01'	 TO N'H:\USER_DB\bodb02\bodb02_bettrans_index1_01.ndf',
MOVE N'bettrans_index2_02'	 TO N'H:\USER_DB\bodb02\bettrans_index2_02.ndf',
MOVE N'bettrans_index2_01'	 TO N'H:\USER_DB\bodb02\bodb02_bettrans_index2_01.ndf',
MOVE N'bettrans_index3_02'	 TO N'H:\USER_DB\bodb02\bettrans_index3_02.ndf',
MOVE N'bettrans_index3_01'	 TO N'H:\USER_DB\bodb02\bodb02_bettrans_index3_01.ndf',
MOVE N'bettrans_table_01'	 TO N'H:\USER_DB\bodb02\bodb02_bettrans_table_01.ndf',
MOVE N'bettrans_table_02'	 TO N'H:\USER_DB\bodb02\bodb02_bettrans_table_02.ndf',
MOVE N'Customer_index_01'	 TO N'H:\USER_DB\bodb02\bodb02_Customer_index_01.ndf',
MOVE N'bettrans_table_03'	 TO N'H:\USER_DB\bodb02\bettrans_table_03.ndf',
MOVE N'Customer_table_01'	 TO N'H:\USER_DB\bodb02\bodb02_Customer_table_01.ndf',
MOVE N'Customer_table_02'	 TO N'H:\USER_DB\bodb02\bodb02_Customer_table_02.ndf',
MOVE N'CustInfo_index_01'	 TO N'H:\USER_DB\bodb02\bodb02_CustInfo_index_01.ndf',
MOVE N'CustInfo_table_01'	 TO N'H:\USER_DB\bodb02\bodb02_CustInfo_table_01.ndf',
MOVE N'CustInfo_table_02'	 TO N'H:\USER_DB\bodb02\bodb02_CustInfo_table_02.ndf',
MOVE N'Event_index_01'		 TO N'H:\USER_DB\bodb02\Event_index_01.ndf',
MOVE N'Event14_index_01'	 TO N'H:\USER_DB\bodb02\Event14_index_01.ndf',
MOVE N'Event14_table_01'	 TO N'H:\USER_DB\bodb02\Event14_table_01.ndf',
MOVE N'Others_index_01'			TO N'H:\USER_DB\bodb02\Others_index_01.ndf',
MOVE N'Others_table_01'			TO N'H:\USER_DB\bodb02\Others_table_01.ndf',
MOVE N'DAT3-1'					TO N'H:\USER_DB\bodb02\DAT3-1.ndf',
MOVE N'event_table-1'			TO N'H:\USER_DB\bodb02\event_table-1.ndf',
MOVE N'table_event-1'			TO N'H:\USER_DB\bodb02\table_event-1.ndf',
MOVE N'bodb02_table_Customer'	TO N'H:\USER_DB\bodb02\bodb02_table_Customer.ndf',
MOVE N'bettrans_forecast'		TO N'H:\USER_DB\bodb02\bettrans_forecast.ndf',
MOVE N'BettransG'				TO N'H:\USER_DB\bodb02\BettransG.ndf',
MOVE N'BettransG14'				TO N'H:\USER_DB\bodb02\BettransG14.ndf',
MOVE N'MatchForecast_index_01'	TO N'H:\USER_DB\bodb02\MatchForecast_index_01.ndf',
MOVE N'MatchForecast_table_01'	TO N'H:\USER_DB\bodb02\MatchForecast_table_01.ndf',
MOVE N'RiskInfo_index_01'		TO N'H:\USER_DB\bodb02\RiskInfo_index_01.ndf',
MOVE N'RiskInfo_table_01'		TO N'H:\USER_DB\bodb02\RiskInfo_table_01.ndf',
MOVE N'translog_table1'			TO N'H:\USER_DB\bodb02\translog_table1.ndf',
MOVE N'translog_table2'			TO N'H:\USER_DB\bodb02\translog_table2.ndf',
MOVE N'translog_index1'			TO N'H:\USER_DB\bodb02\translog_index1.ndf',
MOVE N'bettransLC_table'	 TO N'H:\USER_DB\bodb02\bettransLC_table.ndf',
MOVE N'bettransLC_index'	 TO N'H:\USER_DB\bodb02\bettransLC_index.ndf',
MOVE N'bettransLC14_table'	 TO N'H:\USER_DB\bodb02\bettransLC14_table.ndf',
MOVE N'bettransLC14_index'	 TO N'H:\USER_DB\bodb02\bettransLC14_index.ndf',
MOVE N'bettransRnG_table'	 TO N'H:\USER_DB\bodb02\bettransRnG_table.ndf',
MOVE N'bettransRnG_index'	 TO N'H:\USER_DB\bodb02\bettransRnG_index.ndf',
MOVE N'bettransRnG14_table'	 TO N'H:\USER_DB\bodb02\bettransRnG14_table.ndf',
MOVE N'bettransRnG14_index'	 TO N'H:\USER_DB\bodb02\bettransRnG14_index.ndf',
MOVE N'translog14_index'	 TO N'H:\USER_DB\bodb02\translog14_index.ndf',
MOVE N'translog14_table'	 TO N'H:\USER_DB\bodb02\translog14_table.ndf',
MOVE N'Odds3rd_index'			TO N'H:\USER_DB\bodb02\Odds3rd_index.ndf',
MOVE N'Odds3rd_data'			TO N'H:\USER_DB\bodb02\Odds3rd_data.ndf',
MOVE N'Odds3rd14_index'			TO N'H:\USER_DB\bodb02\Odds3rd14_index.ndf',
MOVE N'Odds3rd14_data'			TO N'H:\USER_DB\bodb02\Odds3rd14_data.ndf',
MOVE N'monlog_data_01'			TO N'H:\USER_DB\bodb02\monlog_data_01.ndf',
MOVE N'monlog_data_02'			TO N'H:\USER_DB\bodb02\monlog_data_02.ndf',
MOVE N'monlog_data_03'			TO N'H:\USER_DB\bodb02\monlog_data_03.ndf',
MOVE N'monlog_data_04'			TO N'H:\USER_DB\bodb02\monlog_data_04.ndf',
MOVE N'monlog_idx_01'			TO N'H:\USER_DB\bodb02\monlog_idx_01.ndf',
MOVE N'monlog_idx_02'			TO N'H:\USER_DB\bodb02\monlog_idx_02.ndf',
MOVE N'monlog_idx_03'			TO N'H:\USER_DB\bodb02\monlog_idx_03.ndf',
MOVE N'monlog_idx_04'			TO N'H:\USER_DB\bodb02\monlog_idx_04.ndf',
MOVE N'BetLucky3_Table'			TO N'H:\USER_DB\bodb02\BetLucky3_Table.NDF',
MOVE N'Event3rd_table'			TO N'H:\USER_DB\bodb02\Event3rd_table.ndf',
MOVE N'Event3rd14_table'		TO N'H:\USER_DB\bodb02\Event3rd14_table.ndf',
MOVE N'Event3rd_index'			TO N'H:\USER_DB\bodb02\Event3rd_index.ndf',
MOVE N'Event3rd14_index'		TO N'H:\USER_DB\bodb02\Event3rd14_index.ndf',
MOVE N'ServiceBrokerData_01'	TO N'H:\USER_DB\bodb02\ServiceBrokerData_01.ndf',
MOVE N'ServiceBroker_Data_001'	TO N'H:\USER_DB\bodb02\ServiceBroker_Data_001.ndf',
MOVE N'Odds_EX_index'			TO N'H:\USER_DB\bodb02\Odds_EX_index.ndf',
MOVE N'Odds_EX_table'			TO N'H:\USER_DB\bodb02\Odds_EX_table.ndf',
MOVE N'OddsES_table'		TO N'H:\USER_DB\bodb02\OddsES_table.ndf',
MOVE N'OddsES14_table'		TO N'H:\USER_DB\bodb02\OddsES14_table.ndf',
MOVE N'OddsES_index'		TO N'H:\USER_DB\bodb02\OddsES_index.ndf',
MOVE N'OddsES14_index'		TO N'H:\USER_DB\bodb02\OddsES14_index.ndf',
MOVE N'SMP_index'			TO N'H:\USER_DB\bodb02\SMP_index.ndf',
MOVE N'SMP_index14'			TO N'H:\USER_DB\bodb02\SMP_index14.ndf',
MOVE N'SMP_table'			TO N'H:\USER_DB\bodb02\SMP_table.ndf',
MOVE N'SMP_table14'			TO N'H:\USER_DB\bodb02\SMP_table14.ndf',
MOVE N'OddsEngine_index'		TO N'H:\USER_DB\bodb02\OddsEngine_index.ndf',
MOVE N'OddsEngine_table'		TO N'H:\USER_DB\bodb02\OddsEngine_table.ndf',
MOVE N'OddsCN88_index_01'		TO N'H:\USER_DB\bodb02\OddsCN88_index_01.NDF',
MOVE N'OddsCN88_table_01'		TO N'H:\USER_DB\bodb02\OddsCN88_Table_01.NDF',
MOVE N'OddsOS_index'			TO N'H:\USER_DB\bodb02\OddsOS_index.ndf',
MOVE N'OddsOS_table'			TO N'H:\USER_DB\bodb02\OddsOS_table.ndf',
MOVE N'OddsOS14_index'			TO N'H:\USER_DB\bodb02\OddsOS14_index.ndf',
MOVE N'OddsOS14_table'			TO N'H:\USER_DB\bodb02\OddsOS14_table.ndf',
MOVE N'oddsSettingOS_index'		TO N'H:\USER_DB\bodb02\oddsSettingOS_index.ndf',
MOVE N'oddsSettingOS_table'		TO N'H:\USER_DB\bodb02\oddsSettingOS_table.ndf',
MOVE N'oddsHistoryOS_index'		TO N'H:\USER_DB\bodb02\oddsHistoryOS_index.ndf',
MOVE N'oddsHistoryOS_table'		TO N'H:\USER_DB\bodb02\oddsHistoryOS_table.ndf',
MOVE N'BettransInfo_table1'		TO N'H:\USER_DB\bodb02\BettransInfo_table1.ndf',
MOVE N'BettransInfo_table2'		TO N'H:\USER_DB\bodb02\BettransInfo_table2.ndf',
MOVE N'BettransInfo_table3'		TO N'H:\USER_DB\bodb02\BettransInfo_table3.ndf',
MOVE N'BettransInfo_table4'		TO N'H:\USER_DB\bodb02\BettransInfo_table4.ndf',
MOVE N'BettransInfo14_table1'	TO N'H:\USER_DB\bodb02\BettransInfo14_table1.ndf',
MOVE N'BettransInfo14_table2'	TO N'H:\USER_DB\bodb02\BettransInfo14_table2.ndf',
MOVE N'BettransInfo14_table3'	TO N'H:\USER_DB\bodb02\BettransInfo14_table3.ndf',
MOVE N'BettransInfo14_table4'	TO N'H:\USER_DB\bodb02\BettransInfo14_table4.ndf',
MOVE N'bodb02_Log'				TO N'H:\USER_DB\bodb02\bodb02_Log.ldf',
  NOUNLOAD,  STATS = 10	
  
