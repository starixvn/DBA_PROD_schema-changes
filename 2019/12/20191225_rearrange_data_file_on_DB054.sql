/*
    
    created 20121225@Lukas
    Task: re-arrange data files on DB054
    
    step 1 : alter data file path
    step 2: stop sql service 
    step 3: copy the files to new location
    step 4: enable sql service 
    
*/


--- alter data file of bodb_APILog

ALTER DATABASE 	bodb_APILog	MODIFY FILE ( NAME = 	[bodb_APILog]	        , FILENAME = 'T:\IBC_DB\bodb_APILog\bodb_APILog.mdf');
ALTER DATABASE 	bodb_APILog	MODIFY FILE ( NAME = 	[bodb_APILog_log]	    , FILENAME = 'T:\IBC_DB\bodb_APILog\bodb_APILog_log.ldf');
ALTER DATABASE 	bodb_APILog	MODIFY FILE ( NAME = 	[UserLog_APILog_Data]	, FILENAME = 'T:\IBC_DB\bodb_APILog\UserLog_APILog_Data.ndf');


---- alter data file of bodb02

ALTER DATABASE 	bodb02	MODIFY FILE ( NAME = 	[ServiceBroker_Data_001]	, FILENAME = 'G:\IBC_DB\bodb02\ServiceBroker_Data_001.ndf');
ALTER DATABASE 	bodb02	MODIFY FILE ( NAME = 	[Task_DepWinlost]			, FILENAME = 'G:\IBC_DB\bodb02\Task_DepWinlost.ndf');
ALTER DATABASE 	bodb02	MODIFY FILE ( NAME = 	[bodb02_LogM]				, FILENAME = 'G:\IBC_DB\bodb02\bodb02_LogM.ldf');

