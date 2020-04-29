/*
	Task - Move data file from I$ to F$
		+ BetBackup, bodb_ACC, bodb_Licensee, bodb_OWP, bodb_TGRS, LasDB_Archive

	Steps:
		1- update path files
		2- stop sql service
		3- copy data file from I$ to F$
		4- start sql service and check result
*/

--==BetBackup
ALTER DATABASE BetBackup MODIFY FILE (NAME = [BetBackup_Data], FILENAME = N'F:\USER_DB\BetBackup\BetBackup_Data.MDF');
ALTER DATABASE BetBackup MODIFY FILE (NAME = [BetBackup_Data02], FILENAME = N'F:\USER_DB\BetBackup\BetBackup_Data02.ndf');
ALTER DATABASE BetBackup MODIFY FILE (NAME = [BetBackup_Data03], FILENAME = N'F:\USER_DB\BetBackup\BetBackup_Data03.ndf');
ALTER DATABASE BetBackup MODIFY FILE (NAME = [BetBackup_Data04], FILENAME = N'F:\USER_DB\BetBackup\BetBackup_Data04.ndf');
ALTER DATABASE BetBackup MODIFY FILE (NAME = [BetBackup_Log2], FILENAME = N'F:\USER_DB\BetBackup\BetBackup_Log2.ldf');

--==bodb_ACC
ALTER DATABASE bodb_ACC MODIFY FILE (NAME = [accDataBK_01], FILENAME = N'F:\USER_DB\bodb_ACC\accDataBK_01.ndf');
ALTER DATABASE bodb_ACC MODIFY FILE (NAME = [bodb_Acc_log_02], FILENAME = N'F:\USER_DB\bodb_ACC\bodb_Acc_log_02.ldf');

--==bodb_Licensee
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = [BA_Data_1], FILENAME = N'F:\User_DB\bodb_Licensee\BA_Data_01.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = [BA_Index_1], FILENAME = N'F:\User_DB\bodb_Licensee\BA_Index_01.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = [BATrans_BK], FILENAME = N'F:\USER_DB\bodb_Licensee\BATrans_BK.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = [bodb_Licensee], FILENAME = N'F:\User_DB\bodb_Licensee\bodb_Licensee.mdf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = [bodb_Licensee_log], FILENAME = N'F:\User_DB\bodb_Licensee\bodb_Licensee_log.ldf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = [data01], FILENAME = N'F:\User_DB\bodb_Licensee\data01.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = [data02], FILENAME = N'F:\User_DB\bodb_licensee\data02.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = [licensee_index_2], FILENAME = N'F:\User_DB\bodb_licensee\licensee_index_02.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = [licensee_table_02], FILENAME = N'F:\User_DB\bodb_Licensee\licensee_table_02.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = [on_user_index_02], FILENAME = N'F:\User_DB\bodb_Licensee\on_user_index_02.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = [on_user_table_02], FILENAME = N'F:\User_DB\bodb_Licensee\on_user_table_02.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = [OWA_DATA], FILENAME = N'F:\USER_DB\bodb_licensee\OWN_DATA.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = [OWA_INDEX], FILENAME = N'F:\USER_DB\bodb_licensee\OWA_INDEX.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = [user_table_02], FILENAME = N'F:\User_DB\bodb_Licensee\user_table_02.ndf');

--==bodb_OWP
ALTER DATABASE bodb_OWP MODIFY FILE (NAME = [bodb_OWP], FILENAME = N'F:\USER_DB\bodb_OWP\bodb_OWP.mdf');
ALTER DATABASE bodb_OWP MODIFY FILE (NAME = [bodb_OWP_log], FILENAME = N'F:\USER_DB\bodb_OWP\bodb_OWP_log.ldf');
ALTER DATABASE bodb_OWP MODIFY FILE (NAME = [OWP_Data], FILENAME = N'F:\USER_DB\bodb_OWP\OWP_Data.ndf');
ALTER DATABASE bodb_OWP MODIFY FILE (NAME = [OWP_Index], FILENAME = N'F:\USER_DB\bodb_OWP\OWP_Index.ndf');
ALTER DATABASE bodb_OWP MODIFY FILE (NAME = [bodb_OWP_Data], FILENAME = N'F:\USER_DB\bodb_OWP\bodb_OWP_Data.ndf');

