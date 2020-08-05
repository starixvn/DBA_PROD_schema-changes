
/*
    step 1. update new file patch
    step 2. stop sql service
    step 3. copy data file to new location
    step 4. start sql service
    step 5. verify database
*/

-- LasDB_Archive

ALTER DATABASE 	LasDB_Archive	MODIFY FILE ( NAME = 	[LASDB]	, FILENAME = 'F:\USER_DB\LasDB_Archive\LASDB.mdf');
ALTER DATABASE 	LasDB_Archive	MODIFY FILE ( NAME = 	[LASDB_log]	, FILENAME = 'F:\USER_DB\LasDB_Archive\LASDB_log.ldf');
ALTER DATABASE 	LasDB_Archive	MODIFY FILE ( NAME = 	[BETBK_data]	, FILENAME = 'F:\USER_DB\LasDB_Archive\BETBK_data.ndf');
ALTER DATABASE 	LasDB_Archive	MODIFY FILE ( NAME = 	[bettrans_agent_index]	, FILENAME = 'F:\USER_DB\LasDB_Archive\bettrans_agent_index.ndf');
ALTER DATABASE 	LasDB_Archive	MODIFY FILE ( NAME = 	[bettrans_agent_table]	, FILENAME = 'F:\USER_DB\LasDB_Archive\bettrans_agent_table.ndf');
ALTER DATABASE 	LasDB_Archive	MODIFY FILE ( NAME = 	[bettrans_index]	, FILENAME = 'F:\USER_DB\LasDB_Archive\bettrans_index.ndf');
ALTER DATABASE 	LasDB_Archive	MODIFY FILE ( NAME = 	[betrans_table]	, FILENAME = 'F:\USER_DB\LasDB_Archive\betrans_table.ndf');
ALTER DATABASE 	LasDB_Archive	MODIFY FILE ( NAME = 	[bettransm_index]	, FILENAME = 'F:\USER_DB\LasDB_Archive\bettransm_index.ndf');
ALTER DATABASE 	LasDB_Archive	MODIFY FILE ( NAME = 	[betransm_table]	, FILENAME = 'F:\USER_DB\LasDB_Archive\betransm_table.ndf');
ALTER DATABASE 	LasDB_Archive	MODIFY FILE ( NAME = 	[DATA]	, FILENAME = 'F:\USER_DB\LasDB_Archive\DATA.ndf');
ALTER DATABASE 	LasDB_Archive	MODIFY FILE ( NAME = 	[INDEX]	, FILENAME = 'F:\USER_DB\LasDB_Archive\INDEX.ndf');
ALTER DATABASE 	LasDB_Archive	MODIFY FILE ( NAME = 	[TRANSBK_data]	, FILENAME = 'F:\USER_DB\LasDB_Archive\TRANSBK_data.ndf');
ALTER DATABASE 	LasDB_Archive	MODIFY FILE ( NAME = 	[Transfer_bk_Index]	, FILENAME = 'F:\USER_DB\LasDB_Archive\Transfer_bk_Index.ndf');
ALTER DATABASE 	LasDB_Archive	MODIFY FILE ( NAME = 	[Transfer_bk_Table]	, FILENAME = 'F:\USER_DB\LasDB_Archive\Transfer_bk_Table.ndf');


/*
G:\IBC_DB\LasDB_archive\LASDB.mdf
G:\IBC_DB\LasDB_archive\LASDB_log.ldf
G:\IBC_DB\LasDB_archive\BETBK_data.ndf
G:\IBC_DB\LasDB_archive\bettrans_agent_index.ndf
G:\IBC_DB\LasDB_archive\bettrans_agent_table.ndf
G:\IBC_DB\LasDB_archive\bettrans_index.ndf
G:\IBC_DB\LasDB_archive\betrans_table.ndf
G:\IBC_DB\LasDB_archive\bettransm_index.ndf
G:\IBC_DB\LasDB_archive\betransm_table.ndf
G:\IBC_DB\LasDB_archive\DATA.ndf
G:\IBC_DB\LasDB_archive\INDEX.ndf
G:\IBC_DB\LasDB_archive\TRANSBK_data.ndf
G:\IBC_DB\LasDB_archive\Transfer_bk_Index.ndf
G:\IBC_DB\LasDB_archive\Transfer_bk_Table.ndf
*/
