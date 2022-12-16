/*<info serverAlias="DBEXT-bodb_Oddsfeed"></info>*/
-------------------------
--table: PartnerStatistics
--start: 2023-01-31
--end: 2025-12-31
--ps: StatisticsYearly_Scheme
--pf: StatisticsYearly_PFN
--file group: Statistics
--path file: F:\USER_DB\bodb_oddsfeed
-------------------------
ALTER DATABASE bodb_Oddsfeed ADD FILEGROUP Statistics23M01;
ALTER DATABASE bodb_Oddsfeed ADD FILE (NAME = N'Statistics23M01', FILENAME = N'F:\USER_DB\bodb_oddsfeed\Statistics23M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Statistics23M01
ALTER PARTITION SCHEME StatisticsYearly_Scheme NEXT USED Statistics23M01;
ALTER PARTITION FUNCTION StatisticsYearly_PFN() SPLIT RANGE (N'2023-01-31 00:00:00.000');
RAISERROR('Added Statistics23M01', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_Oddsfeed ADD FILEGROUP Statistics24M01;
ALTER DATABASE bodb_Oddsfeed ADD FILE (NAME = N'Statistics24M01', FILENAME = N'F:\USER_DB\bodb_oddsfeed\Statistics24M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Statistics24M01
ALTER PARTITION SCHEME StatisticsYearly_Scheme NEXT USED Statistics24M01;
ALTER PARTITION FUNCTION StatisticsYearly_PFN() SPLIT RANGE (N'2024-01-31 00:00:00.000');
RAISERROR('Added Statistics24M01', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_Oddsfeed ADD FILEGROUP Statistics25M01;
ALTER DATABASE bodb_Oddsfeed ADD FILE (NAME = N'Statistics25M01', FILENAME = N'F:\USER_DB\bodb_oddsfeed\Statistics25M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Statistics25M01
ALTER PARTITION SCHEME StatisticsYearly_Scheme NEXT USED Statistics25M01;
ALTER PARTITION FUNCTION StatisticsYearly_PFN() SPLIT RANGE (N'2025-01-31 00:00:00.000');
RAISERROR('Added Statistics25M01', 0, 0) WITH NOWAIT;
 