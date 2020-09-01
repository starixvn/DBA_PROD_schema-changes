/*
	Task - Rearrange data files

	 Steps:
		1- Update path files
		2- Stop sql service
		3- Copy data file to new location
		4- Start sql service
		5- Check result
*/
USE master
GO

--update path file @msdb
ALTER DATABASE msdb MODIFY FILE (NAME = MSDBLog, FILENAME = N'I:\user_db\msdb\MSDBLog.ldf');
ALTER DATABASE msdb MODIFY FILE (NAME = MSDBData, FILENAME = N'I:\user_db\msdb\MSDBData.mdf');

--update path file @bodb_Licensee
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = bodb_Licensee_log, FILENAME = N'I:\user_db\bodb_Licensee\bodb_Licensee_log.ldf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = bodb_Licensee_log03, FILENAME = N'I:\user_db\bodb_Licensee\bodb_Licensee_log03.ldf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = AFF_Data_01, FILENAME = N'I:\user_db\bodb_Licensee\AFF\AFF_Data_01.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = AFF_Index_01, FILENAME = N'I:\user_db\bodb_Licensee\AFF\AFF_Index_01.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = BA_Data_1, FILENAME = N'I:\user_db\bodb_Licensee\BA\BA_Data_01.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = BA_Index_1, FILENAME = N'I:\user_db\bodb_Licensee\BA\BA_Index_01.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = BATrans_01, FILENAME = N'I:\user_db\bodb_Licensee\BATrans_01.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = BATrans_BK_01, FILENAME = N'I:\user_db\bodb_Licensee\BATrans_BK_01.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = BATrans_BK_02, FILENAME = N'I:\user_db\bodb_Licensee\BATrans_BK_02.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = bodb_Licensee, FILENAME = N'I:\user_db\bodb_Licensee\bodb_Licensee.mdf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = data01, FILENAME = N'I:\user_db\bodb_Licensee\data01.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = data02, FILENAME = N'I:\user_db\bodb_Licensee\data02.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = DW_KPI_DATA_01, FILENAME = N'I:\user_db\bodb_Licensee\DW_KPI_DATA_01.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = licensee_index_2, FILENAME = N'I:\user_db\bodb_Licensee\licensee_index_02.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = licensee_table_02, FILENAME = N'I:\user_db\bodb_Licensee\licensee_table_02.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = LicenseeCustComm_History_table_01, FILENAME = N'I:\user_db\bodb_Licensee\LicenseeCustComm_History_table_01.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = on_user_index_02, FILENAME = N'I:\user_db\bodb_Licensee\on_user_index_02.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = on_user_table_02, FILENAME = N'I:\user_db\bodb_Licensee\on_user_table_02.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = OWA_Data_02, FILENAME = N'I:\user_db\bodb_Licensee\OWA\OWA_Data_02.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = OWA_Index_02, FILENAME = N'I:\user_db\bodb_Licensee\OWA\OWA_Index_02.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = OWA_Userlog_data_03, FILENAME = N'I:\user_db\bodb_Licensee\OWA\OWA_Userlog_data_03.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = OWA_Userlog_index_03, FILENAME = N'I:\user_db\bodb_Licensee\OWA\OWA_Userlog_index_03.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = user_table_02, FILENAME = N'I:\user_db\bodb_Licensee\user_table_02.ndf');
ALTER DATABASE bodb_Licensee MODIFY FILE (NAME = userlog_table_02, FILENAME = N'I:\user_db\bodb_Licensee\userlog_table_02.ndf');

--update path file @Affiliate_N88
ALTER DATABASE Affiliate_N88 MODIFY FILE (NAME = Affiliate_N88_log, FILENAME = N'F:\USER_DB\Affiliate_N88\Affiliate_N88.ldf');
ALTER DATABASE Affiliate_N88 MODIFY FILE (NAME = Affiliate_N88, FILENAME = N'F:\USER_DB\Affiliate_N88\Affiliate_N88.mdf');
ALTER DATABASE Affiliate_N88 MODIFY FILE (NAME = AffData, FILENAME = N'F:\USER_DB\Affiliate_N88\Affiliate_N88_1.ndf');
ALTER DATABASE Affiliate_N88 MODIFY FILE (NAME = ReportData, FILENAME = N'F:\USER_DB\Affiliate_N88\Affiliate_N88_2.ndf');
ALTER DATABASE Affiliate_N88 MODIFY FILE (NAME = SettingData, FILENAME = N'F:\USER_DB\Affiliate_N88\Affiliate_N88_3.ndf');
ALTER DATABASE Affiliate_N88 MODIFY FILE (NAME = LogData, FILENAME = N'F:\USER_DB\Affiliate_N88\Affiliate_N88_4.ndf');