--==bodb_TGRS
ALTER DATABASE bodb_TGRS MODIFY FILE (NAME = [bodb_TGRS], FILENAME = N'F:\USER_DB\bodb_TGRS\bodb_TGRS.mdf');
ALTER DATABASE bodb_TGRS MODIFY FILE (NAME = [bodb_TGRS_log], FILENAME = N'F:\USER_DB\bodb_TGRS\bodb_TGRS_log.ldf');
ALTER DATABASE bodb_TGRS MODIFY FILE (NAME = [Data], FILENAME = N'F:\USER_DB\bodb_TGRS\Data.ndf');
ALTER DATABASE bodb_TGRS MODIFY FILE (NAME = [Index], FILENAME = N'F:\USER_DB\bodb_TGRS\Index.ndf');
ALTER DATABASE bodb_TGRS MODIFY FILE (NAME = [Trader_StagingDB], FILENAME = N'F:\USER_DB\bodb_TGRS\Trader_StagingDB.ndf');
ALTER DATABASE bodb_TGRS MODIFY FILE (NAME = [TraderInfo_Index], FILENAME = N'F:\USER_DB\bodb_TGRS\TraderInfo_Index.ndf');
ALTER DATABASE bodb_TGRS MODIFY FILE (NAME = [TraderInfo_Table], FILENAME = N'F:\USER_DB\bodb_TGRS\TraderInfo_Table.ndf');
ALTER DATABASE bodb_TGRS MODIFY FILE (NAME = [TraderPerformanceDetail_Index], FILENAME = N'F:\USER_DB\bodb_TGRS\TraderPerformanceDetail_Index.ndf');
ALTER DATABASE bodb_TGRS MODIFY FILE (NAME = [TraderPerformanceDetail_Table], FILENAME = N'F:\USER_DB\bodb_TGRS\TraderPerformanceDetail_Table.ndf');
ALTER DATABASE bodb_TGRS MODIFY FILE (NAME = [TraderPerformanceSummary_Index], FILENAME = N'F:\USER_DB\bodb_TGRS\TraderPerformanceSummary_Index.ndf');
ALTER DATABASE bodb_TGRS MODIFY FILE (NAME = [TraderPerformanceSummary_Table], FILENAME = N'F:\USER_DB\bodb_TGRS\TraderPerformanceSummary_Table.ndf');
ALTER DATABASE bodb_TGRS MODIFY FILE (NAME = [UserLog_RunSp], FILENAME = N'F:\USER_DB\bodb_TGRS\UserLog_RunSp.ndf');

--==LasDB_Archive
ALTER DATABASE LasDB_Archive MODIFY FILE (NAME = [LASDB], FILENAME = N'F:\USER_DB\LasDB_Archive\LASDB.mdf');
ALTER DATABASE LasDB_Archive MODIFY FILE (NAME = [LASDB_log], FILENAME = N'F:\USER_DB\LasDB_Archive\LASDB_log.ldf');
ALTER DATABASE LasDB_Archive MODIFY FILE (NAME = [BETBK_data], FILENAME = N'F:\USER_DB\LasDB_Archive\BETBK_data.ndf');
ALTER DATABASE LasDB_Archive MODIFY FILE (NAME = [bettrans_agent_index], FILENAME = N'F:\USER_DB\LasDB_Archive\bettrans_agent_index.ndf');
ALTER DATABASE LasDB_Archive MODIFY FILE (NAME = [bettrans_agent_table], FILENAME = N'F:\USER_DB\LasDB_Archive\bettrans_agent_table.ndf');
ALTER DATABASE LasDB_Archive MODIFY FILE (NAME = [bettrans_index], FILENAME = N'F:\USER_DB\LasDB_Archive\bettrans_index.ndf');
ALTER DATABASE LasDB_Archive MODIFY FILE (NAME = [betrans_table], FILENAME = N'F:\USER_DB\LasDB_Archive\betrans_table.ndf');
ALTER DATABASE LasDB_Archive MODIFY FILE (NAME = [bettransm_index], FILENAME = N'F:\USER_DB\LasDB_Archive\bettransm_index.ndf');
ALTER DATABASE LasDB_Archive MODIFY FILE (NAME = [betransm_table], FILENAME = N'F:\USER_DB\LasDB_Archive\betransm_table.ndf');
ALTER DATABASE LasDB_Archive MODIFY FILE (NAME = [DATA], FILENAME = N'F:\USER_DB\LasDB_Archive\DATA.ndf');
ALTER DATABASE LasDB_Archive MODIFY FILE (NAME = [INDEX], FILENAME = N'F:\USER_DB\LasDB_Archive\INDEX.ndf');
ALTER DATABASE LasDB_Archive MODIFY FILE (NAME = [TRANSBK_data], FILENAME = N'F:\USER_DB\LasDB_Archive\TRANSBK_data.ndf');
ALTER DATABASE LasDB_Archive MODIFY FILE (NAME = [Transfer_bk_Index], FILENAME = N'F:\USER_DB\LasDB_Archive\Transfer_bk_Index.ndf');
ALTER DATABASE LasDB_Archive MODIFY FILE (NAME = [Transfer_bk_Table], FILENAME = N'F:\USER_DB\LasDB_Archive\Transfer_bk_Table.ndf');