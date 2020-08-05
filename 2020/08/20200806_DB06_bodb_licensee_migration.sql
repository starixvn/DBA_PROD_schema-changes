/*
    step 1. update new file patch
    step 2. stop sql service
    step 3. copy data file to new location
    step 4. start sql service
    step 5. verify database
*/

-- bodb_licensee


ALTER DATABASE 	bodb_Licensee	MODIFY FILE ( NAME = 	[bodb_Licensee]	, FILENAME = 'I:\User_DB\bodb_licensee\bodb_Licensee.mdf');
ALTER DATABASE 	bodb_Licensee	MODIFY FILE ( NAME = 	[bodb_Licensee_log]	, FILENAME = 'I:\User_DB\bodb_licensee\bodb_Licensee_log.ldf');
ALTER DATABASE 	bodb_Licensee	MODIFY FILE ( NAME = 	[BA_Data_1]	, FILENAME = 'I:\User_DB\bodb_licensee\BA_Data_01.ndf');
ALTER DATABASE 	bodb_Licensee	MODIFY FILE ( NAME = 	[BA_Index_1]	, FILENAME = 'I:\User_DB\bodb_licensee\BA_Index_01.ndf');
ALTER DATABASE 	bodb_Licensee	MODIFY FILE ( NAME = 	[data01]	, FILENAME = 'I:\User_DB\bodb_licensee\data01.ndf');
ALTER DATABASE 	bodb_Licensee	MODIFY FILE ( NAME = 	[data02]	, FILENAME = 'I:\User_DB\bodb_licensee\data02.ndf');
ALTER DATABASE 	bodb_Licensee	MODIFY FILE ( NAME = 	[licensee_index_2]	, FILENAME = 'I:\User_DB\bodb_licensee\licensee_index_02.ndf');
ALTER DATABASE 	bodb_Licensee	MODIFY FILE ( NAME = 	[licensee_table_02]	, FILENAME = 'I:\User_DB\bodb_licensee\licensee_table_02.ndf');
ALTER DATABASE 	bodb_Licensee	MODIFY FILE ( NAME = 	[on_user_index_02]	, FILENAME = 'I:\User_DB\bodb_licensee\on_user_index_02.ndf');
ALTER DATABASE 	bodb_Licensee	MODIFY FILE ( NAME = 	[on_user_table_02]	, FILENAME = 'I:\User_DB\bodb_licensee\on_user_table_02.ndf');
ALTER DATABASE 	bodb_Licensee	MODIFY FILE ( NAME = 	[user_table_02]	, FILENAME = 'I:\User_DB\bodb_licensee\user_table_02.ndf');
ALTER DATABASE 	bodb_Licensee	MODIFY FILE ( NAME = 	[BATrans_BK]	, FILENAME = 'I:\User_DB\bodb_licensee\BATrans_BK.ndf');
ALTER DATABASE 	bodb_Licensee	MODIFY FILE ( NAME = 	[OWA_DATA]	, FILENAME = 'I:\User_DB\bodb_licensee\OWN_DATA.ndf');
ALTER DATABASE 	bodb_Licensee	MODIFY FILE ( NAME = 	[OWA_INDEX]	, FILENAME = 'I:\User_DB\bodb_licensee\OWA_INDEX.ndf');
ALTER DATABASE 	bodb_Licensee	MODIFY FILE ( NAME = 	[LicenseeCustComm_History_table_01]	, FILENAME = 'I:\User_DB\bodb_licensee\LicenseeCustComm_History_table_01.ndf');


/*
G:\IBC_DB\bodb_licensee\bodb_Licensee.mdf
G:\IBC_DB\bodb_licensee\bodb_Licensee_log.ldf
G:\IBC_DB\bodb_licensee\BA_Data_01.ndf
G:\IBC_DB\bodb_licensee\BA_Index_01.ndf
G:\IBC_DB\bodb_licensee\data01.ndf
G:\IBC_DB\bodb_licensee\data02.ndf
G:\IBC_DB\bodb_licensee\licensee_index_02.ndf
G:\IBC_DB\bodb_licensee\licensee_table_02.ndf
G:\IBC_DB\bodb_licensee\on_user_index_02.ndf
G:\IBC_DB\bodb_licensee\on_user_table_02.ndf
G:\IBC_DB\bodb_licensee\user_table_02.ndf
G:\IBC_DB\bodb_licensee\BATrans_BK.ndf
G:\IBC_DB\bodb_licensee\OWN_DATA.ndf
G:\IBC_DB\bodb_licensee\OWA_INDEX.ndf
G:\IBC_DB\bodb_Licensee\LicenseeCustComm_History_table_01.ndf
*/