


/*
**** before UM
	step 1: remove old partitioned-data of table balanceRecord_bk
	step 2: update database [bodb_message] logshiping to non-recovery mode
****UM time: 
	step 1: update file path
	step 2: stop SQL service 
	step 3: copy data files to new location
		bodb02: only 1 file and copy to $H
		copy all folder for the rest databases
	step 4: reboot machine (regular UM)
*/

------**************************before UM **********************************-----------------



-- 1. create new table on same partitions schemas 
execute [dbo].[spCloneTableStructure]
	@SourceTable            = 'balanceRecord_bk',
	@DestinationTable       = 'balanceRecord_bk_v2',
	@partitionsch			= 'ps_BR_monthly',
	@PartionField           = 'ActionDate',
	@SourceSchema           = 'dbo',  
	@DestinationSchema      = 'dbo',    
	@RecreateIfExists       = 1
	
-- 2. switch partitions to new table

execute dbo.spSwitchPartitionsToNewTable
	@SourceTable		= 'balanceRecord_bk',
	@DestinationTable	= 'balanceRecord_bk_v2',
	@PartitionsList		= '21,20,19,18,17,16,15,14,13'

-------------- 3. replace tables
------------go
------------sp_rename 'userlog_login','userlog_login_bkk'
------------go
------------sp_rename 'userlog_login_v2','userlog_login'
----drop table that switch data out to
DROP TABLE balanceRecord_bk_v2

-- 4. merge partitions range & remove files/filegroups
--EXECUTE spGenerateCleanUpScript
--	@SourceTable			= 'UserLog_Login', 
--	@avoidPartitionsList	= '21,20,19,18,17,16,15,14,13'
go





------************************** UM **********************************-----------------


--- bodb02 
ALTER DATABASE 	bodb02	MODIFY FILE ( NAME = 	[UserLog-1]	, FILENAME = 'H:\USER_DB\bodb02\UserLog-1.ndf');

--- IPDB 
ALTER DATABASE 	IPDB	MODIFY FILE ( NAME = 	[ipdb_Data]	, FILENAME = 'T:\USER_DB\IPDB\IPDB.MDF');
ALTER DATABASE 	IPDB	MODIFY FILE ( NAME = 	[ipdb_Log]	, FILENAME = 'T:\USER_DB\IPDB\IPDB_1.LDF');

--- MonDB
ALTER DATABASE 	MONDB	MODIFY FILE ( NAME = 	[MonDB]	,		FILENAME = 'T:\USER_DB\MONDB\MonDB.mdf');
ALTER DATABASE 	MONDB	MODIFY FILE ( NAME = 	[MonDB_log]	,	FILENAME = 'T:\USER_DB\MONDB\MonDB_log.ldf');

---- bodb_Message
ALTER DATABASE 	bodb_Message	MODIFY FILE ( NAME = 	[bodb_Message_Data]	,	FILENAME = 'T:\USER_DB\bodb_Message\bodb_Message.MDF');
ALTER DATABASE 	bodb_Message	MODIFY FILE ( NAME = 	[bodb_Message_Log]	,	FILENAME = 'T:\USER_DB\bodb_Message\bodb_Message_log.ldf');
ALTER DATABASE 	bodb_Message	MODIFY FILE ( NAME = 	[bodb_Message_Index]	, FILENAME = 'T:\USER_DB\bodb_Message\bodb_Message_Index.NDF');
ALTER DATABASE 	bodb_Message	MODIFY FILE ( NAME = 	[bodb_Message_Data_01]	, FILENAME = 'T:\USER_DB\bodb_Message\bodb_Message_Data_01.ndf');
ALTER DATABASE 	bodb_Message	MODIFY FILE ( NAME = 	[MsgLog_table]	,		FILENAME = 'T:\USER_DB\bodb_Message\MsgLog_table.ndf');
ALTER DATABASE 	bodb_Message	MODIFY FILE ( NAME = 	[Archive_Data]	,		FILENAME = 'T:\USER_DB\bodb_Message\Archive_Data.ndf');

