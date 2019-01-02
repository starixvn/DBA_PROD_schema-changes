/*
	Created by: Patrick
	Date: 20190103
	Task: Rollback - Move bet data file from G to H disk for bodb_Licensee & ServiceBrokerDB
	DB: DB042.master
*/

USE master
GO

--step 1: set offline db
ALTER DATABASE bodb_Licensee SET OFFLINE WITH ROLLBACK IMMEDIATE

--step 2: copy file
--Copy the file or files to the new location. --> copy manually

--alter data file
ALTER DATABASE bodb_Licensee MODIFY FILE ( NAME = bodb_Licensee_Data, FILENAME = 'H:\IBC_DB\bodb_Licensee\bodb_Licensee_Data.mdf')
ALTER DATABASE bodb_Licensee MODIFY FILE ( NAME = bodb_Licensee_Data_Log, FILENAME = 'H:\IBC_DB\bodb_Licensee\bodb_Licensee_Data_Log.ldf')
ALTER DATABASE bodb_Licensee MODIFY FILE ( NAME = BATrans_Data, FILENAME = 'H:\IBC_DB\bodb_Licensee\BATrans_Data.ndf')
ALTER DATABASE bodb_Licensee MODIFY FILE ( NAME = BATrans_Index, FILENAME = 'H:\IBC_DB\bodb_Licensee\BATrans_Index.mdf')

--set online db
ALTER DATABASE bodb_Licensee SET ONLINE

/*
	-->check
	SELECT name, physical_name AS CurrentLocation, state_desc  
	FROM sys.master_files  
	WHERE database_id = DB_ID(N'bodb_Licensee');
*/

go

ALTER DATABASE ServiceBrokerDB SET OFFLINE WITH ROLLBACK IMMEDIATE

--Move the file or files to the new location. --> copy manually
ALTER DATABASE ServiceBrokerDB MODIFY FILE (NAME = ServiceBrokerDB, FILENAME = 'H:\IBC_DB\ServiceBrokerDB\ServiceBrokerDB.mdf')
ALTER DATABASE ServiceBrokerDB MODIFY FILE (NAME = ServiceBrokerDB_log, FILENAME = 'H:\IBC_DB\ServiceBrokerDB\ServiceBrokerDB_log.ldf')
ALTER DATABASE ServiceBrokerDB MODIFY FILE (NAME = ServiceBrokerData_01, FILENAME = 'H:\IBC_DB\ServiceBrokerDB\ServiceBrokerData_01.ndf')

ALTER DATABASE ServiceBrokerDB SET ONLINE

/*
	-->check
	SELECT name, physical_name AS CurrentLocation, state_desc  
	FROM sys.master_files  
	WHERE database_id = DB_ID(N'ServiceBrokerDB');
*/
