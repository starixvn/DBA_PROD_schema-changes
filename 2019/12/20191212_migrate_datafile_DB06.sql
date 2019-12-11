



/*
	Move data file on DB06, from I to G
	step 1: update new file path
	step 2: stop SQL Service 
	step 3: copying data file
		bodb_OWP database: 
		bodb_licensee
	step 4: reboot windows server (regular UM)
	
	notes: bodb_ost on I can be removed later (non UM time)
*/




--- 1 data file from bodb_OWP
ALTER DATABASE 	bodb_OWP	MODIFY FILE ( NAME = 	[bodb_OWP_Data]	, FILENAME = 'G:\IBC_DB\bodb_OWP\bodb_OWP_Data.ndf');

--- 14 data files from bodb_licensee
ALTER DATABASE 	bodb_Licensee	MODIFY FILE ( NAME = 	[bodb_Licensee]	, FILENAME			= 'G:\IBC_DB\bodb_licensee\bodb_Licensee.mdf');
ALTER DATABASE 	bodb_Licensee	MODIFY FILE ( NAME = 	[bodb_Licensee_log]	, FILENAME		= 'G:\IBC_DB\bodb_licensee\bodb_Licensee_log.ldf');
ALTER DATABASE 	bodb_Licensee	MODIFY FILE ( NAME = 	[BA_Data_1]	, FILENAME				= 'G:\IBC_DB\bodb_licensee\BA_Data_01.ndf');
ALTER DATABASE 	bodb_Licensee	MODIFY FILE ( NAME = 	[BA_Index_1]	, FILENAME			= 'G:\IBC_DB\bodb_licensee\BA_Index_01.ndf');
ALTER DATABASE 	bodb_Licensee	MODIFY FILE ( NAME = 	[data01]	, FILENAME				= 'G:\IBC_DB\bodb_licensee\data01.ndf');
ALTER DATABASE 	bodb_Licensee	MODIFY FILE ( NAME = 	[data02]	, FILENAME				= 'G:\IBC_DB\bodb_licensee\data02.ndf');
ALTER DATABASE 	bodb_Licensee	MODIFY FILE ( NAME = 	[licensee_index_2]	, FILENAME		= 'G:\IBC_DB\bodb_licensee\licensee_index_02.ndf');
ALTER DATABASE 	bodb_Licensee	MODIFY FILE ( NAME = 	[licensee_table_02]	, FILENAME		= 'G:\IBC_DB\bodb_licensee\licensee_table_02.ndf');
ALTER DATABASE 	bodb_Licensee	MODIFY FILE ( NAME = 	[on_user_index_02]	, FILENAME		= 'G:\IBC_DB\bodb_licensee\on_user_index_02.ndf');
ALTER DATABASE 	bodb_Licensee	MODIFY FILE ( NAME = 	[on_user_table_02]	, FILENAME		= 'G:\IBC_DB\bodb_licensee\on_user_table_02.ndf');
ALTER DATABASE 	bodb_Licensee	MODIFY FILE ( NAME = 	[user_table_02]	, FILENAME			= 'G:\IBC_DB\bodb_licensee\user_table_02.ndf');
ALTER DATABASE 	bodb_Licensee	MODIFY FILE ( NAME = 	[BATrans_BK]	, FILENAME			= 'G:\IBC_DB\bodb_licensee\BATrans_BK.ndf');
ALTER DATABASE 	bodb_Licensee	MODIFY FILE ( NAME = 	[OWA_DATA]	, FILENAME				= 'G:\IBC_DB\bodb_licensee\OWN_DATA.ndf');
ALTER DATABASE 	bodb_Licensee	MODIFY FILE ( NAME = 	[OWA_INDEX]	, FILENAME				= 'G:\IBC_DB\bodb_licensee\OWA_INDEX.ndf');