--update path file @bodb_LicenseeReport
ALTER DATABASE bodb_LicenseeReport MODIFY FILE (NAME = rpt_CustomerWL_ExtraGMT_20M04, FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_CustomerWL_ExtraGMT\rpt_CustomerWL_ExtraGMT_20M04.ndf');
ALTER DATABASE bodb_LicenseeReport MODIFY FILE (NAME = rpt_CustomerWL_ExtraGMT_20M05, FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_CustomerWL_ExtraGMT\rpt_CustomerWL_ExtraGMT_20M05.ndf');
ALTER DATABASE bodb_LicenseeReport MODIFY FILE (NAME = rpt_CustomerWL_ExtraGMT_20M06, FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_CustomerWL_ExtraGMT\rpt_CustomerWL_ExtraGMT_20M06.ndf');
ALTER DATABASE bodb_LicenseeReport MODIFY FILE (NAME = rpt_CustomerWL_ExtraGMT_20M07, FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_CustomerWL_ExtraGMT\rpt_CustomerWL_ExtraGMT_20M07.ndf');
ALTER DATABASE bodb_LicenseeReport MODIFY FILE (NAME = rpt_CustomerWL_ExtraGMT_20M08, FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_CustomerWL_ExtraGMT\rpt_CustomerWL_ExtraGMT_20M08.ndf');
ALTER DATABASE bodb_LicenseeReport MODIFY FILE (NAME = rpt_CustomerWL_ExtraGMT_20M09, FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_CustomerWL_ExtraGMT\rpt_CustomerWL_ExtraGMT_20M09.ndf');
ALTER DATABASE bodb_LicenseeReport MODIFY FILE (NAME = rpt_CustomerWL_ExtraGMT_20M10, FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_CustomerWL_ExtraGMT\rpt_CustomerWL_ExtraGMT_20M10.ndf');
ALTER DATABASE bodb_LicenseeReport MODIFY FILE (NAME = rpt_CustomerWL_ExtraGMT_20M11, FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_CustomerWL_ExtraGMT\rpt_CustomerWL_ExtraGMT_20M11.ndf');
ALTER DATABASE bodb_LicenseeReport MODIFY FILE (NAME = rpt_CustomerWL_ExtraGMT_20M12, FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_CustomerWL_ExtraGMT\rpt_CustomerWL_ExtraGMT_20M12.ndf');
ALTER DATABASE bodb_LicenseeReport MODIFY FILE (NAME = rpt_CustomerWL_ExtraGMT_21M01, FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_CustomerWL_ExtraGMT\rpt_CustomerWL_ExtraGMT_21M01.ndf');
ALTER DATABASE bodb_LicenseeReport MODIFY FILE (NAME = rpt_CustomerWL_ExtraGMT_21M02, FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_CustomerWL_ExtraGMT\rpt_CustomerWL_ExtraGMT_21M02.ndf');
ALTER DATABASE bodb_LicenseeReport MODIFY FILE (NAME = rpt_CustomerWL_ExtraGMT_21M03, FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_CustomerWL_ExtraGMT\rpt_CustomerWL_ExtraGMT_21M03.ndf');
ALTER DATABASE bodb_LicenseeReport MODIFY FILE (NAME = rpt_CustomerWL_ExtraGMT_21M04, FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_CustomerWL_ExtraGMT\rpt_CustomerWL_ExtraGMT_21M04.ndf');
ALTER DATABASE bodb_LicenseeReport MODIFY FILE (NAME = rpt_CustomerWL_ExtraGMT_21M05, FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_CustomerWL_ExtraGMT\rpt_CustomerWL_ExtraGMT_21M05.ndf');
ALTER DATABASE bodb_LicenseeReport MODIFY FILE (NAME = rpt_CustomerWL_ExtraGMT_21M06, FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_CustomerWL_ExtraGMT\rpt_CustomerWL_ExtraGMT_21M06.ndf');
ALTER DATABASE bodb_LicenseeReport MODIFY FILE (NAME = rpt_CustomerWL_ExtraGMT_21M07, FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_CustomerWL_ExtraGMT\rpt_CustomerWL_ExtraGMT_21M07.ndf');
ALTER DATABASE bodb_LicenseeReport MODIFY FILE (NAME = rpt_CustomerWL_ExtraGMT_21M08, FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_CustomerWL_ExtraGMT\rpt_CustomerWL_ExtraGMT_21M08.ndf');
ALTER DATABASE bodb_LicenseeReport MODIFY FILE (NAME = rpt_CustomerWL_ExtraGMT_21M09, FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_CustomerWL_ExtraGMT\rpt_CustomerWL_ExtraGMT_21M09.ndf');
ALTER DATABASE bodb_LicenseeReport MODIFY FILE (NAME = rpt_CustomerWL_ExtraGMT_21M10, FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_CustomerWL_ExtraGMT\rpt_CustomerWL_ExtraGMT_21M10.ndf');
ALTER DATABASE bodb_LicenseeReport MODIFY FILE (NAME = rpt_CustomerWL_ExtraGMT_21M11, FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_CustomerWL_ExtraGMT\rpt_CustomerWL_ExtraGMT_21M11.ndf');
ALTER DATABASE bodb_LicenseeReport MODIFY FILE (NAME = rpt_CustomerWL_ExtraGMT_21M12, FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_CustomerWL_ExtraGMT\rpt_CustomerWL_ExtraGMT_21M12.ndf');
ALTER DATABASE bodb_LicenseeReport MODIFY FILE (NAME = rpt_CustomerWL_ExtraGMT_22M01, FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_CustomerWL_ExtraGMT\rpt_CustomerWL_ExtraGMT_22M01.ndf');
ALTER DATABASE bodb_LicenseeReport MODIFY FILE (NAME = rpt_CustomerWL_ExtraGMT_22M02, FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_CustomerWL_ExtraGMT\rpt_CustomerWL_ExtraGMT_22M02.ndf');
ALTER DATABASE bodb_LicenseeReport MODIFY FILE (NAME = rpt_CustomerWL_ExtraGMT_22M03, FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_CustomerWL_ExtraGMT\rpt_CustomerWL_ExtraGMT_22M03.ndf');
ALTER DATABASE bodb_LicenseeReport MODIFY FILE (NAME = rpt_CustomerWL_ExtraGMT_22M04, FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_CustomerWL_ExtraGMT\rpt_CustomerWL_ExtraGMT_22M04.ndf');
ALTER DATABASE bodb_LicenseeReport MODIFY FILE (NAME = rpt_CustomerWL_ExtraGMT_22M05, FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_CustomerWL_ExtraGMT\rpt_CustomerWL_ExtraGMT_22M05.ndf');
ALTER DATABASE bodb_LicenseeReport MODIFY FILE (NAME = rpt_CustomerWL_ExtraGMT_22M06, FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_CustomerWL_ExtraGMT\rpt_CustomerWL_ExtraGMT_22M06.ndf');
ALTER DATABASE bodb_LicenseeReport MODIFY FILE (NAME = rpt_CustomerWL_ExtraGMT_22M07, FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_CustomerWL_ExtraGMT\rpt_CustomerWL_ExtraGMT_22M07.ndf');
ALTER DATABASE bodb_LicenseeReport MODIFY FILE (NAME = rpt_CustomerWL_ExtraGMT_22M08, FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_CustomerWL_ExtraGMT\rpt_CustomerWL_ExtraGMT_22M08.ndf');
ALTER DATABASE bodb_LicenseeReport MODIFY FILE (NAME = rpt_CustomerWL_ExtraGMT_22M09, FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_CustomerWL_ExtraGMT\rpt_CustomerWL_ExtraGMT_22M09.ndf');
ALTER DATABASE bodb_LicenseeReport MODIFY FILE (NAME = rpt_CustomerWL_ExtraGMT_22M10, FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_CustomerWL_ExtraGMT\rpt_CustomerWL_ExtraGMT_22M10.ndf');
ALTER DATABASE bodb_LicenseeReport MODIFY FILE (NAME = rpt_CustomerWL_ExtraGMT_22M11, FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_CustomerWL_ExtraGMT\rpt_CustomerWL_ExtraGMT_22M11.ndf');
ALTER DATABASE bodb_LicenseeReport MODIFY FILE (NAME = rpt_CustomerWL_ExtraGMT_22M12, FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_CustomerWL_ExtraGMT\rpt_CustomerWL_ExtraGMT_22M12.ndf');
ALTER DATABASE bodb_LicenseeReport MODIFY FILE (NAME = rpt_CustomerWL_ExtraGMT_MAX, FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_CustomerWL_ExtraGMT\rpt_CustomerWL_ExtraGMT_MAX.ndf');

--update path file @bodb_N88
ALTER DATABASE bodb_N88 MODIFY FILE (NAME = bodb_N88_log, FILENAME = N'F:\USER_DB\bodb_N88\bodb_N88_Log.ldf');
ALTER DATABASE bodb_N88 MODIFY FILE (NAME = bodb_N88, FILENAME = N'F:\USER_DB\bodb_N88\bodb_N88.mdf');
ALTER DATABASE bodb_N88 MODIFY FILE (NAME = N88_RptWinloss_20M05, FILENAME = N'F:\USER_DB\bodb_N88\N88_RptWinloss\N88_RptWinloss_20M05.ndf');
ALTER DATABASE bodb_N88 MODIFY FILE (NAME = N88_RptWinloss_20M06, FILENAME = N'F:\USER_DB\bodb_N88\N88_RptWinloss\N88_RptWinloss_20M06.ndf');
ALTER DATABASE bodb_N88 MODIFY FILE (NAME = N88_RptWinloss_20M07, FILENAME = N'F:\USER_DB\bodb_N88\N88_RptWinloss\N88_RptWinloss_20M07.ndf');
ALTER DATABASE bodb_N88 MODIFY FILE (NAME = N88_RptWinloss_20M08, FILENAME = N'F:\USER_DB\bodb_N88\N88_RptWinloss\N88_RptWinloss_20M08.ndf');
ALTER DATABASE bodb_N88 MODIFY FILE (NAME = N88_RptWinloss_20M09, FILENAME = N'F:\USER_DB\bodb_N88\N88_RptWinloss\N88_RptWinloss_20M09.ndf');
ALTER DATABASE bodb_N88 MODIFY FILE (NAME = N88_RptWinloss_20M10, FILENAME = N'F:\USER_DB\bodb_N88\N88_RptWinloss\N88_RptWinloss_20M10.ndf');
ALTER DATABASE bodb_N88 MODIFY FILE (NAME = N88_RptWinloss_20M11, FILENAME = N'F:\USER_DB\bodb_N88\N88_RptWinloss\N88_RptWinloss_20M11.ndf');
ALTER DATABASE bodb_N88 MODIFY FILE (NAME = N88_RptWinloss_20M12, FILENAME = N'F:\USER_DB\bodb_N88\N88_RptWinloss\N88_RptWinloss_20M12.ndf');
ALTER DATABASE bodb_N88 MODIFY FILE (NAME = N88_RptWinloss_21M01, FILENAME = N'F:\USER_DB\bodb_N88\N88_RptWinloss\N88_RptWinloss_21M01.ndf');
ALTER DATABASE bodb_N88 MODIFY FILE (NAME = N88_RptWinloss_21M02, FILENAME = N'F:\USER_DB\bodb_N88\N88_RptWinloss\N88_RptWinloss_21M02.ndf');
ALTER DATABASE bodb_N88 MODIFY FILE (NAME = N88_RptWinloss_21M03, FILENAME = N'F:\USER_DB\bodb_N88\N88_RptWinloss\N88_RptWinloss_21M03.ndf');
ALTER DATABASE bodb_N88 MODIFY FILE (NAME = N88_RptWinloss_21M04, FILENAME = N'F:\USER_DB\bodb_N88\N88_RptWinloss\N88_RptWinloss_21M04.ndf');
ALTER DATABASE bodb_N88 MODIFY FILE (NAME = N88_RptWinloss_21M05, FILENAME = N'F:\USER_DB\bodb_N88\N88_RptWinloss\N88_RptWinloss_21M05.ndf');
ALTER DATABASE bodb_N88 MODIFY FILE (NAME = N88_RptWinloss_21M06, FILENAME = N'F:\USER_DB\bodb_N88\N88_RptWinloss\N88_RptWinloss_21M06.ndf');
ALTER DATABASE bodb_N88 MODIFY FILE (NAME = N88_RptWinloss_21M07, FILENAME = N'F:\USER_DB\bodb_N88\N88_RptWinloss\N88_RptWinloss_21M07.ndf');
ALTER DATABASE bodb_N88 MODIFY FILE (NAME = N88_RptWinloss_21M08, FILENAME = N'F:\USER_DB\bodb_N88\N88_RptWinloss\N88_RptWinloss_21M08.ndf');
ALTER DATABASE bodb_N88 MODIFY FILE (NAME = N88_RptWinloss_21M09, FILENAME = N'F:\USER_DB\bodb_N88\N88_RptWinloss\N88_RptWinloss_21M09.ndf');
ALTER DATABASE bodb_N88 MODIFY FILE (NAME = N88_RptWinloss_21M10, FILENAME = N'F:\USER_DB\bodb_N88\N88_RptWinloss\N88_RptWinloss_21M10.ndf');
ALTER DATABASE bodb_N88 MODIFY FILE (NAME = N88_RptWinloss_21M11, FILENAME = N'F:\USER_DB\bodb_N88\N88_RptWinloss\N88_RptWinloss_21M11.ndf');
ALTER DATABASE bodb_N88 MODIFY FILE (NAME = N88_RptWinloss_21M12, FILENAME = N'F:\USER_DB\bodb_N88\N88_RptWinloss\N88_RptWinloss_21M12.ndf');
ALTER DATABASE bodb_N88 MODIFY FILE (NAME = N88_RptWinloss_22M01, FILENAME = N'F:\USER_DB\bodb_N88\N88_RptWinloss\N88_RptWinloss_22M01.ndf');
ALTER DATABASE bodb_N88 MODIFY FILE (NAME = N88_RptWinloss_22M02, FILENAME = N'F:\USER_DB\bodb_N88\N88_RptWinloss\N88_RptWinloss_22M02.ndf');
ALTER DATABASE bodb_N88 MODIFY FILE (NAME = N88_RptWinloss_22M03, FILENAME = N'F:\USER_DB\bodb_N88\N88_RptWinloss\N88_RptWinloss_22M03.ndf');
ALTER DATABASE bodb_N88 MODIFY FILE (NAME = N88_RptWinloss_22M04, FILENAME = N'F:\USER_DB\bodb_N88\N88_RptWinloss\N88_RptWinloss_22M04.ndf');
ALTER DATABASE bodb_N88 MODIFY FILE (NAME = N88_RptWinloss_22M05, FILENAME = N'F:\USER_DB\bodb_N88\N88_RptWinloss\N88_RptWinloss_22M05.ndf');
ALTER DATABASE bodb_N88 MODIFY FILE (NAME = N88_RptWinloss_22M06, FILENAME = N'F:\USER_DB\bodb_N88\N88_RptWinloss\N88_RptWinloss_22M06.ndf');
ALTER DATABASE bodb_N88 MODIFY FILE (NAME = N88_RptWinloss_22M07, FILENAME = N'F:\USER_DB\bodb_N88\N88_RptWinloss\N88_RptWinloss_22M07.ndf');
ALTER DATABASE bodb_N88 MODIFY FILE (NAME = N88_RptWinloss_22M08, FILENAME = N'F:\USER_DB\bodb_N88\N88_RptWinloss\N88_RptWinloss_22M08.ndf');
ALTER DATABASE bodb_N88 MODIFY FILE (NAME = N88_RptWinloss_22M09, FILENAME = N'F:\USER_DB\bodb_N88\N88_RptWinloss\N88_RptWinloss_22M09.ndf');
ALTER DATABASE bodb_N88 MODIFY FILE (NAME = N88_RptWinloss_22M10, FILENAME = N'F:\USER_DB\bodb_N88\N88_RptWinloss\N88_RptWinloss_22M10.ndf');
ALTER DATABASE bodb_N88 MODIFY FILE (NAME = N88_RptWinloss_22M11, FILENAME = N'F:\USER_DB\bodb_N88\N88_RptWinloss\N88_RptWinloss_22M11.ndf');
ALTER DATABASE bodb_N88 MODIFY FILE (NAME = N88_RptWinloss_22M12, FILENAME = N'F:\USER_DB\bodb_N88\N88_RptWinloss\N88_RptWinloss_22M12.ndf');
ALTER DATABASE bodb_N88 MODIFY FILE (NAME = N88_RptWinloss_MAX, FILENAME = N'F:\USER_DB\bodb_N88\N88_RptWinloss\N88_RptWinloss_MAX.ndf');
ALTER DATABASE bodb_N88 MODIFY FILE (NAME = ReportData, FILENAME = N'F:\USER_DB\bodb_N88\ReportData.ndf');
ALTER DATABASE bodb_N88 MODIFY FILE (NAME = SettingData, FILENAME = N'F:\USER_DB\bodb_N88\SettingData.ndf');