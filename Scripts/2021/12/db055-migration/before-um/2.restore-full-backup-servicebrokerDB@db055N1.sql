/*
	Task - Upgrade SQL Server DB055 to 2019
		1- Restore FULL backup: ServiceBrokerDB
	Run on db055N1
*/

RESTORE DATABASE ServiceBrokerDB FROM DISK = N'path_file_here?' 	
WITH NORECOVERY, FILE = 1,	
MOVE N'ServiceBrokerDB'	 TO N'H:\USER_DB\ServiceBrokerDB\ServiceBrokerDB.mdf',
MOVE N'ServiceBrokerData_01'	 TO N'H:\USER_DB\ServiceBrokerDB\ServiceBrokerData_01.ndf',
MOVE N'ServiceBrokerDB_log'	 TO N'H:\USER_DB\ServiceBrokerDB\ServiceBrokerDB_log.ldf',
  NOUNLOAD,  STATS = 10	