/*
	Creator:	20181114@Billy
	Task:		Extend partitions to 2022 - [Redmine: #104483]
	Server:		DB052.bodb_Oddsfeed
	WBS:		#250-000
*/

USE	bodb_Oddsfeed;
GO

-------------------------
-- StatisticsYearly_Scheme
-------------------------

ALTER DATABASE bodb_Oddsfeed ADD FILEGROUP Statistics_2019;
ALTER DATABASE bodb_Oddsfeed ADD FILE (NAME = N'Statistics_2019', FILENAME = N'G:\IBC_DB\bodb_oddsfeed\Statistics_2019.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Statistics_2019;
ALTER PARTITION SCHEME StatisticsYearly_Scheme NEXT USED Statistics_2019;
ALTER PARTITION FUNCTION StatisticsYearly_PFN() SPLIT RANGE (N'2019-12-01 00:00:00.000');
RAISERROR('Added Statistics_2019 into StatisticsYearly_Scheme', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_Oddsfeed ADD FILEGROUP Statistics_2020;
ALTER DATABASE bodb_Oddsfeed ADD FILE (NAME = N'Statistics_2020', FILENAME = N'G:\IBC_DB\bodb_oddsfeed\Statistics_2020.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Statistics_2020;
ALTER PARTITION SCHEME StatisticsYearly_Scheme NEXT USED Statistics_2020;
ALTER PARTITION FUNCTION StatisticsYearly_PFN() SPLIT RANGE (N'2020-12-01 00:00:00.000');
RAISERROR('Added Statistics_2020 into StatisticsYearly_Scheme', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_Oddsfeed ADD FILEGROUP Statistics_2021;
ALTER DATABASE bodb_Oddsfeed ADD FILE (NAME = N'Statistics_2021', FILENAME = N'G:\IBC_DB\bodb_oddsfeed\Statistics_2021.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Statistics_2021;
ALTER PARTITION SCHEME StatisticsYearly_Scheme NEXT USED Statistics_2021;
ALTER PARTITION FUNCTION StatisticsYearly_PFN() SPLIT RANGE (N'2021-12-01 00:00:00.000');
RAISERROR('Added Statistics_2021 into StatisticsYearly_Scheme', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_Oddsfeed ADD FILEGROUP Statistics_2022;
ALTER DATABASE bodb_Oddsfeed ADD FILE (NAME = N'Statistics_2022', FILENAME = N'G:\IBC_DB\bodb_oddsfeed\Statistics_2022.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Statistics_2022;
ALTER PARTITION SCHEME StatisticsYearly_Scheme NEXT USED Statistics_2022;
ALTER PARTITION FUNCTION StatisticsYearly_PFN() SPLIT RANGE (N'2022-12-01 00:00:00.000');
RAISERROR('Added Statistics_2022 into StatisticsYearly_Scheme', 0, 0) WITH NOWAIT;
 
-------------------------
-- END StatisticsYearly_Scheme
-------------------------


-------------------------
-- UserLogYearly_Scheme
-------------------------

ALTER DATABASE bodb_Oddsfeed ADD FILEGROUP UserLog_2019;
ALTER DATABASE bodb_Oddsfeed ADD FILE (NAME = N'UserLog_2019', FILENAME = N'G:\IBC_DB\bodb_oddsfeed\UserLog_2019.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP UserLog_2019;
ALTER PARTITION SCHEME UserLogYearly_Scheme NEXT USED UserLog_2019;
ALTER PARTITION FUNCTION UserLogYearly_PFN() SPLIT RANGE (N'2019-12-31 23:59:59.997');
RAISERROR('Added UserLog_2019 into UserLogYearly_Scheme', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_Oddsfeed ADD FILEGROUP UserLog_2020;
ALTER DATABASE bodb_Oddsfeed ADD FILE (NAME = N'UserLog_2020', FILENAME = N'G:\IBC_DB\bodb_oddsfeed\UserLog_2020.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP UserLog_2020;
ALTER PARTITION SCHEME UserLogYearly_Scheme NEXT USED UserLog_2020;
ALTER PARTITION FUNCTION UserLogYearly_PFN() SPLIT RANGE (N'2020-12-31 23:59:59.997');
RAISERROR('Added UserLog_2020 into UserLogYearly_Scheme', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_Oddsfeed ADD FILEGROUP UserLog_2021;
ALTER DATABASE bodb_Oddsfeed ADD FILE (NAME = N'UserLog_2021', FILENAME = N'G:\IBC_DB\bodb_oddsfeed\UserLog_2021.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP UserLog_2021;
ALTER PARTITION SCHEME UserLogYearly_Scheme NEXT USED UserLog_2021;
ALTER PARTITION FUNCTION UserLogYearly_PFN() SPLIT RANGE (N'2021-12-31 23:59:59.997');
RAISERROR('Added UserLog_2021 into UserLogYearly_Scheme', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_Oddsfeed ADD FILEGROUP UserLog_2022;
ALTER DATABASE bodb_Oddsfeed ADD FILE (NAME = N'UserLog_2022', FILENAME = N'G:\IBC_DB\bodb_oddsfeed\UserLog_2022.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP UserLog_2022;
ALTER PARTITION SCHEME UserLogYearly_Scheme NEXT USED UserLog_2022;
ALTER PARTITION FUNCTION UserLogYearly_PFN() SPLIT RANGE (N'2022-12-31 23:59:59.997');
RAISERROR('Added UserLog_2022 into UserLogYearly_Scheme', 0, 0) WITH NOWAIT;
 
-------------------------
-- END UserLogYearly_Scheme
-------------------------

