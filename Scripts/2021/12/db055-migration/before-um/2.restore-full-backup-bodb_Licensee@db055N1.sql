/*
	Task - Upgrade SQL Server DB055 to 2019
		1- Restore FULL backup: bodb_Licensee
	Run on db055N1
*/

RESTORE DATABASE bodb_Licensee FROM DISK = N'path_file_here?' 	
WITH NORECOVERY, FILE = 1,	
MOVE N'bodb_Licensee'	 TO N'H:\USER_DB\bodb_Licensee\bodb_Licensee.mdf',
MOVE N'data01'	 TO N'H:\USER_DB\bodb_Licensee\data01.ndf',
MOVE N'data02'	 TO N'H:\USER_DB\bodb_Licensee\data02.ndf',
MOVE N'LicenseeCustComm_History_table_01'	 TO N'H:\USER_DB\bodb_Licensee\LicenseeCustComm_History_table_01.ndf',
MOVE N'licensee_index_2'	 TO N'H:\USER_DB\bodb_Licensee\licensee_index_02.ndf',
MOVE N'licensee_table_02'	 TO N'H:\USER_DB\bodb_Licensee\licensee_table_02.ndf',
MOVE N'on_user_table_02'	 TO N'H:\USER_DB\bodb_Licensee\on_user_table_02.ndf',
MOVE N'on_user_index_02'	 TO N'H:\USER_DB\bodb_Licensee\on_user_index_02.ndf',
MOVE N'user_table_02'	 TO N'H:\USER_DB\bodb_Licensee\user_table_02.ndf',
MOVE N'userlog_table_02'	 TO N'H:\USER_DB\bodb_Licensee\userlog_table_02.ndf',
MOVE N'BATrans_01'	 TO N'H:\USER_DB\bodb_Licensee\BATrans_01.ndf',
MOVE N'BATrans_BK_01'	 TO N'H:\USER_DB\bodb_Licensee\BATrans_BK_01.ndf',
MOVE N'BATrans_BK_02'	 TO N'H:\USER_DB\bodb_Licensee\BATrans_BK_02.ndf',
MOVE N'DW_KPI_DATA_01'	 TO N'H:\USER_DB\bodb_Licensee\DW_KPI_DATA_01.ndf',
MOVE N'OWA_Data_02'	 TO N'H:\USER_DB\bodb_Licensee\OWA\OWA_Data_02.ndf',
MOVE N'OWA_Index_02'	 TO N'H:\USER_DB\bodb_Licensee\OWA\OWA_Index_02.ndf',
MOVE N'BA_Data_1'	 TO N'H:\USER_DB\bodb_Licensee\BA\BA_Data_01.ndf',
MOVE N'BA_Index_1'	 TO N'H:\USER_DB\bodb_Licensee\BA\BA_Index_01.ndf',
MOVE N'OWA_Userlog_index_03'	 TO N'H:\USER_DB\bodb_Licensee\OWA\OWA_Userlog_index_03.ndf',
MOVE N'OWA_Userlog_data_03'	 TO N'H:\USER_DB\bodb_Licensee\OWA\OWA_Userlog_data_03.ndf',
MOVE N'AFF_Data_01'	 TO N'H:\USER_DB\bodb_Licensee\AFF\AFF_Data_01.ndf',
MOVE N'AFF_Index_01'	 TO N'H:\USER_DB\bodb_Licensee\AFF\AFF_Index_01.ndf',
MOVE N'bodb_Licensee_log'	 TO N'H:\USER_DB\bodb_Licensee\bodb_Licensee_log.ldf',
MOVE N'bodb_Licensee_log03'	 TO N'H:\USER_DB\bodb_Licensee\bodb_Licensee_log03.ldf',
  NOUNLOAD,  STATS = 10	