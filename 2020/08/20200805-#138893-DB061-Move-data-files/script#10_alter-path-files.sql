/*
	Task - Move data files from F$ to I$
	1- alter path files
	2- stop sql service
	3- copy files
	4- start sql service

*/

--bodb_ACC
ALTER DATABASE bodb_ACC MODIFY FILE (NAME = bodb_Acc_log_02, FILENAME = N'I:\USER_DB\bodb_ACC\bodb_Acc_log_02.ldf');
ALTER DATABASE bodb_ACC MODIFY FILE (NAME = accDataBK_01, FILENAME = N'I:\USER_DB\bodb_ACC\accDataBK_01.ndf');

--bodb_Licensee
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = bodb_Licensee_log, FILENAME = N'I:\User_DB\bodb_Licensee\bodb_Licensee_log.ldf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = BA_Data_1, FILENAME = N'I:\User_DB\bodb_Licensee\BA_Data_01.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = BA_Index_1, FILENAME = N'I:\User_DB\bodb_Licensee\BA_Index_01.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = BATrans_BK, FILENAME = N'I:\USER_DB\bodb_Licensee\BATrans_BK.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = bodb_Licensee, FILENAME = N'I:\User_DB\bodb_Licensee\bodb_Licensee.mdf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = data01, FILENAME = N'I:\User_DB\bodb_Licensee\data01.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = data02, FILENAME = N'I:\User_DB\bodb_licensee\data02.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = licensee_index_2, FILENAME = N'I:\User_DB\bodb_licensee\licensee_index_02.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = licensee_table_02, FILENAME = N'I:\User_DB\bodb_Licensee\licensee_table_02.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = LicenseeCustComm_History_table_01, FILENAME = N'I:\USER_DB\bodb_Licensee\LicenseeCustComm_History_table_01.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = on_user_index_02, FILENAME = N'I:\User_DB\bodb_Licensee\on_user_index_02.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = on_user_table_02, FILENAME = N'I:\User_DB\bodb_Licensee\on_user_table_02.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = OWA_INDEX, FILENAME = N'I:\USER_DB\bodb_licensee\OWA_INDEX.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = OWA_DATA, FILENAME = N'I:\USER_DB\bodb_licensee\OWN_DATA.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = user_table_02, FILENAME = N'I:\User_DB\bodb_Licensee\user_table_02.ndf');

--bodb_TGRS
ALTER DATABASE bodb_TGRS MODIFY FILE (NAME = bodb_TGRS_log, FILENAME = N'I:\USER_DB\bodb_TGRS\bodb_TGRS_log.ldf');
ALTER DATABASE bodb_TGRS MODIFY FILE (NAME = bodb_TGRS, FILENAME = N'I:\USER_DB\bodb_TGRS\bodb_TGRS.mdf');
ALTER DATABASE bodb_TGRS MODIFY FILE (NAME = Data, FILENAME = N'I:\USER_DB\bodb_TGRS\Data.ndf');
ALTER DATABASE bodb_TGRS MODIFY FILE (NAME = [Index], FILENAME = N'I:\USER_DB\bodb_TGRS\Index.ndf');
ALTER DATABASE bodb_TGRS MODIFY FILE (NAME = Trader_StagingDB, FILENAME = N'I:\USER_DB\bodb_TGRS\Trader_StagingDB.ndf');
ALTER DATABASE bodb_TGRS MODIFY FILE (NAME = TraderInfo_Index, FILENAME = N'I:\USER_DB\bodb_TGRS\TraderInfo_Index.ndf');
ALTER DATABASE bodb_TGRS MODIFY FILE (NAME = TraderInfo_Table, FILENAME = N'I:\USER_DB\bodb_TGRS\TraderInfo_Table.ndf');
ALTER DATABASE bodb_TGRS MODIFY FILE (NAME = TraderPerformanceDetail_Index, FILENAME = N'I:\USER_DB\bodb_TGRS\TraderPerformanceDetail_Index.ndf');
ALTER DATABASE bodb_TGRS MODIFY FILE (NAME = TraderPerformanceDetail_Table, FILENAME = N'I:\USER_DB\bodb_TGRS\TraderPerformanceDetail_Table.ndf');
ALTER DATABASE bodb_TGRS MODIFY FILE (NAME = TraderPerformanceSummary_Index, FILENAME = N'I:\USER_DB\bodb_TGRS\TraderPerformanceSummary_Index.ndf');
ALTER DATABASE bodb_TGRS MODIFY FILE (NAME = TraderPerformanceSummary_Table, FILENAME = N'I:\USER_DB\bodb_TGRS\TraderPerformanceSummary_Table.ndf');
ALTER DATABASE bodb_TGRS MODIFY FILE (NAME = UserLog_RunSp, FILENAME = N'I:\USER_DB\bodb_TGRS\UserLog_RunSp.ndf');