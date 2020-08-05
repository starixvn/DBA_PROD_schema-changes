/*
    step 1. update new file patch
    step 2. stop sql service
    step 3. copy data file to new location
    step 4. start sql service
    step 5. verify database
*/

-- bodb02


ALTER DATABASE 	bodb02	MODIFY FILE ( NAME = 	[bodb02_OLD_01]	, FILENAME = 'H:\IBC_DB\bodb02G\bodb02_OLD_01.NDF');
ALTER DATABASE 	bodb02	MODIFY FILE ( NAME = 	[P2PSetting]	, FILENAME = 'H:\IBC_DB\bodb02G\P2PSetting.ndf');
ALTER DATABASE 	bodb02	MODIFY FILE ( NAME = 	[P2PSetting_index]	, FILENAME = 'H:\IBC_DB\bodb02G\P2PSetting_index.ndf');
ALTER DATABASE 	bodb02	MODIFY FILE ( NAME = 	[ServiceBroker_Data_001]	, FILENAME = 'H:\IBC_DB\bodb02G\ServiceBroker_Data_001.ndf');
ALTER DATABASE 	bodb02	MODIFY FILE ( NAME = 	[Cross_Check_index01]	, FILENAME = 'H:\IBC_DB\bodb02G\Cross_Check_index01.ndf');
ALTER DATABASE 	bodb02	MODIFY FILE ( NAME = 	[Cross_Check_table01]	, FILENAME = 'H:\IBC_DB\bodb02G\Cross_Check_table01.ndf');
ALTER DATABASE 	bodb02	MODIFY FILE ( NAME = 	[Cross_Check3rd_index01]	, FILENAME = 'H:\IBC_DB\bodb02G\Cross_Check3rd_index01.ndf');
ALTER DATABASE 	bodb02	MODIFY FILE ( NAME = 	[Cross_Check3rd_table01]	, FILENAME = 'H:\IBC_DB\bodb02G\Cross_Check3rd_table01.ndf');
ALTER DATABASE 	bodb02	MODIFY FILE ( NAME = 	[Event3rd_table]	, FILENAME = 'H:\IBC_DB\bodb02G\Event3rd_table.ndf');
ALTER DATABASE 	bodb02	MODIFY FILE ( NAME = 	[Event3rd14_table]	, FILENAME = 'H:\IBC_DB\bodb02G\Event3rd14_table.ndf');

/*

G:\IBC_DB\bodb02\P2PSetting.ndf
G:\IBC_DB\bodb02\P2PSetting_index.ndf
G:\IBC_DB\bodb02\ServiceBroker_Data_001.ndf
G:\IBC_DB\bodb02\Cross_Check_index01.ndf
G:\IBC_DB\bodb02\Cross_Check_table01.ndf
G:\IBC_DB\bodb02\Cross_Check3rd_index01.ndf
G:\IBC_DB\bodb02\Cross_Check3rd_table01.ndf
G:\IBC_DB\Event3rd_table.ndf
G:\IBC_DB\Event3rd14_table.ndf
G:\IBC_DB\bodb02_OLD_01.NDF
*/