---- bodb_Message_Archive
ALTER DATABASE 	bodb_Message_Archive	MODIFY FILE ( NAME = 	[bodb_Message_Data]	, FILENAME = 'T:\USER_DB\bodb_Message_Archive\bodb_Message_Data.MDF');
ALTER DATABASE 	bodb_Message_Archive	MODIFY FILE ( NAME = 	[bodb_Message_Log]	, FILENAME = 'T:\USER_DB\bodb_Message_Archive\bodb_Message_Log.ldf');
ALTER DATABASE 	bodb_Message_Archive	MODIFY FILE ( NAME = 	[bodb_Message_Index]	, FILENAME = 'T:\USER_DB\bodb_Message_Archive\bodb_Message_Index.NDF');
ALTER DATABASE 	bodb_Message_Archive	MODIFY FILE ( NAME = 	[bodb_Message_Data_01]	, FILENAME = 'T:\USER_DB\bodb_Message_Archive\bodb_Message_Data_01.ndf');
ALTER DATABASE 	bodb_Message_Archive	MODIFY FILE ( NAME = 	[MsgLog_table]	, FILENAME = 'T:\USER_DB\bodb_Message_Archive\MsgLog_table.ndf');
ALTER DATABASE 	bodb_Message_Archive	MODIFY FILE ( NAME = 	[Archive_Data]	, FILENAME = 'T:\USER_DB\bodb_Message_Archive\Archive_Data.ndf');

---- balanceRecord

ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BalanceRecord_Primary]	, FILENAME = 'T:\User_DB\BalanceRecord\BalanceRecord_Primary.MDF');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BalanceRecord_Log]	, FILENAME = 'T:\User_DB\BalanceRecord\BalanceRecord_Log.ldf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_18M01]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_18M01.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_18M02]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_18M02.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_18M03]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_18M03.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_18M04]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_18M04.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_18M05]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_18M05.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_18M06]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_18M06.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_18M07]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_18M07.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_18M08]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_18M08.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_18M09]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_18M09.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_18M10]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_18M10.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_18M11]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_18M11.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_18M12]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_18M12.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_19M01]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_19M01.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_19M02]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_19M02.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_19M03]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_19M03.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_19M04]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_19M04.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_19M05]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_19M05.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_19M06]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_19M06.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_19M07]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_19M07.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_19M08]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_19M08.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_19M09]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_19M09.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_19M10]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_19M10.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_19M11]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_19M11.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_19M12]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_19M12.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_20M01]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_20M01.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_20M02]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_20M02.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_20M03]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_20M03.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_20M04]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_20M04.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_20M05]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_20M05.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_20M06]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_20M06.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_20M07]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_20M07.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_20M08]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_20M08.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_20M09]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_20M09.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_20M10]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_20M10.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_20M11]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_20M11.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_MAX]	, FILENAME = 'T:\User_DB\BalanceRecord\BR\BR_MAX.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_20M12]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_20M12.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_21M01]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_21M01.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_21M02]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_21M02.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_21M03]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_21M03.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_21M04]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_21M04.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_21M05]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_21M05.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_21M06]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_21M06.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_21M07]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_21M07.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_21M08]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_21M08.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_21M09]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_21M09.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_21M10]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_21M10.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_21M11]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_21M11.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_21M12]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_21M12.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_22M01]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_22M01.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_22M02]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_22M02.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_22M03]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_22M03.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_22M04]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_22M04.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_22M05]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_22M05.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_22M06]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_22M06.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_22M07]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_22M07.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_22M08]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_22M08.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_22M09]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_22M09.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_22M10]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_22M10.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_22M11]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_22M11.ndf');
ALTER DATABASE 	BalanceRecord	MODIFY FILE ( NAME = 	[BR_22M12]	, FILENAME = 'T:\User_DB\BalanceRecord\BR_22M12.ndf');


---- step copy
---- bodb02: copy only 1 file of userLog-1.ndf

--- IPDB: copy all folder from $I to $T
--- MonDB: copy all folder from $I to $T
--- bodb_Message: copy all folder from $I to $T
--- bodb_Message_Archive: copy all folder from $I to $T
--- BalanceRecord: copy all folder from $I to $T
