/*
	Creator:	20181114@Billy
	Task:		Extend partitions to 2022 - [Redmine: #104483]
	Server:		DB052.bodb_LicenseeReportArchive
	WBS:		#240-000
*/

USE	bodb_LicenseeReportArchive;
GO

-------------------------
-- ps_rptCustomerTurnover_bk_monthly
-------------------------

ALTER DATABASE bodb_LicenseeReportArchive ADD FILEGROUP rptCustomerTurnover_bk_20M01;
ALTER DATABASE bodb_LicenseeReportArchive ADD FILE (NAME = N'rptCustomerTurnover_bk_20M01', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_20M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_bk_20M01;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_bk_monthly NEXT USED rptCustomerTurnover_bk_20M01;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_bk_monthly() SPLIT RANGE (N'2020-01-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_bk_20M01 into ps_rptCustomerTurnover_bk_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReportArchive ADD FILEGROUP rptCustomerTurnover_bk_20M02;
ALTER DATABASE bodb_LicenseeReportArchive ADD FILE (NAME = N'rptCustomerTurnover_bk_20M02', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_20M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_bk_20M02;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_bk_monthly NEXT USED rptCustomerTurnover_bk_20M02;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_bk_monthly() SPLIT RANGE (N'2020-02-29 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_bk_20M02 into ps_rptCustomerTurnover_bk_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReportArchive ADD FILEGROUP rptCustomerTurnover_bk_20M03;
ALTER DATABASE bodb_LicenseeReportArchive ADD FILE (NAME = N'rptCustomerTurnover_bk_20M03', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_20M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_bk_20M03;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_bk_monthly NEXT USED rptCustomerTurnover_bk_20M03;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_bk_monthly() SPLIT RANGE (N'2020-03-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_bk_20M03 into ps_rptCustomerTurnover_bk_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReportArchive ADD FILEGROUP rptCustomerTurnover_bk_20M04;
ALTER DATABASE bodb_LicenseeReportArchive ADD FILE (NAME = N'rptCustomerTurnover_bk_20M04', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_20M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_bk_20M04;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_bk_monthly NEXT USED rptCustomerTurnover_bk_20M04;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_bk_monthly() SPLIT RANGE (N'2020-04-30 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_bk_20M04 into ps_rptCustomerTurnover_bk_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReportArchive ADD FILEGROUP rptCustomerTurnover_bk_20M05;
ALTER DATABASE bodb_LicenseeReportArchive ADD FILE (NAME = N'rptCustomerTurnover_bk_20M05', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_20M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_bk_20M05;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_bk_monthly NEXT USED rptCustomerTurnover_bk_20M05;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_bk_monthly() SPLIT RANGE (N'2020-05-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_bk_20M05 into ps_rptCustomerTurnover_bk_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReportArchive ADD FILEGROUP rptCustomerTurnover_bk_20M06;
ALTER DATABASE bodb_LicenseeReportArchive ADD FILE (NAME = N'rptCustomerTurnover_bk_20M06', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_20M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_bk_20M06;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_bk_monthly NEXT USED rptCustomerTurnover_bk_20M06;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_bk_monthly() SPLIT RANGE (N'2020-06-30 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_bk_20M06 into ps_rptCustomerTurnover_bk_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReportArchive ADD FILEGROUP rptCustomerTurnover_bk_20M07;
ALTER DATABASE bodb_LicenseeReportArchive ADD FILE (NAME = N'rptCustomerTurnover_bk_20M07', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_20M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_bk_20M07;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_bk_monthly NEXT USED rptCustomerTurnover_bk_20M07;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_bk_monthly() SPLIT RANGE (N'2020-07-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_bk_20M07 into ps_rptCustomerTurnover_bk_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReportArchive ADD FILEGROUP rptCustomerTurnover_bk_20M08;
ALTER DATABASE bodb_LicenseeReportArchive ADD FILE (NAME = N'rptCustomerTurnover_bk_20M08', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_20M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_bk_20M08;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_bk_monthly NEXT USED rptCustomerTurnover_bk_20M08;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_bk_monthly() SPLIT RANGE (N'2020-08-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_bk_20M08 into ps_rptCustomerTurnover_bk_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReportArchive ADD FILEGROUP rptCustomerTurnover_bk_20M09;
ALTER DATABASE bodb_LicenseeReportArchive ADD FILE (NAME = N'rptCustomerTurnover_bk_20M09', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_20M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_bk_20M09;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_bk_monthly NEXT USED rptCustomerTurnover_bk_20M09;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_bk_monthly() SPLIT RANGE (N'2020-09-30 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_bk_20M09 into ps_rptCustomerTurnover_bk_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReportArchive ADD FILEGROUP rptCustomerTurnover_bk_20M10;
ALTER DATABASE bodb_LicenseeReportArchive ADD FILE (NAME = N'rptCustomerTurnover_bk_20M10', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_20M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_bk_20M10;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_bk_monthly NEXT USED rptCustomerTurnover_bk_20M10;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_bk_monthly() SPLIT RANGE (N'2020-10-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_bk_20M10 into ps_rptCustomerTurnover_bk_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReportArchive ADD FILEGROUP rptCustomerTurnover_bk_20M11;
ALTER DATABASE bodb_LicenseeReportArchive ADD FILE (NAME = N'rptCustomerTurnover_bk_20M11', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_20M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_bk_20M11;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_bk_monthly NEXT USED rptCustomerTurnover_bk_20M11;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_bk_monthly() SPLIT RANGE (N'2020-11-30 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_bk_20M11 into ps_rptCustomerTurnover_bk_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReportArchive ADD FILEGROUP rptCustomerTurnover_bk_20M12;
ALTER DATABASE bodb_LicenseeReportArchive ADD FILE (NAME = N'rptCustomerTurnover_bk_20M12', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_20M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_bk_20M12;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_bk_monthly NEXT USED rptCustomerTurnover_bk_20M12;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_bk_monthly() SPLIT RANGE (N'2020-12-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_bk_20M12 into ps_rptCustomerTurnover_bk_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReportArchive ADD FILEGROUP rptCustomerTurnover_bk_21M01;
ALTER DATABASE bodb_LicenseeReportArchive ADD FILE (NAME = N'rptCustomerTurnover_bk_21M01', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_21M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_bk_21M01;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_bk_monthly NEXT USED rptCustomerTurnover_bk_21M01;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_bk_monthly() SPLIT RANGE (N'2021-01-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_bk_21M01 into ps_rptCustomerTurnover_bk_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReportArchive ADD FILEGROUP rptCustomerTurnover_bk_21M02;
ALTER DATABASE bodb_LicenseeReportArchive ADD FILE (NAME = N'rptCustomerTurnover_bk_21M02', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_21M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_bk_21M02;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_bk_monthly NEXT USED rptCustomerTurnover_bk_21M02;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_bk_monthly() SPLIT RANGE (N'2021-02-28 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_bk_21M02 into ps_rptCustomerTurnover_bk_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReportArchive ADD FILEGROUP rptCustomerTurnover_bk_21M03;
ALTER DATABASE bodb_LicenseeReportArchive ADD FILE (NAME = N'rptCustomerTurnover_bk_21M03', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_21M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_bk_21M03;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_bk_monthly NEXT USED rptCustomerTurnover_bk_21M03;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_bk_monthly() SPLIT RANGE (N'2021-03-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_bk_21M03 into ps_rptCustomerTurnover_bk_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReportArchive ADD FILEGROUP rptCustomerTurnover_bk_21M04;
ALTER DATABASE bodb_LicenseeReportArchive ADD FILE (NAME = N'rptCustomerTurnover_bk_21M04', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_21M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_bk_21M04;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_bk_monthly NEXT USED rptCustomerTurnover_bk_21M04;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_bk_monthly() SPLIT RANGE (N'2021-04-30 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_bk_21M04 into ps_rptCustomerTurnover_bk_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReportArchive ADD FILEGROUP rptCustomerTurnover_bk_21M05;
ALTER DATABASE bodb_LicenseeReportArchive ADD FILE (NAME = N'rptCustomerTurnover_bk_21M05', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_21M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_bk_21M05;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_bk_monthly NEXT USED rptCustomerTurnover_bk_21M05;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_bk_monthly() SPLIT RANGE (N'2021-05-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_bk_21M05 into ps_rptCustomerTurnover_bk_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReportArchive ADD FILEGROUP rptCustomerTurnover_bk_21M06;
ALTER DATABASE bodb_LicenseeReportArchive ADD FILE (NAME = N'rptCustomerTurnover_bk_21M06', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_21M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_bk_21M06;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_bk_monthly NEXT USED rptCustomerTurnover_bk_21M06;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_bk_monthly() SPLIT RANGE (N'2021-06-30 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_bk_21M06 into ps_rptCustomerTurnover_bk_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReportArchive ADD FILEGROUP rptCustomerTurnover_bk_21M07;
ALTER DATABASE bodb_LicenseeReportArchive ADD FILE (NAME = N'rptCustomerTurnover_bk_21M07', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_21M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_bk_21M07;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_bk_monthly NEXT USED rptCustomerTurnover_bk_21M07;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_bk_monthly() SPLIT RANGE (N'2021-07-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_bk_21M07 into ps_rptCustomerTurnover_bk_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReportArchive ADD FILEGROUP rptCustomerTurnover_bk_21M08;
ALTER DATABASE bodb_LicenseeReportArchive ADD FILE (NAME = N'rptCustomerTurnover_bk_21M08', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_21M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_bk_21M08;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_bk_monthly NEXT USED rptCustomerTurnover_bk_21M08;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_bk_monthly() SPLIT RANGE (N'2021-08-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_bk_21M08 into ps_rptCustomerTurnover_bk_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReportArchive ADD FILEGROUP rptCustomerTurnover_bk_21M09;
ALTER DATABASE bodb_LicenseeReportArchive ADD FILE (NAME = N'rptCustomerTurnover_bk_21M09', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_21M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_bk_21M09;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_bk_monthly NEXT USED rptCustomerTurnover_bk_21M09;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_bk_monthly() SPLIT RANGE (N'2021-09-30 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_bk_21M09 into ps_rptCustomerTurnover_bk_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReportArchive ADD FILEGROUP rptCustomerTurnover_bk_21M10;
ALTER DATABASE bodb_LicenseeReportArchive ADD FILE (NAME = N'rptCustomerTurnover_bk_21M10', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_21M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_bk_21M10;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_bk_monthly NEXT USED rptCustomerTurnover_bk_21M10;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_bk_monthly() SPLIT RANGE (N'2021-10-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_bk_21M10 into ps_rptCustomerTurnover_bk_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReportArchive ADD FILEGROUP rptCustomerTurnover_bk_21M11;
ALTER DATABASE bodb_LicenseeReportArchive ADD FILE (NAME = N'rptCustomerTurnover_bk_21M11', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_21M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_bk_21M11;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_bk_monthly NEXT USED rptCustomerTurnover_bk_21M11;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_bk_monthly() SPLIT RANGE (N'2021-11-30 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_bk_21M11 into ps_rptCustomerTurnover_bk_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReportArchive ADD FILEGROUP rptCustomerTurnover_bk_21M12;
ALTER DATABASE bodb_LicenseeReportArchive ADD FILE (NAME = N'rptCustomerTurnover_bk_21M12', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_21M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_bk_21M12;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_bk_monthly NEXT USED rptCustomerTurnover_bk_21M12;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_bk_monthly() SPLIT RANGE (N'2021-12-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_bk_21M12 into ps_rptCustomerTurnover_bk_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReportArchive ADD FILEGROUP rptCustomerTurnover_bk_22M01;
ALTER DATABASE bodb_LicenseeReportArchive ADD FILE (NAME = N'rptCustomerTurnover_bk_22M01', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_22M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_bk_22M01;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_bk_monthly NEXT USED rptCustomerTurnover_bk_22M01;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_bk_monthly() SPLIT RANGE (N'2022-01-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_bk_22M01 into ps_rptCustomerTurnover_bk_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReportArchive ADD FILEGROUP rptCustomerTurnover_bk_22M02;
ALTER DATABASE bodb_LicenseeReportArchive ADD FILE (NAME = N'rptCustomerTurnover_bk_22M02', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_22M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_bk_22M02;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_bk_monthly NEXT USED rptCustomerTurnover_bk_22M02;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_bk_monthly() SPLIT RANGE (N'2022-02-28 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_bk_22M02 into ps_rptCustomerTurnover_bk_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReportArchive ADD FILEGROUP rptCustomerTurnover_bk_22M03;
ALTER DATABASE bodb_LicenseeReportArchive ADD FILE (NAME = N'rptCustomerTurnover_bk_22M03', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_22M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_bk_22M03;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_bk_monthly NEXT USED rptCustomerTurnover_bk_22M03;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_bk_monthly() SPLIT RANGE (N'2022-03-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_bk_22M03 into ps_rptCustomerTurnover_bk_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReportArchive ADD FILEGROUP rptCustomerTurnover_bk_22M04;
ALTER DATABASE bodb_LicenseeReportArchive ADD FILE (NAME = N'rptCustomerTurnover_bk_22M04', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_22M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_bk_22M04;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_bk_monthly NEXT USED rptCustomerTurnover_bk_22M04;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_bk_monthly() SPLIT RANGE (N'2022-04-30 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_bk_22M04 into ps_rptCustomerTurnover_bk_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReportArchive ADD FILEGROUP rptCustomerTurnover_bk_22M05;
ALTER DATABASE bodb_LicenseeReportArchive ADD FILE (NAME = N'rptCustomerTurnover_bk_22M05', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_22M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_bk_22M05;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_bk_monthly NEXT USED rptCustomerTurnover_bk_22M05;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_bk_monthly() SPLIT RANGE (N'2022-05-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_bk_22M05 into ps_rptCustomerTurnover_bk_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReportArchive ADD FILEGROUP rptCustomerTurnover_bk_22M06;
ALTER DATABASE bodb_LicenseeReportArchive ADD FILE (NAME = N'rptCustomerTurnover_bk_22M06', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_22M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_bk_22M06;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_bk_monthly NEXT USED rptCustomerTurnover_bk_22M06;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_bk_monthly() SPLIT RANGE (N'2022-06-30 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_bk_22M06 into ps_rptCustomerTurnover_bk_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReportArchive ADD FILEGROUP rptCustomerTurnover_bk_22M07;
ALTER DATABASE bodb_LicenseeReportArchive ADD FILE (NAME = N'rptCustomerTurnover_bk_22M07', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_22M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_bk_22M07;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_bk_monthly NEXT USED rptCustomerTurnover_bk_22M07;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_bk_monthly() SPLIT RANGE (N'2022-07-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_bk_22M07 into ps_rptCustomerTurnover_bk_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReportArchive ADD FILEGROUP rptCustomerTurnover_bk_22M08;
ALTER DATABASE bodb_LicenseeReportArchive ADD FILE (NAME = N'rptCustomerTurnover_bk_22M08', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_22M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_bk_22M08;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_bk_monthly NEXT USED rptCustomerTurnover_bk_22M08;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_bk_monthly() SPLIT RANGE (N'2022-08-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_bk_22M08 into ps_rptCustomerTurnover_bk_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReportArchive ADD FILEGROUP rptCustomerTurnover_bk_22M09;
ALTER DATABASE bodb_LicenseeReportArchive ADD FILE (NAME = N'rptCustomerTurnover_bk_22M09', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_22M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_bk_22M09;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_bk_monthly NEXT USED rptCustomerTurnover_bk_22M09;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_bk_monthly() SPLIT RANGE (N'2022-09-30 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_bk_22M09 into ps_rptCustomerTurnover_bk_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReportArchive ADD FILEGROUP rptCustomerTurnover_bk_22M10;
ALTER DATABASE bodb_LicenseeReportArchive ADD FILE (NAME = N'rptCustomerTurnover_bk_22M10', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_22M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_bk_22M10;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_bk_monthly NEXT USED rptCustomerTurnover_bk_22M10;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_bk_monthly() SPLIT RANGE (N'2022-10-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_bk_22M10 into ps_rptCustomerTurnover_bk_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReportArchive ADD FILEGROUP rptCustomerTurnover_bk_22M11;
ALTER DATABASE bodb_LicenseeReportArchive ADD FILE (NAME = N'rptCustomerTurnover_bk_22M11', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_22M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_bk_22M11;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_bk_monthly NEXT USED rptCustomerTurnover_bk_22M11;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_bk_monthly() SPLIT RANGE (N'2022-11-30 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_bk_22M11 into ps_rptCustomerTurnover_bk_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReportArchive ADD FILEGROUP rptCustomerTurnover_bk_22M12;
ALTER DATABASE bodb_LicenseeReportArchive ADD FILE (NAME = N'rptCustomerTurnover_bk_22M12', FILENAME = N'G:\IBC_DB\bodb_LicenseeReportArchive\rptCustomerTurnover_bk_22M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_bk_22M12;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_bk_monthly NEXT USED rptCustomerTurnover_bk_22M12;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_bk_monthly() SPLIT RANGE (N'2022-12-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_bk_22M12 into ps_rptCustomerTurnover_bk_monthly', 0, 0) WITH NOWAIT;
 
-------------------------
-- END ps_rptCustomerTurnover_bk_monthly
-------------------------

