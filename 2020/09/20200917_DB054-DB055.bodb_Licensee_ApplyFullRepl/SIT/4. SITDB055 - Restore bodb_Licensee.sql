/*
	Task: Restore SITDB055.bodb_Licensee from backup file of DB052.bodb_Licensee for applying full replication
	Run on SIT Env - SITDB055, need create folder AFF, BA, DW_rpt_Betting, OWA, rptLicWL in G:\USER_DB\bodb_Licensee\
*/

USE [master]
GO

ALTER DATABASE [bodb_Licensee] SET SINGLE_USER WITH ROLLBACK IMMEDIATE

RESTORE DATABASE [bodb_Licensee]
FROM DISK = 
	N'G:\BACKUP\SITDB052.bodb_Licensee_20200915.bak'
WITH FILE = 1, MOVE N'bodb_Licensee' TO 
	N'G:\USER_DB\bodb_Licensee\bodb_Licensee.mdf', 
	MOVE N'bodb_Licensee_log' TO 
	N'G:\USER_DB\bodb_Licensee\bodb_Licensee_log.ldf'
	, MOVE N'AFF_Data_01' TO 
	N'G:\USER_DB\bodb_Licensee\AFF\AFF_Data_01.ndf'
	, MOVE N'AFF_Index_01' TO 
	N'G:\USER_DB\bodb_Licensee\AFF\AFF_Index_01.ndf'
	, MOVE N'BA_Data_1' TO 
	N'G:\USER_DB\bodb_Licensee\BA\BA_Data_01.ndf', 
	MOVE N'BA_Index_1' TO 
	N'G:\USER_DB\bodb_Licensee\BA\BA_Index_01.ndf'
	, MOVE N'BATrans_01' TO 
	N'G:\USER_DB\bodb_Licensee\BATrans_01.ndf', 
	MOVE N'BATrans_BK_01' TO 
	N'G:\USER_DB\bodb_Licensee\BATrans_BK_01.ndf', 
	MOVE N'BATrans_BK_02' TO 
	N'G:\USER_DB\bodb_Licensee\BATrans_BK_02.ndf', 
	MOVE N'data01' TO 
	N'G:\USER_DB\bodb_Licensee\data01.ndf', MOVE 
	N'data02' TO 
	N'G:\USER_DB\bodb_licensee\data02.ndf', MOVE 
	N'DW_KPI_DATA_01' TO 
	N'G:\USER_DB\bodb_Licensee\DW_KPI_DATA_01.ndf'
	, MOVE N'LicenseeCustComm_History_table_01' TO 
	N'G:\USER_DB\bodb_Licensee\LicenseeCustComm_History_table_01.ndf'
	, MOVE N'index_02' TO 
	N'G:\USER_DB\bodb_Licensee\index_02.ndf', MOVE 
	N'licensee_index_2' TO 
	N'G:\USER_DB\bodb_licensee\licensee_index_02.ndf'
	, MOVE N'licensee_table_02' TO 
	N'G:\USER_DB\bodb_Licensee\licensee_table_02.ndf'
	, MOVE N'on_user_index_02' TO 
	N'G:\USER_DB\bodb_Licensee\on_user_index_02.ndf'
	, MOVE N'on_user_table_02' TO 
	N'G:\USER_DB\bodb_Licensee\on_user_table_02.ndf'
	, MOVE N'OWA_Data_02' TO 
	N'G:\USER_DB\bodb_Licensee\OWA\OWA_Data_02.ndf'
	, MOVE N'OWA_Index_02' TO 
	N'G:\USER_DB\bodb_Licensee\OWA\OWA_Index_02.ndf'
	, MOVE N'OWA_Userlog_data_03' TO 
	N'G:\USER_DB\bodb_Licensee\OWA\OWA_Userlog_data_03.ndf'
	, MOVE N'OWA_Userlog_index_03' TO 
	N'G:\USER_DB\bodb_Licensee\OWA\OWA_Userlog_index_03.ndf'
	, MOVE N'_rptBetting_MAX_DATA' TO 
	N'G:\USER_DB\bodb_Licensee\DW_rpt_Betting\rptBetting_MAX_DATA.ndf'
	, MOVE N'_rptLicWL3_10M01' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_10M01.ndf'
	, MOVE N'_rptLicWL3_10M02' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_10M02.ndf'
	, MOVE N'_rptLicWL3_10M03' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_10M03.ndf'
	, MOVE N'_rptLicWL3_10M04' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_10M04.ndf'
	, MOVE N'_rptLicWL3_10M05' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_10M05.ndf'
	, MOVE N'_rptLicWL3_10M06' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_10M06.ndf'
	, MOVE N'_rptLicWL3_10M07' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_10M07.ndf'
	, MOVE N'_rptLicWL3_10M08' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_10M08.ndf'
	, MOVE N'_rptLicWL3_10M09' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_10M09.ndf'
	, MOVE N'_rptLicWL3_10M10' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_10M10.ndf'
	, MOVE N'_rptLicWL3_10M11' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_10M11.ndf'
	, MOVE N'_rptLicWL3_10M12' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_10M12.ndf'
	, MOVE N'_rptLicWL3_11M01' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_11M01.ndf'
	, MOVE N'_rptLicWL3_11M02' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_11M02.ndf'
	, MOVE N'_rptLicWL3_11M03' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_11M03.ndf'
	, MOVE N'_rptLicWL3_11M04' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_11M04.ndf'
	, MOVE N'_rptLicWL3_11M05' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_11M05.ndf'
	, MOVE N'_rptLicWL3_11M06' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_11M06.ndf'
	, MOVE N'_rptLicWL3_11M07' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_11M07.ndf'
	, MOVE N'_rptLicWL3_11M08' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_11M08.ndf'
	, MOVE N'_rptLicWL3_11M09' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_11M09.ndf'
	, MOVE N'_rptLicWL3_11M10' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_11M10.ndf'
	, MOVE N'_rptLicWL3_11M11' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_11M11.ndf'
	, MOVE N'_rptLicWL3_11M12' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_11M12.ndf'
	, MOVE N'_rptLicWL3_12M01' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_12M01.ndf'
	, MOVE N'_rptLicWL3_12M02' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_12M02.ndf'
	, MOVE N'_rptLicWL3_12M03' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_12M03.ndf'
	, MOVE N'_rptLicWL3_12M04' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_12M04.ndf'
	, MOVE N'_rptLicWL3_12M05' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_12M05.ndf'
	, MOVE N'_rptLicWL3_12M06' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_12M06.ndf'
	, MOVE N'_rptLicWL3_12M07' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_12M07.ndf'
	, MOVE N'_rptLicWL3_12M08' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_12M08.ndf'
	, MOVE N'_rptLicWL3_12M09' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_12M09.ndf'
	, MOVE N'_rptLicWL3_12M10' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_12M10.ndf'
	, MOVE N'_rptLicWL3_12M11' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_12M11.ndf'
	, MOVE N'_rptLicWL3_12M12' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_12M12.ndf'
	, MOVE N'_rptLicWL3_13M01' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_13M01.ndf'
	, MOVE N'_rptLicWL3_13M02' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_13M02.ndf'
	, MOVE N'_rptLicWL3_13M03' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_13M03.ndf'
	, MOVE N'_rptLicWL3_13M04' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_13M04.ndf'
	, MOVE N'_rptLicWL3_13M05' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_13M05.ndf'
	, MOVE N'_rptLicWL3_13M06' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_13M06.ndf'
	, MOVE N'_rptLicWL3_13M07' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_13M07.ndf'
	, MOVE N'_rptLicWL3_13M08' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_13M08.ndf'
	, MOVE N'_rptLicWL3_13M09' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_13M09.ndf'
	, MOVE N'_rptLicWL3_13M10' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_13M10.ndf'
	, MOVE N'_rptLicWL3_13M11' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_13M11.ndf'
	, MOVE N'_rptLicWL3_13M12' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_13M12.ndf'
	, MOVE N'rptLicWL3_14M01' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_14M01.ndf'
	, MOVE N'rptLicWL3_14M02' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_14M02.ndf'
	, MOVE N'rptLicWL3_14M03' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_14M03.ndf'
	, MOVE N'rptLicWL3_14M04' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_14M04.ndf'
	, MOVE N'rptLicWL3_14M05' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_14M05.ndf'
	, MOVE N'rptLicWL3_14M06' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_14M06.ndf'
	, MOVE N'rptLicWL3_14M07' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_14M07.ndf'
	, MOVE N'rptLicWL3_14M08' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_14M08.ndf'
	, MOVE N'rptLicWL3_14M09' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_14M09.ndf'
	, MOVE N'rptLicWL3_14M10' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_14M10.ndf'
	, MOVE N'rptLicWL3_14M11' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_14M11.ndf'
	, MOVE N'rptLicWL3_14M12' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_14M12.ndf'
	, MOVE N'rptLicWL3_15M01' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_15M01.ndf'
	, MOVE N'rptLicWL3_15M02' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_15M02.ndf'
	, MOVE N'rptLicWL3_15M03' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_15M03.ndf'
	, MOVE N'rptLicWL3_15M04' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_15M04.ndf'
	, MOVE N'rptLicWL3_15M05' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_15M05.ndf'
	, MOVE N'rptLicWL3_15M06' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_15M06.ndf'
	, MOVE N'rptLicWL3_15M07' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_15M07.ndf'
	, MOVE N'rptLicWL3_15M08' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_15M08.ndf'
	, MOVE N'rptLicWL3_15M09' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_15M09.ndf'
	, MOVE N'rptLicWL3_15M10' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_15M10.ndf'
	, MOVE N'rptLicWL3_15M11' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_15M11.ndf'
	, MOVE N'rptLicWL3_15M12' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_15M12.ndf'
	, MOVE N'rptLicWL3_16M01' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_16M01.ndf'
	, MOVE N'rptLicWL3_16M02' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_16M02.ndf'
	, MOVE N'rptLicWL3_16M03' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_16M03.ndf'
	, MOVE N'rptLicWL3_16M04' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_16M04.ndf'
	, MOVE N'rptLicWL3_16M05' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_16M05.ndf'
	, MOVE N'rptLicWL3_16M06' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_16M06.ndf'
	, MOVE N'rptLicWL3_16M07' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_16M07.ndf'
	, MOVE N'rptLicWL3_16M08' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_16M08.ndf'
	, MOVE N'rptLicWL3_16M09' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_16M09.ndf'
	, MOVE N'rptLicWL3_16M10' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_16M10.ndf'
	, MOVE N'rptLicWL3_16M11' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_16M11.ndf'
	, MOVE N'rptLicWL3_16M12' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_16M12.ndf'
	, MOVE N'_rptLicWL3_MAX' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_MAX.ndf'
	, MOVE N'user_index_02' TO 
	N'G:\USER_DB\bodb_Licensee\user_index_02.ndf', 
	MOVE N'user_table_02' TO 
	N'G:\USER_DB\bodb_Licensee\user_table_02.ndf', 
	MOVE N'userlog_index_02' TO 
	N'G:\USER_DB\bodb_Licensee\userlog_index_02.ndf'
	, MOVE N'userlog_table_02' TO 
	N'G:\USER_DB\bodb_Licensee\userlog_table_02.ndf'
	, MOVE N'bodb_Licensee_log03' TO 
	N'G:\USER_DB\bodb_Licensee\bodb_Licensee_log03.ldf'
	, MOVE N'rptLicWL3_17M01' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_17M01.ndf'
	, MOVE N'rptLicWL3_17M02' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_17M02.ndf'
	, MOVE N'rptLicWL3_17M03' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_17M03.ndf'
	, MOVE N'rptLicWL3_17M04' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_17M04.ndf'
	, MOVE N'rptLicWL3_17M05' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_17M05.ndf'
	, MOVE N'rptLicWL3_17M06' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_17M06.ndf'
	, MOVE N'rptLicWL3_17M07' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_17M07.ndf'
	, MOVE N'rptLicWL3_17M08' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_17M08.ndf'
	, MOVE N'rptLicWL3_17M09' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_17M09.ndf'
	, MOVE N'rptLicWL3_17M10' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_17M10.ndf'
	, MOVE N'rptLicWL3_17M11' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_17M11.ndf'
	, MOVE N'rptLicWL3_17M12' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_17M12.ndf'
	, MOVE N'rptLicWL3_18M01' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_18M01.ndf'
	, MOVE N'rptLicWL3_18M02' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_18M02.ndf'
	, MOVE N'rptLicWL3_18M03' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_18M03.ndf'
	, MOVE N'rptLicWL3_18M04' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_18M04.ndf'
	, MOVE N'rptLicWL3_18M05' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_18M05.ndf'
	, MOVE N'rptLicWL3_18M06' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_18M06.ndf'
	, MOVE N'rptLicWL3_18M07' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_18M07.ndf'
	, MOVE N'rptLicWL3_18M08' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_18M08.ndf'
	, MOVE N'rptLicWL3_18M09' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_18M09.ndf'
	, MOVE N'rptLicWL3_18M10' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_18M10.ndf'
	, MOVE N'rptLicWL3_18M11' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_18M11.ndf'
	, MOVE N'rptLicWL3_18M12' TO 
	N'G:\USER_DB\bodb_Licensee\rptLicWL\rptLicWL3_18M12.ndf'
	, NOUNLOAD, REPLACE, STATS = 10
