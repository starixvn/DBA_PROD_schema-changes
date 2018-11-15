/*
	Creator:	20181113@Billy
	Task:		Extend partitions to 2022 - [Redmine: #104483]
	Server:		DB054.bodb_LicenseeReport
	WBS:		#420-000
*/

USE	bodb_LicenseeReport;
GO

-------------------------
-- ps_rptLicWL_old_monthly
-------------------------

ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_19M01;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_19M01', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss_Old\rptLicWL_old_19M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_19M01;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_19M01;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2019-01-31 23:59:00.000');
RAISERROR('Added rptLicWL_old_19M01 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_19M02;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_19M02', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss_Old\rptLicWL_old_19M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_19M02;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_19M02;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2019-02-28 23:59:00.000');
RAISERROR('Added rptLicWL_old_19M02 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_19M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_19M03', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss_Old\rptLicWL_old_19M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_19M03;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_19M03;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2019-03-31 23:59:00.000');
RAISERROR('Added rptLicWL_old_19M03 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_19M04;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_19M04', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss_Old\rptLicWL_old_19M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_19M04;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_19M04;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2019-04-30 23:59:00.000');
RAISERROR('Added rptLicWL_old_19M04 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_19M05;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_19M05', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss_Old\rptLicWL_old_19M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_19M05;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_19M05;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2019-05-31 23:59:00.000');
RAISERROR('Added rptLicWL_old_19M05 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_19M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_19M06', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss_Old\rptLicWL_old_19M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_19M06;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_19M06;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2019-06-30 23:59:00.000');
RAISERROR('Added rptLicWL_old_19M06 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_19M07;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_19M07', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss_Old\rptLicWL_old_19M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_19M07;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_19M07;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2019-07-31 23:59:00.000');
RAISERROR('Added rptLicWL_old_19M07 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_19M08;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_19M08', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss_Old\rptLicWL_old_19M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_19M08;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_19M08;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2019-08-31 23:59:00.000');
RAISERROR('Added rptLicWL_old_19M08 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_19M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_19M09', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss_Old\rptLicWL_old_19M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_19M09;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_19M09;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2019-09-30 23:59:00.000');
RAISERROR('Added rptLicWL_old_19M09 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_19M10;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_19M10', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss_Old\rptLicWL_old_19M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_19M10;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_19M10;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2019-10-31 23:59:00.000');
RAISERROR('Added rptLicWL_old_19M10 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_19M11;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_19M11', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss_Old\rptLicWL_old_19M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_19M11;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_19M11;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2019-11-30 23:59:00.000');
RAISERROR('Added rptLicWL_old_19M11 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_19M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_19M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss_Old\rptLicWL_old_19M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_19M12;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_19M12;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2019-12-31 23:59:00.000');
RAISERROR('Added rptLicWL_old_19M12 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_20M01;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_20M01', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss_Old\rptLicWL_old_20M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_20M01;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_20M01;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2020-01-31 23:59:00.000');
RAISERROR('Added rptLicWL_old_20M01 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_20M02;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_20M02', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss_Old\rptLicWL_old_20M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_20M02;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_20M02;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2020-02-29 23:59:00.000');
RAISERROR('Added rptLicWL_old_20M02 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_20M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_20M03', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss_Old\rptLicWL_old_20M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_20M03;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_20M03;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2020-03-31 23:59:00.000');
RAISERROR('Added rptLicWL_old_20M03 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_20M04;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_20M04', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss_Old\rptLicWL_old_20M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_20M04;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_20M04;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2020-04-30 23:59:00.000');
RAISERROR('Added rptLicWL_old_20M04 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_20M05;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_20M05', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss_Old\rptLicWL_old_20M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_20M05;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_20M05;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2020-05-31 23:59:00.000');
RAISERROR('Added rptLicWL_old_20M05 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_20M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_20M06', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss_Old\rptLicWL_old_20M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_20M06;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_20M06;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2020-06-30 23:59:00.000');
RAISERROR('Added rptLicWL_old_20M06 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_20M07;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_20M07', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss_Old\rptLicWL_old_20M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_20M07;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_20M07;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2020-07-31 23:59:00.000');
RAISERROR('Added rptLicWL_old_20M07 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_20M08;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_20M08', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss_Old\rptLicWL_old_20M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_20M08;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_20M08;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2020-08-31 23:59:00.000');
RAISERROR('Added rptLicWL_old_20M08 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_20M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_20M09', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss_Old\rptLicWL_old_20M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_20M09;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_20M09;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2020-09-30 23:59:00.000');
RAISERROR('Added rptLicWL_old_20M09 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_20M10;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_20M10', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss_Old\rptLicWL_old_20M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_20M10;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_20M10;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2020-10-31 23:59:00.000');
RAISERROR('Added rptLicWL_old_20M10 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_20M11;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_20M11', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss_Old\rptLicWL_old_20M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_20M11;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_20M11;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2020-11-30 23:59:00.000');
RAISERROR('Added rptLicWL_old_20M11 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_20M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_20M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss_Old\rptLicWL_old_20M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_20M12;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_20M12;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2020-12-31 23:59:00.000');
RAISERROR('Added rptLicWL_old_20M12 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_21M01;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_21M01', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss_Old\rptLicWL_old_21M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_21M01;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_21M01;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2021-01-31 23:59:00.000');
RAISERROR('Added rptLicWL_old_21M01 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_21M02;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_21M02', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss_Old\rptLicWL_old_21M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_21M02;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_21M02;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2021-02-28 23:59:00.000');
RAISERROR('Added rptLicWL_old_21M02 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_21M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_21M03', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss_Old\rptLicWL_old_21M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_21M03;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_21M03;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2021-03-31 23:59:00.000');
RAISERROR('Added rptLicWL_old_21M03 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_21M04;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_21M04', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss_Old\rptLicWL_old_21M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_21M04;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_21M04;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2021-04-30 23:59:00.000');
RAISERROR('Added rptLicWL_old_21M04 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_21M05;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_21M05', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss_Old\rptLicWL_old_21M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_21M05;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_21M05;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2021-05-31 23:59:00.000');
RAISERROR('Added rptLicWL_old_21M05 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_21M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_21M06', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss_Old\rptLicWL_old_21M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_21M06;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_21M06;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2021-06-30 23:59:00.000');
RAISERROR('Added rptLicWL_old_21M06 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_21M07;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_21M07', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss_Old\rptLicWL_old_21M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_21M07;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_21M07;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2021-07-31 23:59:00.000');
RAISERROR('Added rptLicWL_old_21M07 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_21M08;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_21M08', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss_Old\rptLicWL_old_21M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_21M08;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_21M08;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2021-08-31 23:59:00.000');
RAISERROR('Added rptLicWL_old_21M08 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_21M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_21M09', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss_Old\rptLicWL_old_21M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_21M09;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_21M09;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2021-09-30 23:59:00.000');
RAISERROR('Added rptLicWL_old_21M09 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_21M10;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_21M10', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss_Old\rptLicWL_old_21M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_21M10;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_21M10;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2021-10-31 23:59:00.000');
RAISERROR('Added rptLicWL_old_21M10 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_21M11;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_21M11', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss_Old\rptLicWL_old_21M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_21M11;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_21M11;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2021-11-30 23:59:00.000');
RAISERROR('Added rptLicWL_old_21M11 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_21M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_21M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss_Old\rptLicWL_old_21M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_21M12;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_21M12;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2021-12-31 23:59:00.000');
RAISERROR('Added rptLicWL_old_21M12 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_22M01;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_22M01', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss_Old\rptLicWL_old_22M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_22M01;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_22M01;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2022-01-31 23:59:00.000');
RAISERROR('Added rptLicWL_old_22M01 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_22M02;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_22M02', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss_Old\rptLicWL_old_22M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_22M02;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_22M02;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2022-02-28 23:59:00.000');
RAISERROR('Added rptLicWL_old_22M02 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_22M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_22M03', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss_Old\rptLicWL_old_22M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_22M03;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_22M03;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2022-03-31 23:59:00.000');
RAISERROR('Added rptLicWL_old_22M03 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_22M04;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_22M04', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss_Old\rptLicWL_old_22M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_22M04;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_22M04;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2022-04-30 23:59:00.000');
RAISERROR('Added rptLicWL_old_22M04 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_22M05;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_22M05', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss_Old\rptLicWL_old_22M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_22M05;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_22M05;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2022-05-31 23:59:00.000');
RAISERROR('Added rptLicWL_old_22M05 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_22M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_22M06', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss_Old\rptLicWL_old_22M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_22M06;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_22M06;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2022-06-30 23:59:00.000');
RAISERROR('Added rptLicWL_old_22M06 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_22M07;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_22M07', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss_Old\rptLicWL_old_22M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_22M07;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_22M07;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2022-07-31 23:59:00.000');
RAISERROR('Added rptLicWL_old_22M07 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_22M08;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_22M08', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss_Old\rptLicWL_old_22M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_22M08;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_22M08;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2022-08-31 23:59:00.000');
RAISERROR('Added rptLicWL_old_22M08 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_22M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_22M09', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss_Old\rptLicWL_old_22M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_22M09;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_22M09;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2022-09-30 23:59:00.000');
RAISERROR('Added rptLicWL_old_22M09 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_22M10;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_22M10', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss_Old\rptLicWL_old_22M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_22M10;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_22M10;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2022-10-31 23:59:00.000');
RAISERROR('Added rptLicWL_old_22M10 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_22M11;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_22M11', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss_Old\rptLicWL_old_22M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_22M11;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_22M11;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2022-11-30 23:59:00.000');
RAISERROR('Added rptLicWL_old_22M11 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWL_old_22M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWL_old_22M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss_Old\rptLicWL_old_22M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWL_old_22M12;
ALTER PARTITION SCHEME ps_rptLicWL_old_monthly NEXT USED rptLicWL_old_22M12;
ALTER PARTITION FUNCTION pf_rptLicWL_old_monthly() SPLIT RANGE (N'2022-12-31 23:59:00.000');
RAISERROR('Added rptLicWL_old_22M12 into ps_rptLicWL_old_monthly', 0, 0) WITH NOWAIT;
 
-------------------------
-- END ps_rptLicWL_old_monthly
-------------------------


-------------------------
-- ps_rptCustomerMatch_monthly
-------------------------

ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_19M01;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_19M01', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_19M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_19M01;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_19M01;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2019-01-31 23:59:00.000');
RAISERROR('Added rptCustomerMatch_19M01 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_19M02;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_19M02', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_19M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_19M02;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_19M02;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2019-02-28 23:59:00.000');
RAISERROR('Added rptCustomerMatch_19M02 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_19M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_19M03', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_19M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_19M03;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_19M03;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2019-03-31 23:59:00.000');
RAISERROR('Added rptCustomerMatch_19M03 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_19M04;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_19M04', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_19M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_19M04;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_19M04;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2019-04-30 23:59:00.000');
RAISERROR('Added rptCustomerMatch_19M04 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_19M05;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_19M05', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_19M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_19M05;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_19M05;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2019-05-31 23:59:00.000');
RAISERROR('Added rptCustomerMatch_19M05 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_19M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_19M06', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_19M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_19M06;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_19M06;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2019-06-30 23:59:00.000');
RAISERROR('Added rptCustomerMatch_19M06 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_19M07;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_19M07', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_19M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_19M07;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_19M07;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2019-07-31 23:59:00.000');
RAISERROR('Added rptCustomerMatch_19M07 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_19M08;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_19M08', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_19M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_19M08;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_19M08;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2019-08-31 23:59:00.000');
RAISERROR('Added rptCustomerMatch_19M08 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_19M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_19M09', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_19M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_19M09;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_19M09;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2019-09-30 23:59:00.000');
RAISERROR('Added rptCustomerMatch_19M09 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_19M10;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_19M10', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_19M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_19M10;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_19M10;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2019-10-31 23:59:00.000');
RAISERROR('Added rptCustomerMatch_19M10 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_19M11;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_19M11', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_19M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_19M11;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_19M11;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2019-11-30 23:59:00.000');
RAISERROR('Added rptCustomerMatch_19M11 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_19M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_19M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_19M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_19M12;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_19M12;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2019-12-31 23:59:00.000');
RAISERROR('Added rptCustomerMatch_19M12 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_20M01;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_20M01', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_20M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_20M01;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_20M01;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2020-01-31 23:59:00.000');
RAISERROR('Added rptCustomerMatch_20M01 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_20M02;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_20M02', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_20M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_20M02;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_20M02;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2020-02-29 23:59:00.000');
RAISERROR('Added rptCustomerMatch_20M02 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_20M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_20M03', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_20M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_20M03;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_20M03;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2020-03-31 23:59:00.000');
RAISERROR('Added rptCustomerMatch_20M03 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_20M04;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_20M04', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_20M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_20M04;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_20M04;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2020-04-30 23:59:00.000');
RAISERROR('Added rptCustomerMatch_20M04 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_20M05;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_20M05', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_20M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_20M05;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_20M05;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2020-05-31 23:59:00.000');
RAISERROR('Added rptCustomerMatch_20M05 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_20M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_20M06', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_20M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_20M06;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_20M06;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2020-06-30 23:59:00.000');
RAISERROR('Added rptCustomerMatch_20M06 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_20M07;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_20M07', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_20M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_20M07;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_20M07;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2020-07-31 23:59:00.000');
RAISERROR('Added rptCustomerMatch_20M07 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_20M08;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_20M08', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_20M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_20M08;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_20M08;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2020-08-31 23:59:00.000');
RAISERROR('Added rptCustomerMatch_20M08 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_20M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_20M09', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_20M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_20M09;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_20M09;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2020-09-30 23:59:00.000');
RAISERROR('Added rptCustomerMatch_20M09 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_20M10;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_20M10', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_20M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_20M10;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_20M10;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2020-10-31 23:59:00.000');
RAISERROR('Added rptCustomerMatch_20M10 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_20M11;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_20M11', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_20M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_20M11;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_20M11;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2020-11-30 23:59:00.000');
RAISERROR('Added rptCustomerMatch_20M11 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_20M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_20M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_20M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_20M12;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_20M12;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2020-12-31 23:59:00.000');
RAISERROR('Added rptCustomerMatch_20M12 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_21M01;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_21M01', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_21M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_21M01;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_21M01;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2021-01-31 23:59:00.000');
RAISERROR('Added rptCustomerMatch_21M01 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_21M02;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_21M02', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_21M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_21M02;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_21M02;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2021-02-28 23:59:00.000');
RAISERROR('Added rptCustomerMatch_21M02 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_21M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_21M03', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_21M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_21M03;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_21M03;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2021-03-31 23:59:00.000');
RAISERROR('Added rptCustomerMatch_21M03 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_21M04;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_21M04', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_21M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_21M04;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_21M04;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2021-04-30 23:59:00.000');
RAISERROR('Added rptCustomerMatch_21M04 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_21M05;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_21M05', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_21M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_21M05;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_21M05;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2021-05-31 23:59:00.000');
RAISERROR('Added rptCustomerMatch_21M05 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_21M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_21M06', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_21M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_21M06;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_21M06;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2021-06-30 23:59:00.000');
RAISERROR('Added rptCustomerMatch_21M06 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_21M07;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_21M07', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_21M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_21M07;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_21M07;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2021-07-31 23:59:00.000');
RAISERROR('Added rptCustomerMatch_21M07 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_21M08;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_21M08', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_21M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_21M08;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_21M08;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2021-08-31 23:59:00.000');
RAISERROR('Added rptCustomerMatch_21M08 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_21M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_21M09', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_21M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_21M09;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_21M09;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2021-09-30 23:59:00.000');
RAISERROR('Added rptCustomerMatch_21M09 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_21M10;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_21M10', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_21M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_21M10;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_21M10;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2021-10-31 23:59:00.000');
RAISERROR('Added rptCustomerMatch_21M10 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_21M11;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_21M11', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_21M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_21M11;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_21M11;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2021-11-30 23:59:00.000');
RAISERROR('Added rptCustomerMatch_21M11 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_21M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_21M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_21M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_21M12;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_21M12;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2021-12-31 23:59:00.000');
RAISERROR('Added rptCustomerMatch_21M12 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_22M01;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_22M01', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_22M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_22M01;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_22M01;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2022-01-31 23:59:00.000');
RAISERROR('Added rptCustomerMatch_22M01 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_22M02;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_22M02', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_22M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_22M02;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_22M02;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2022-02-28 23:59:00.000');
RAISERROR('Added rptCustomerMatch_22M02 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_22M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_22M03', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_22M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_22M03;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_22M03;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2022-03-31 23:59:00.000');
RAISERROR('Added rptCustomerMatch_22M03 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_22M04;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_22M04', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_22M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_22M04;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_22M04;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2022-04-30 23:59:00.000');
RAISERROR('Added rptCustomerMatch_22M04 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_22M05;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_22M05', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_22M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_22M05;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_22M05;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2022-05-31 23:59:00.000');
RAISERROR('Added rptCustomerMatch_22M05 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_22M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_22M06', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_22M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_22M06;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_22M06;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2022-06-30 23:59:00.000');
RAISERROR('Added rptCustomerMatch_22M06 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_22M07;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_22M07', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_22M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_22M07;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_22M07;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2022-07-31 23:59:00.000');
RAISERROR('Added rptCustomerMatch_22M07 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_22M08;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_22M08', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_22M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_22M08;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_22M08;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2022-08-31 23:59:00.000');
RAISERROR('Added rptCustomerMatch_22M08 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_22M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_22M09', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_22M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_22M09;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_22M09;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2022-09-30 23:59:00.000');
RAISERROR('Added rptCustomerMatch_22M09 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_22M10;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_22M10', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_22M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_22M10;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_22M10;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2022-10-31 23:59:00.000');
RAISERROR('Added rptCustomerMatch_22M10 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_22M11;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_22M11', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_22M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_22M11;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_22M11;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2022-11-30 23:59:00.000');
RAISERROR('Added rptCustomerMatch_22M11 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerMatch_22M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerMatch_22M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerMatch\rptCustomerMatch_22M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerMatch_22M12;
ALTER PARTITION SCHEME ps_rptCustomerMatch_monthly NEXT USED rptCustomerMatch_22M12;
ALTER PARTITION FUNCTION pf_rptCustomerMatch_monthly() SPLIT RANGE (N'2022-12-31 23:59:00.000');
RAISERROR('Added rptCustomerMatch_22M12 into ps_rptCustomerMatch_monthly', 0, 0) WITH NOWAIT;
 
-------------------------
-- END ps_rptCustomerMatch_monthly
-------------------------


-------------------------
-- ps_rptCustomerTurnover_monthly
-------------------------

ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_19M01;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_19M01', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_19M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_19M01;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_19M01;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2019-01-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_19M01 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_19M02;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_19M02', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_19M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_19M02;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_19M02;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2019-02-28 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_19M02 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_19M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_19M03', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_19M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_19M03;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_19M03;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2019-03-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_19M03 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_19M04;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_19M04', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_19M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_19M04;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_19M04;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2019-04-30 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_19M04 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_19M05;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_19M05', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_19M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_19M05;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_19M05;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2019-05-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_19M05 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_19M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_19M06', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_19M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_19M06;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_19M06;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2019-06-30 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_19M06 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_19M07;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_19M07', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_19M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_19M07;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_19M07;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2019-07-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_19M07 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_19M08;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_19M08', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_19M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_19M08;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_19M08;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2019-08-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_19M08 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_19M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_19M09', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_19M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_19M09;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_19M09;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2019-09-30 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_19M09 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_19M10;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_19M10', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_19M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_19M10;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_19M10;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2019-10-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_19M10 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_19M11;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_19M11', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_19M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_19M11;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_19M11;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2019-11-30 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_19M11 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_19M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_19M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_19M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_19M12;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_19M12;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2019-12-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_19M12 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_20M01;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_20M01', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_20M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_20M01;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_20M01;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2020-01-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_20M01 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_20M02;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_20M02', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_20M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_20M02;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_20M02;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2020-02-29 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_20M02 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_20M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_20M03', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_20M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_20M03;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_20M03;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2020-03-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_20M03 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_20M04;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_20M04', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_20M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_20M04;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_20M04;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2020-04-30 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_20M04 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_20M05;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_20M05', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_20M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_20M05;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_20M05;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2020-05-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_20M05 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_20M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_20M06', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_20M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_20M06;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_20M06;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2020-06-30 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_20M06 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_20M07;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_20M07', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_20M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_20M07;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_20M07;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2020-07-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_20M07 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_20M08;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_20M08', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_20M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_20M08;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_20M08;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2020-08-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_20M08 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_20M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_20M09', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_20M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_20M09;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_20M09;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2020-09-30 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_20M09 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_20M10;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_20M10', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_20M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_20M10;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_20M10;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2020-10-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_20M10 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_20M11;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_20M11', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_20M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_20M11;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_20M11;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2020-11-30 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_20M11 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_20M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_20M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_20M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_20M12;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_20M12;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2020-12-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_20M12 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_21M01;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_21M01', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_21M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_21M01;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_21M01;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2021-01-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_21M01 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_21M02;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_21M02', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_21M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_21M02;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_21M02;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2021-02-28 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_21M02 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_21M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_21M03', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_21M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_21M03;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_21M03;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2021-03-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_21M03 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_21M04;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_21M04', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_21M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_21M04;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_21M04;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2021-04-30 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_21M04 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_21M05;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_21M05', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_21M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_21M05;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_21M05;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2021-05-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_21M05 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_21M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_21M06', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_21M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_21M06;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_21M06;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2021-06-30 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_21M06 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_21M07;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_21M07', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_21M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_21M07;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_21M07;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2021-07-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_21M07 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_21M08;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_21M08', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_21M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_21M08;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_21M08;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2021-08-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_21M08 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_21M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_21M09', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_21M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_21M09;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_21M09;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2021-09-30 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_21M09 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_21M10;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_21M10', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_21M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_21M10;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_21M10;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2021-10-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_21M10 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_21M11;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_21M11', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_21M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_21M11;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_21M11;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2021-11-30 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_21M11 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_21M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_21M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_21M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_21M12;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_21M12;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2021-12-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_21M12 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_22M01;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_22M01', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_22M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_22M01;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_22M01;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2022-01-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_22M01 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_22M02;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_22M02', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_22M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_22M02;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_22M02;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2022-02-28 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_22M02 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_22M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_22M03', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_22M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_22M03;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_22M03;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2022-03-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_22M03 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_22M04;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_22M04', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_22M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_22M04;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_22M04;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2022-04-30 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_22M04 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_22M05;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_22M05', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_22M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_22M05;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_22M05;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2022-05-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_22M05 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_22M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_22M06', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_22M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_22M06;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_22M06;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2022-06-30 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_22M06 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_22M07;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_22M07', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_22M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_22M07;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_22M07;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2022-07-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_22M07 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_22M08;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_22M08', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_22M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_22M08;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_22M08;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2022-08-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_22M08 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_22M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_22M09', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_22M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_22M09;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_22M09;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2022-09-30 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_22M09 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_22M10;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_22M10', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_22M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_22M10;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_22M10;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2022-10-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_22M10 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_22M11;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_22M11', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_22M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_22M11;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_22M11;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2022-11-30 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_22M11 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerTurnover_22M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerTurnover_22M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerTurnover\rptCustomerTurnover_22M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerTurnover_22M12;
ALTER PARTITION SCHEME ps_rptCustomerTurnover_monthly NEXT USED rptCustomerTurnover_22M12;
ALTER PARTITION FUNCTION pf_rptCustomerTurnover_monthly() SPLIT RANGE (N'2022-12-31 23:59:00.000');
RAISERROR('Added rptCustomerTurnover_22M12 into ps_rptCustomerTurnover_monthly', 0, 0) WITH NOWAIT;
 
-------------------------
-- END ps_rptCustomerTurnover_monthly
-------------------------


-------------------------
-- ps_rptWinlostbyLeague_monthly
-------------------------

ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_19M01;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_19M01', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_19M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_19M01;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_19M01;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2019-01-31 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_19M01 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_19M02;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_19M02', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_19M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_19M02;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_19M02;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2019-02-28 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_19M02 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_19M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_19M03', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_19M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_19M03;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_19M03;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2019-03-31 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_19M03 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_19M04;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_19M04', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_19M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_19M04;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_19M04;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2019-04-30 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_19M04 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_19M05;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_19M05', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_19M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_19M05;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_19M05;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2019-05-31 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_19M05 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_19M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_19M06', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_19M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_19M06;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_19M06;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2019-06-30 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_19M06 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_19M07;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_19M07', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_19M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_19M07;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_19M07;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2019-07-31 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_19M07 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_19M08;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_19M08', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_19M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_19M08;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_19M08;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2019-08-31 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_19M08 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_19M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_19M09', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_19M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_19M09;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_19M09;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2019-09-30 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_19M09 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_19M10;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_19M10', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_19M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_19M10;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_19M10;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2019-10-31 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_19M10 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_19M11;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_19M11', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_19M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_19M11;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_19M11;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2019-11-30 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_19M11 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_19M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_19M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_19M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_19M12;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_19M12;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2019-12-31 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_19M12 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_20M01;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_20M01', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_20M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_20M01;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_20M01;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2020-01-31 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_20M01 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_20M02;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_20M02', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_20M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_20M02;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_20M02;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2020-02-29 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_20M02 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_20M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_20M03', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_20M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_20M03;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_20M03;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2020-03-31 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_20M03 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_20M04;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_20M04', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_20M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_20M04;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_20M04;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2020-04-30 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_20M04 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_20M05;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_20M05', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_20M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_20M05;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_20M05;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2020-05-31 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_20M05 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_20M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_20M06', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_20M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_20M06;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_20M06;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2020-06-30 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_20M06 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_20M07;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_20M07', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_20M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_20M07;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_20M07;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2020-07-31 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_20M07 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_20M08;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_20M08', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_20M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_20M08;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_20M08;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2020-08-31 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_20M08 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_20M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_20M09', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_20M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_20M09;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_20M09;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2020-09-30 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_20M09 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_20M10;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_20M10', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_20M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_20M10;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_20M10;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2020-10-31 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_20M10 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_20M11;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_20M11', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_20M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_20M11;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_20M11;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2020-11-30 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_20M11 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_20M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_20M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_20M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_20M12;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_20M12;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2020-12-31 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_20M12 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_21M01;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_21M01', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_21M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_21M01;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_21M01;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2021-01-31 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_21M01 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_21M02;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_21M02', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_21M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_21M02;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_21M02;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2021-02-28 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_21M02 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_21M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_21M03', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_21M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_21M03;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_21M03;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2021-03-31 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_21M03 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_21M04;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_21M04', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_21M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_21M04;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_21M04;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2021-04-30 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_21M04 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_21M05;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_21M05', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_21M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_21M05;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_21M05;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2021-05-31 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_21M05 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_21M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_21M06', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_21M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_21M06;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_21M06;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2021-06-30 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_21M06 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_21M07;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_21M07', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_21M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_21M07;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_21M07;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2021-07-31 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_21M07 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_21M08;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_21M08', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_21M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_21M08;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_21M08;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2021-08-31 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_21M08 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_21M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_21M09', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_21M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_21M09;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_21M09;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2021-09-30 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_21M09 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_21M10;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_21M10', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_21M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_21M10;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_21M10;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2021-10-31 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_21M10 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_21M11;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_21M11', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_21M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_21M11;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_21M11;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2021-11-30 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_21M11 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_21M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_21M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_21M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_21M12;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_21M12;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2021-12-31 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_21M12 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_22M01;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_22M01', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_22M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_22M01;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_22M01;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2022-01-31 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_22M01 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_22M02;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_22M02', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_22M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_22M02;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_22M02;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2022-02-28 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_22M02 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_22M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_22M03', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_22M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_22M03;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_22M03;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2022-03-31 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_22M03 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_22M04;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_22M04', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_22M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_22M04;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_22M04;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2022-04-30 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_22M04 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_22M05;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_22M05', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_22M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_22M05;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_22M05;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2022-05-31 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_22M05 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_22M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_22M06', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_22M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_22M06;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_22M06;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2022-06-30 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_22M06 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_22M07;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_22M07', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_22M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_22M07;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_22M07;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2022-07-31 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_22M07 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_22M08;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_22M08', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_22M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_22M08;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_22M08;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2022-08-31 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_22M08 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_22M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_22M09', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_22M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_22M09;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_22M09;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2022-09-30 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_22M09 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_22M10;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_22M10', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_22M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_22M10;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_22M10;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2022-10-31 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_22M10 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_22M11;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_22M11', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_22M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_22M11;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_22M11;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2022-11-30 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_22M11 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptWinlostbyLeague_22M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptWinlostbyLeague_22M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptWinlostbyLeague\rptWinlostbyLeague_22M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptWinlostbyLeague_22M12;
ALTER PARTITION SCHEME ps_rptWinlostbyLeague_monthly NEXT USED rptWinlostbyLeague_22M12;
ALTER PARTITION FUNCTION pf_rptWinlostbyLeague_monthly() SPLIT RANGE (N'2022-12-31 23:59:00.000');
RAISERROR('Added rptWinlostbyLeague_22M12 into ps_rptWinlostbyLeague_monthly', 0, 0) WITH NOWAIT;
 
-------------------------
-- END ps_rptWinlostbyLeague_monthly
-------------------------


-------------------------
-- ps_rptCustomerActive_monthly
-------------------------

ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_19M01;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_19M01', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_19M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_19M01;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_19M01;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2019-01-31 00:00:00.000');
RAISERROR('Added rptCustomerActive_19M01 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_19M02;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_19M02', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_19M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_19M02;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_19M02;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2019-02-28 00:00:00.000');
RAISERROR('Added rptCustomerActive_19M02 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_19M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_19M03', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_19M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_19M03;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_19M03;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2019-03-31 00:00:00.000');
RAISERROR('Added rptCustomerActive_19M03 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_19M04;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_19M04', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_19M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_19M04;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_19M04;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2019-04-30 00:00:00.000');
RAISERROR('Added rptCustomerActive_19M04 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_19M05;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_19M05', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_19M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_19M05;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_19M05;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2019-05-31 00:00:00.000');
RAISERROR('Added rptCustomerActive_19M05 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_19M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_19M06', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_19M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_19M06;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_19M06;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2019-06-30 00:00:00.000');
RAISERROR('Added rptCustomerActive_19M06 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_19M07;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_19M07', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_19M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_19M07;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_19M07;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2019-07-31 00:00:00.000');
RAISERROR('Added rptCustomerActive_19M07 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_19M08;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_19M08', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_19M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_19M08;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_19M08;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2019-08-31 00:00:00.000');
RAISERROR('Added rptCustomerActive_19M08 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_19M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_19M09', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_19M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_19M09;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_19M09;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2019-09-30 00:00:00.000');
RAISERROR('Added rptCustomerActive_19M09 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_19M10;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_19M10', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_19M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_19M10;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_19M10;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2019-10-31 00:00:00.000');
RAISERROR('Added rptCustomerActive_19M10 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_19M11;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_19M11', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_19M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_19M11;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_19M11;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2019-11-30 00:00:00.000');
RAISERROR('Added rptCustomerActive_19M11 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_19M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_19M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_19M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_19M12;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_19M12;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2019-12-31 00:00:00.000');
RAISERROR('Added rptCustomerActive_19M12 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_20M01;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_20M01', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_20M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_20M01;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_20M01;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2020-01-31 00:00:00.000');
RAISERROR('Added rptCustomerActive_20M01 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_20M02;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_20M02', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_20M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_20M02;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_20M02;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2020-02-29 00:00:00.000');
RAISERROR('Added rptCustomerActive_20M02 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_20M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_20M03', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_20M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_20M03;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_20M03;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2020-03-31 00:00:00.000');
RAISERROR('Added rptCustomerActive_20M03 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_20M04;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_20M04', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_20M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_20M04;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_20M04;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2020-04-30 00:00:00.000');
RAISERROR('Added rptCustomerActive_20M04 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_20M05;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_20M05', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_20M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_20M05;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_20M05;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2020-05-31 00:00:00.000');
RAISERROR('Added rptCustomerActive_20M05 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_20M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_20M06', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_20M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_20M06;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_20M06;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2020-06-30 00:00:00.000');
RAISERROR('Added rptCustomerActive_20M06 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_20M07;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_20M07', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_20M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_20M07;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_20M07;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2020-07-31 00:00:00.000');
RAISERROR('Added rptCustomerActive_20M07 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_20M08;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_20M08', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_20M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_20M08;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_20M08;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2020-08-31 00:00:00.000');
RAISERROR('Added rptCustomerActive_20M08 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_20M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_20M09', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_20M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_20M09;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_20M09;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2020-09-30 00:00:00.000');
RAISERROR('Added rptCustomerActive_20M09 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_20M10;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_20M10', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_20M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_20M10;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_20M10;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2020-10-31 00:00:00.000');
RAISERROR('Added rptCustomerActive_20M10 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_20M11;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_20M11', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_20M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_20M11;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_20M11;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2020-11-30 00:00:00.000');
RAISERROR('Added rptCustomerActive_20M11 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_20M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_20M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_20M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_20M12;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_20M12;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2020-12-31 00:00:00.000');
RAISERROR('Added rptCustomerActive_20M12 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_21M01;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_21M01', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_21M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_21M01;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_21M01;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2021-01-31 00:00:00.000');
RAISERROR('Added rptCustomerActive_21M01 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_21M02;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_21M02', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_21M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_21M02;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_21M02;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2021-02-28 00:00:00.000');
RAISERROR('Added rptCustomerActive_21M02 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_21M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_21M03', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_21M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_21M03;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_21M03;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2021-03-31 00:00:00.000');
RAISERROR('Added rptCustomerActive_21M03 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_21M04;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_21M04', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_21M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_21M04;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_21M04;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2021-04-30 00:00:00.000');
RAISERROR('Added rptCustomerActive_21M04 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_21M05;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_21M05', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_21M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_21M05;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_21M05;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2021-05-31 00:00:00.000');
RAISERROR('Added rptCustomerActive_21M05 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_21M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_21M06', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_21M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_21M06;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_21M06;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2021-06-30 00:00:00.000');
RAISERROR('Added rptCustomerActive_21M06 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_21M07;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_21M07', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_21M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_21M07;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_21M07;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2021-07-31 00:00:00.000');
RAISERROR('Added rptCustomerActive_21M07 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_21M08;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_21M08', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_21M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_21M08;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_21M08;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2021-08-31 00:00:00.000');
RAISERROR('Added rptCustomerActive_21M08 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_21M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_21M09', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_21M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_21M09;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_21M09;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2021-09-30 00:00:00.000');
RAISERROR('Added rptCustomerActive_21M09 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_21M10;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_21M10', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_21M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_21M10;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_21M10;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2021-10-31 00:00:00.000');
RAISERROR('Added rptCustomerActive_21M10 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_21M11;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_21M11', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_21M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_21M11;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_21M11;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2021-11-30 00:00:00.000');
RAISERROR('Added rptCustomerActive_21M11 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_21M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_21M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_21M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_21M12;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_21M12;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2021-12-31 00:00:00.000');
RAISERROR('Added rptCustomerActive_21M12 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_22M01;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_22M01', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_22M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_22M01;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_22M01;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2022-01-31 00:00:00.000');
RAISERROR('Added rptCustomerActive_22M01 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_22M02;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_22M02', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_22M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_22M02;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_22M02;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2022-02-28 00:00:00.000');
RAISERROR('Added rptCustomerActive_22M02 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_22M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_22M03', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_22M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_22M03;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_22M03;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2022-03-31 00:00:00.000');
RAISERROR('Added rptCustomerActive_22M03 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_22M04;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_22M04', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_22M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_22M04;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_22M04;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2022-04-30 00:00:00.000');
RAISERROR('Added rptCustomerActive_22M04 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_22M05;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_22M05', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_22M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_22M05;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_22M05;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2022-05-31 00:00:00.000');
RAISERROR('Added rptCustomerActive_22M05 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_22M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_22M06', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_22M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_22M06;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_22M06;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2022-06-30 00:00:00.000');
RAISERROR('Added rptCustomerActive_22M06 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_22M07;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_22M07', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_22M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_22M07;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_22M07;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2022-07-31 00:00:00.000');
RAISERROR('Added rptCustomerActive_22M07 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_22M08;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_22M08', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_22M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_22M08;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_22M08;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2022-08-31 00:00:00.000');
RAISERROR('Added rptCustomerActive_22M08 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_22M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_22M09', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_22M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_22M09;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_22M09;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2022-09-30 00:00:00.000');
RAISERROR('Added rptCustomerActive_22M09 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_22M10;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_22M10', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_22M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_22M10;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_22M10;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2022-10-31 00:00:00.000');
RAISERROR('Added rptCustomerActive_22M10 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_22M11;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_22M11', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_22M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_22M11;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_22M11;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2022-11-30 00:00:00.000');
RAISERROR('Added rptCustomerActive_22M11 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptCustomerActive_22M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptCustomerActive_22M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptCustomerActive\rptCustomerActive_22M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptCustomerActive_22M12;
ALTER PARTITION SCHEME ps_rptCustomerActive_monthly NEXT USED rptCustomerActive_22M12;
ALTER PARTITION FUNCTION pf_rptCustomerActive_monthly() SPLIT RANGE (N'2022-12-31 00:00:00.000');
RAISERROR('Added rptCustomerActive_22M12 into ps_rptCustomerActive_monthly', 0, 0) WITH NOWAIT;
 
-------------------------
-- END ps_rptCustomerActive_monthly
-------------------------


-------------------------
-- ps_rptLicWLGMT_monthly
-------------------------

ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_19M01;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_19M01', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_19M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_19M01;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_19M01;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2019-01-31 23:59:00.000');
RAISERROR('Added rptLicWLGMT_19M01 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_19M02;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_19M02', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_19M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_19M02;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_19M02;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2019-02-28 23:59:00.000');
RAISERROR('Added rptLicWLGMT_19M02 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_19M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_19M03', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_19M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_19M03;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_19M03;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2019-03-31 23:59:00.000');
RAISERROR('Added rptLicWLGMT_19M03 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_19M04;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_19M04', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_19M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_19M04;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_19M04;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2019-04-30 23:59:00.000');
RAISERROR('Added rptLicWLGMT_19M04 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_19M05;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_19M05', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_19M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_19M05;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_19M05;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2019-05-31 23:59:00.000');
RAISERROR('Added rptLicWLGMT_19M05 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_19M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_19M06', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_19M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_19M06;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_19M06;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2019-06-30 23:59:00.000');
RAISERROR('Added rptLicWLGMT_19M06 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_19M07;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_19M07', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_19M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_19M07;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_19M07;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2019-07-31 23:59:00.000');
RAISERROR('Added rptLicWLGMT_19M07 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_19M08;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_19M08', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_19M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_19M08;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_19M08;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2019-08-31 23:59:00.000');
RAISERROR('Added rptLicWLGMT_19M08 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_19M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_19M09', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_19M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_19M09;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_19M09;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2019-09-30 23:59:00.000');
RAISERROR('Added rptLicWLGMT_19M09 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_19M10;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_19M10', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_19M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_19M10;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_19M10;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2019-10-31 23:59:00.000');
RAISERROR('Added rptLicWLGMT_19M10 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_19M11;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_19M11', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_19M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_19M11;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_19M11;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2019-11-30 23:59:00.000');
RAISERROR('Added rptLicWLGMT_19M11 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_19M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_19M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_19M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_19M12;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_19M12;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2019-12-31 23:59:00.000');
RAISERROR('Added rptLicWLGMT_19M12 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_20M01;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_20M01', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_20M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_20M01;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_20M01;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2020-01-31 23:59:00.000');
RAISERROR('Added rptLicWLGMT_20M01 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_20M02;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_20M02', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_20M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_20M02;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_20M02;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2020-02-29 23:59:00.000');
RAISERROR('Added rptLicWLGMT_20M02 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_20M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_20M03', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_20M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_20M03;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_20M03;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2020-03-31 23:59:00.000');
RAISERROR('Added rptLicWLGMT_20M03 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_20M04;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_20M04', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_20M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_20M04;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_20M04;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2020-04-30 23:59:00.000');
RAISERROR('Added rptLicWLGMT_20M04 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_20M05;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_20M05', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_20M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_20M05;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_20M05;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2020-05-31 23:59:00.000');
RAISERROR('Added rptLicWLGMT_20M05 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_20M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_20M06', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_20M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_20M06;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_20M06;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2020-06-30 23:59:00.000');
RAISERROR('Added rptLicWLGMT_20M06 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_20M07;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_20M07', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_20M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_20M07;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_20M07;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2020-07-31 23:59:00.000');
RAISERROR('Added rptLicWLGMT_20M07 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_20M08;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_20M08', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_20M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_20M08;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_20M08;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2020-08-31 23:59:00.000');
RAISERROR('Added rptLicWLGMT_20M08 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_20M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_20M09', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_20M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_20M09;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_20M09;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2020-09-30 23:59:00.000');
RAISERROR('Added rptLicWLGMT_20M09 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_20M10;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_20M10', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_20M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_20M10;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_20M10;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2020-10-31 23:59:00.000');
RAISERROR('Added rptLicWLGMT_20M10 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_20M11;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_20M11', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_20M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_20M11;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_20M11;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2020-11-30 23:59:00.000');
RAISERROR('Added rptLicWLGMT_20M11 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_20M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_20M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_20M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_20M12;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_20M12;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2020-12-31 23:59:00.000');
RAISERROR('Added rptLicWLGMT_20M12 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_21M01;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_21M01', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_21M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_21M01;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_21M01;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2021-01-31 23:59:00.000');
RAISERROR('Added rptLicWLGMT_21M01 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_21M02;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_21M02', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_21M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_21M02;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_21M02;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2021-02-28 23:59:00.000');
RAISERROR('Added rptLicWLGMT_21M02 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_21M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_21M03', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_21M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_21M03;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_21M03;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2021-03-31 23:59:00.000');
RAISERROR('Added rptLicWLGMT_21M03 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_21M04;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_21M04', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_21M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_21M04;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_21M04;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2021-04-30 23:59:00.000');
RAISERROR('Added rptLicWLGMT_21M04 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_21M05;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_21M05', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_21M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_21M05;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_21M05;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2021-05-31 23:59:00.000');
RAISERROR('Added rptLicWLGMT_21M05 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_21M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_21M06', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_21M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_21M06;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_21M06;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2021-06-30 23:59:00.000');
RAISERROR('Added rptLicWLGMT_21M06 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_21M07;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_21M07', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_21M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_21M07;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_21M07;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2021-07-31 23:59:00.000');
RAISERROR('Added rptLicWLGMT_21M07 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_21M08;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_21M08', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_21M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_21M08;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_21M08;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2021-08-31 23:59:00.000');
RAISERROR('Added rptLicWLGMT_21M08 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_21M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_21M09', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_21M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_21M09;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_21M09;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2021-09-30 23:59:00.000');
RAISERROR('Added rptLicWLGMT_21M09 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_21M10;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_21M10', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_21M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_21M10;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_21M10;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2021-10-31 23:59:00.000');
RAISERROR('Added rptLicWLGMT_21M10 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_21M11;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_21M11', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_21M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_21M11;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_21M11;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2021-11-30 23:59:00.000');
RAISERROR('Added rptLicWLGMT_21M11 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_21M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_21M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_21M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_21M12;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_21M12;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2021-12-31 23:59:00.000');
RAISERROR('Added rptLicWLGMT_21M12 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_22M01;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_22M01', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_22M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_22M01;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_22M01;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2022-01-31 23:59:00.000');
RAISERROR('Added rptLicWLGMT_22M01 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_22M02;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_22M02', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_22M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_22M02;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_22M02;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2022-02-28 23:59:00.000');
RAISERROR('Added rptLicWLGMT_22M02 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_22M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_22M03', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_22M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_22M03;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_22M03;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2022-03-31 23:59:00.000');
RAISERROR('Added rptLicWLGMT_22M03 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_22M04;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_22M04', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_22M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_22M04;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_22M04;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2022-04-30 23:59:00.000');
RAISERROR('Added rptLicWLGMT_22M04 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_22M05;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_22M05', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_22M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_22M05;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_22M05;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2022-05-31 23:59:00.000');
RAISERROR('Added rptLicWLGMT_22M05 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_22M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_22M06', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_22M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_22M06;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_22M06;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2022-06-30 23:59:00.000');
RAISERROR('Added rptLicWLGMT_22M06 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_22M07;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_22M07', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_22M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_22M07;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_22M07;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2022-07-31 23:59:00.000');
RAISERROR('Added rptLicWLGMT_22M07 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_22M08;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_22M08', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_22M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_22M08;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_22M08;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2022-08-31 23:59:00.000');
RAISERROR('Added rptLicWLGMT_22M08 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_22M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_22M09', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_22M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_22M09;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_22M09;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2022-09-30 23:59:00.000');
RAISERROR('Added rptLicWLGMT_22M09 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_22M10;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_22M10', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_22M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_22M10;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_22M10;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2022-10-31 23:59:00.000');
RAISERROR('Added rptLicWLGMT_22M10 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_22M11;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_22M11', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_22M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_22M11;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_22M11;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2022-11-30 23:59:00.000');
RAISERROR('Added rptLicWLGMT_22M11 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicWLGMT_22M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicWLGMT_22M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicWinlossGMT\rptLicWLGMT_22M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicWLGMT_22M12;
ALTER PARTITION SCHEME ps_rptLicWLGMT_monthly NEXT USED rptLicWLGMT_22M12;
ALTER PARTITION FUNCTION pf_rptLicWLGMT_monthly() SPLIT RANGE (N'2022-12-31 23:59:00.000');
RAISERROR('Added rptLicWLGMT_22M12 into ps_rptLicWLGMT_monthly', 0, 0) WITH NOWAIT;
 
-------------------------
-- END ps_rptLicWLGMT_monthly
-------------------------


-------------------------
-- ps_rptLicIPBetting_monthly_new
-------------------------

ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_19M01_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_19M01_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_19M01_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_19M01_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_19M01_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2019-01-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_19M01_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_19M02_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_19M02_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_19M02_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_19M02_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_19M02_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2019-02-28 23:59:00.000');
RAISERROR('Added rptLicIPBetting_19M02_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_19M03_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_19M03_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_19M03_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_19M03_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_19M03_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2019-03-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_19M03_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_19M04_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_19M04_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_19M04_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_19M04_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_19M04_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2019-04-30 23:59:00.000');
RAISERROR('Added rptLicIPBetting_19M04_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_19M05_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_19M05_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_19M05_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_19M05_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_19M05_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2019-05-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_19M05_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_19M06_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_19M06_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_19M06_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_19M06_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_19M06_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2019-06-30 23:59:00.000');
RAISERROR('Added rptLicIPBetting_19M06_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_19M07_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_19M07_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_19M07_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_19M07_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_19M07_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2019-07-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_19M07_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_19M08_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_19M08_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_19M08_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_19M08_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_19M08_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2019-08-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_19M08_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_19M09_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_19M09_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_19M09_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_19M09_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_19M09_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2019-09-30 23:59:00.000');
RAISERROR('Added rptLicIPBetting_19M09_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_19M10_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_19M10_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_19M10_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_19M10_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_19M10_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2019-10-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_19M10_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_19M11_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_19M11_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_19M11_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_19M11_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_19M11_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2019-11-30 23:59:00.000');
RAISERROR('Added rptLicIPBetting_19M11_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_19M12_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_19M12_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_19M12_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_19M12_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_19M12_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2019-12-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_19M12_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_20M01_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_20M01_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_20M01_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_20M01_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_20M01_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2020-01-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_20M01_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_20M02_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_20M02_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_20M02_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_20M02_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_20M02_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2020-02-29 23:59:00.000');
RAISERROR('Added rptLicIPBetting_20M02_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_20M03_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_20M03_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_20M03_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_20M03_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_20M03_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2020-03-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_20M03_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_20M04_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_20M04_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_20M04_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_20M04_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_20M04_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2020-04-30 23:59:00.000');
RAISERROR('Added rptLicIPBetting_20M04_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_20M05_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_20M05_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_20M05_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_20M05_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_20M05_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2020-05-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_20M05_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_20M06_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_20M06_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_20M06_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_20M06_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_20M06_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2020-06-30 23:59:00.000');
RAISERROR('Added rptLicIPBetting_20M06_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_20M07_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_20M07_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_20M07_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_20M07_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_20M07_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2020-07-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_20M07_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_20M08_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_20M08_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_20M08_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_20M08_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_20M08_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2020-08-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_20M08_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_20M09_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_20M09_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_20M09_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_20M09_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_20M09_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2020-09-30 23:59:00.000');
RAISERROR('Added rptLicIPBetting_20M09_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_20M10_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_20M10_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_20M10_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_20M10_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_20M10_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2020-10-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_20M10_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_20M11_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_20M11_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_20M11_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_20M11_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_20M11_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2020-11-30 23:59:00.000');
RAISERROR('Added rptLicIPBetting_20M11_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_20M12_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_20M12_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_20M12_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_20M12_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_20M12_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2020-12-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_20M12_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_21M01_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_21M01_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_21M01_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_21M01_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_21M01_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2021-01-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_21M01_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_21M02_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_21M02_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_21M02_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_21M02_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_21M02_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2021-02-28 23:59:00.000');
RAISERROR('Added rptLicIPBetting_21M02_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_21M03_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_21M03_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_21M03_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_21M03_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_21M03_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2021-03-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_21M03_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_21M04_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_21M04_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_21M04_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_21M04_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_21M04_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2021-04-30 23:59:00.000');
RAISERROR('Added rptLicIPBetting_21M04_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_21M05_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_21M05_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_21M05_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_21M05_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_21M05_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2021-05-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_21M05_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_21M06_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_21M06_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_21M06_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_21M06_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_21M06_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2021-06-30 23:59:00.000');
RAISERROR('Added rptLicIPBetting_21M06_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_21M07_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_21M07_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_21M07_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_21M07_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_21M07_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2021-07-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_21M07_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_21M08_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_21M08_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_21M08_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_21M08_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_21M08_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2021-08-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_21M08_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_21M09_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_21M09_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_21M09_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_21M09_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_21M09_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2021-09-30 23:59:00.000');
RAISERROR('Added rptLicIPBetting_21M09_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_21M10_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_21M10_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_21M10_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_21M10_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_21M10_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2021-10-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_21M10_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_21M11_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_21M11_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_21M11_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_21M11_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_21M11_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2021-11-30 23:59:00.000');
RAISERROR('Added rptLicIPBetting_21M11_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_21M12_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_21M12_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_21M12_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_21M12_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_21M12_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2021-12-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_21M12_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_22M01_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_22M01_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_22M01_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_22M01_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_22M01_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2022-01-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_22M01_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_22M02_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_22M02_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_22M02_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_22M02_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_22M02_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2022-02-28 23:59:00.000');
RAISERROR('Added rptLicIPBetting_22M02_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_22M03_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_22M03_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_22M03_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_22M03_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_22M03_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2022-03-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_22M03_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_22M04_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_22M04_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_22M04_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_22M04_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_22M04_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2022-04-30 23:59:00.000');
RAISERROR('Added rptLicIPBetting_22M04_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_22M05_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_22M05_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_22M05_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_22M05_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_22M05_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2022-05-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_22M05_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_22M06_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_22M06_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_22M06_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_22M06_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_22M06_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2022-06-30 23:59:00.000');
RAISERROR('Added rptLicIPBetting_22M06_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_22M07_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_22M07_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_22M07_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_22M07_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_22M07_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2022-07-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_22M07_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_22M08_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_22M08_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_22M08_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_22M08_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_22M08_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2022-08-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_22M08_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_22M09_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_22M09_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_22M09_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_22M09_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_22M09_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2022-09-30 23:59:00.000');
RAISERROR('Added rptLicIPBetting_22M09_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_22M10_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_22M10_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_22M10_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_22M10_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_22M10_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2022-10-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_22M10_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_22M11_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_22M11_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_22M11_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_22M11_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_22M11_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2022-11-30 23:59:00.000');
RAISERROR('Added rptLicIPBetting_22M11_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_22M12_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_22M12_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_22M12_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_22M12_new;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly_new NEXT USED rptLicIPBetting_22M12_new;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly_new() SPLIT RANGE (N'2022-12-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_22M12_new into ps_rptLicIPBetting_monthly_new', 0, 0) WITH NOWAIT;
 
-------------------------
-- END ps_rptLicIPBetting_monthly_new
-------------------------


-------------------------
-- ps_rptBetting_monthly
-------------------------

ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_19M01;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_19M01', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_Betting\rptBetting_19M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_19M01;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_19M01;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2019-01-31 23:59:00.000');
RAISERROR('Added rptBetting_19M01 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_19M02;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_19M02', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_Betting\rptBetting_19M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_19M02;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_19M02;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2019-02-28 23:59:00.000');
RAISERROR('Added rptBetting_19M02 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_19M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_19M03', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_Betting\rptBetting_19M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_19M03;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_19M03;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2019-03-31 23:59:00.000');
RAISERROR('Added rptBetting_19M03 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_19M04;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_19M04', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_Betting\rptBetting_19M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_19M04;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_19M04;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2019-04-30 23:59:00.000');
RAISERROR('Added rptBetting_19M04 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_19M05;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_19M05', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_Betting\rptBetting_19M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_19M05;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_19M05;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2019-05-31 23:59:00.000');
RAISERROR('Added rptBetting_19M05 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_19M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_19M06', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_Betting\rptBetting_19M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_19M06;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_19M06;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2019-06-30 23:59:00.000');
RAISERROR('Added rptBetting_19M06 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_19M07;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_19M07', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_Betting\rptBetting_19M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_19M07;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_19M07;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2019-07-31 23:59:00.000');
RAISERROR('Added rptBetting_19M07 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_19M08;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_19M08', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_Betting\rptBetting_19M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_19M08;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_19M08;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2019-08-31 23:59:00.000');
RAISERROR('Added rptBetting_19M08 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_19M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_19M09', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_Betting\rptBetting_19M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_19M09;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_19M09;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2019-09-30 23:59:00.000');
RAISERROR('Added rptBetting_19M09 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_19M10;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_19M10', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_Betting\rptBetting_19M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_19M10;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_19M10;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2019-10-31 23:59:00.000');
RAISERROR('Added rptBetting_19M10 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_19M11;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_19M11', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_Betting\rptBetting_19M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_19M11;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_19M11;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2019-11-30 23:59:00.000');
RAISERROR('Added rptBetting_19M11 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_19M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_19M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_Betting\rptBetting_19M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_19M12;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_19M12;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2019-12-31 23:59:00.000');
RAISERROR('Added rptBetting_19M12 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_20M01;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_20M01', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_Betting\rptBetting_20M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_20M01;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_20M01;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2020-01-31 23:59:00.000');
RAISERROR('Added rptBetting_20M01 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_20M02;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_20M02', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_Betting\rptBetting_20M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_20M02;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_20M02;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2020-02-29 23:59:00.000');
RAISERROR('Added rptBetting_20M02 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_20M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_20M03', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_Betting\rptBetting_20M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_20M03;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_20M03;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2020-03-31 23:59:00.000');
RAISERROR('Added rptBetting_20M03 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_20M04;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_20M04', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_Betting\rptBetting_20M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_20M04;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_20M04;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2020-04-30 23:59:00.000');
RAISERROR('Added rptBetting_20M04 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_20M05;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_20M05', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_Betting\rptBetting_20M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_20M05;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_20M05;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2020-05-31 23:59:00.000');
RAISERROR('Added rptBetting_20M05 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_20M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_20M06', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_Betting\rptBetting_20M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_20M06;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_20M06;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2020-06-30 23:59:00.000');
RAISERROR('Added rptBetting_20M06 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_20M07;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_20M07', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_Betting\rptBetting_20M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_20M07;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_20M07;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2020-07-31 23:59:00.000');
RAISERROR('Added rptBetting_20M07 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_20M08;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_20M08', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_Betting\rptBetting_20M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_20M08;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_20M08;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2020-08-31 23:59:00.000');
RAISERROR('Added rptBetting_20M08 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_20M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_20M09', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_Betting\rptBetting_20M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_20M09;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_20M09;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2020-09-30 23:59:00.000');
RAISERROR('Added rptBetting_20M09 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_20M10;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_20M10', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_Betting\rptBetting_20M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_20M10;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_20M10;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2020-10-31 23:59:00.000');
RAISERROR('Added rptBetting_20M10 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_20M11;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_20M11', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_Betting\rptBetting_20M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_20M11;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_20M11;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2020-11-30 23:59:00.000');
RAISERROR('Added rptBetting_20M11 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_20M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_20M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_Betting\rptBetting_20M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_20M12;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_20M12;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2020-12-31 23:59:00.000');
RAISERROR('Added rptBetting_20M12 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_21M01;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_21M01', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_Betting\rptBetting_21M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_21M01;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_21M01;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2021-01-31 23:59:00.000');
RAISERROR('Added rptBetting_21M01 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_21M02;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_21M02', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_Betting\rptBetting_21M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_21M02;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_21M02;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2021-02-28 23:59:00.000');
RAISERROR('Added rptBetting_21M02 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_21M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_21M03', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_Betting\rptBetting_21M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_21M03;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_21M03;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2021-03-31 23:59:00.000');
RAISERROR('Added rptBetting_21M03 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_21M04;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_21M04', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_Betting\rptBetting_21M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_21M04;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_21M04;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2021-04-30 23:59:00.000');
RAISERROR('Added rptBetting_21M04 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_21M05;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_21M05', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_Betting\rptBetting_21M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_21M05;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_21M05;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2021-05-31 23:59:00.000');
RAISERROR('Added rptBetting_21M05 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_21M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_21M06', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_Betting\rptBetting_21M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_21M06;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_21M06;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2021-06-30 23:59:00.000');
RAISERROR('Added rptBetting_21M06 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_21M07;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_21M07', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_Betting\rptBetting_21M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_21M07;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_21M07;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2021-07-31 23:59:00.000');
RAISERROR('Added rptBetting_21M07 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_21M08;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_21M08', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_Betting\rptBetting_21M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_21M08;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_21M08;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2021-08-31 23:59:00.000');
RAISERROR('Added rptBetting_21M08 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_21M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_21M09', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_Betting\rptBetting_21M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_21M09;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_21M09;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2021-09-30 23:59:00.000');
RAISERROR('Added rptBetting_21M09 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_21M10;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_21M10', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_Betting\rptBetting_21M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_21M10;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_21M10;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2021-10-31 23:59:00.000');
RAISERROR('Added rptBetting_21M10 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_21M11;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_21M11', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_Betting\rptBetting_21M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_21M11;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_21M11;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2021-11-30 23:59:00.000');
RAISERROR('Added rptBetting_21M11 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_21M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_21M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_Betting\rptBetting_21M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_21M12;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_21M12;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2021-12-31 23:59:00.000');
RAISERROR('Added rptBetting_21M12 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_22M01;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_22M01', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_Betting\rptBetting_22M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_22M01;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_22M01;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2022-01-31 23:59:00.000');
RAISERROR('Added rptBetting_22M01 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_22M02;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_22M02', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_Betting\rptBetting_22M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_22M02;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_22M02;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2022-02-28 23:59:00.000');
RAISERROR('Added rptBetting_22M02 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_22M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_22M03', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_Betting\rptBetting_22M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_22M03;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_22M03;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2022-03-31 23:59:00.000');
RAISERROR('Added rptBetting_22M03 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_22M04;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_22M04', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_Betting\rptBetting_22M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_22M04;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_22M04;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2022-04-30 23:59:00.000');
RAISERROR('Added rptBetting_22M04 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_22M05;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_22M05', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_Betting\rptBetting_22M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_22M05;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_22M05;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2022-05-31 23:59:00.000');
RAISERROR('Added rptBetting_22M05 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_22M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_22M06', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_Betting\rptBetting_22M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_22M06;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_22M06;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2022-06-30 23:59:00.000');
RAISERROR('Added rptBetting_22M06 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_22M07;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_22M07', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_Betting\rptBetting_22M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_22M07;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_22M07;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2022-07-31 23:59:00.000');
RAISERROR('Added rptBetting_22M07 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_22M08;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_22M08', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_Betting\rptBetting_22M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_22M08;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_22M08;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2022-08-31 23:59:00.000');
RAISERROR('Added rptBetting_22M08 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_22M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_22M09', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_Betting\rptBetting_22M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_22M09;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_22M09;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2022-09-30 23:59:00.000');
RAISERROR('Added rptBetting_22M09 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_22M10;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_22M10', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_Betting\rptBetting_22M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_22M10;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_22M10;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2022-10-31 23:59:00.000');
RAISERROR('Added rptBetting_22M10 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_22M11;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_22M11', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_Betting\rptBetting_22M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_22M11;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_22M11;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2022-11-30 23:59:00.000');
RAISERROR('Added rptBetting_22M11 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_22M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_22M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_Betting\rptBetting_22M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_22M12;
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_22M12;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2022-12-31 23:59:00.000');
RAISERROR('Added rptBetting_22M12 into ps_rptBetting_monthly', 0, 0) WITH NOWAIT;
 
-------------------------
-- END ps_rptBetting_monthly
-------------------------


-------------------------
-- ps_rptLicIPBetting_monthly
-------------------------

ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_19M01;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_19M01', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_19M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_19M01;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_19M01;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2019-01-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_19M01 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_19M02;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_19M02', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_19M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_19M02;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_19M02;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2019-02-28 23:59:00.000');
RAISERROR('Added rptLicIPBetting_19M02 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_19M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_19M03', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_19M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_19M03;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_19M03;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2019-03-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_19M03 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_19M04;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_19M04', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_19M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_19M04;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_19M04;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2019-04-30 23:59:00.000');
RAISERROR('Added rptLicIPBetting_19M04 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_19M05;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_19M05', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_19M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_19M05;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_19M05;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2019-05-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_19M05 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_19M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_19M06', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_19M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_19M06;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_19M06;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2019-06-30 23:59:00.000');
RAISERROR('Added rptLicIPBetting_19M06 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_19M07;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_19M07', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_19M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_19M07;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_19M07;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2019-07-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_19M07 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_19M08;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_19M08', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_19M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_19M08;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_19M08;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2019-08-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_19M08 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_19M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_19M09', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_19M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_19M09;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_19M09;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2019-09-30 23:59:00.000');
RAISERROR('Added rptLicIPBetting_19M09 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_19M10;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_19M10', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_19M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_19M10;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_19M10;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2019-10-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_19M10 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_19M11;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_19M11', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_19M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_19M11;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_19M11;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2019-11-30 23:59:00.000');
RAISERROR('Added rptLicIPBetting_19M11 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_19M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_19M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_19M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_19M12;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_19M12;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2019-12-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_19M12 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_20M01;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_20M01', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_20M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_20M01;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_20M01;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2020-01-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_20M01 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_20M02;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_20M02', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_20M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_20M02;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_20M02;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2020-02-29 23:59:00.000');
RAISERROR('Added rptLicIPBetting_20M02 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_20M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_20M03', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_20M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_20M03;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_20M03;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2020-03-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_20M03 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_20M04;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_20M04', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_20M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_20M04;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_20M04;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2020-04-30 23:59:00.000');
RAISERROR('Added rptLicIPBetting_20M04 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_20M05;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_20M05', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_20M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_20M05;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_20M05;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2020-05-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_20M05 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_20M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_20M06', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_20M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_20M06;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_20M06;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2020-06-30 23:59:00.000');
RAISERROR('Added rptLicIPBetting_20M06 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_20M07;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_20M07', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_20M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_20M07;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_20M07;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2020-07-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_20M07 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_20M08;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_20M08', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_20M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_20M08;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_20M08;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2020-08-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_20M08 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_20M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_20M09', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_20M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_20M09;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_20M09;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2020-09-30 23:59:00.000');
RAISERROR('Added rptLicIPBetting_20M09 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_20M10;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_20M10', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_20M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_20M10;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_20M10;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2020-10-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_20M10 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_20M11;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_20M11', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_20M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_20M11;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_20M11;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2020-11-30 23:59:00.000');
RAISERROR('Added rptLicIPBetting_20M11 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_20M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_20M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_20M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_20M12;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_20M12;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2020-12-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_20M12 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_21M01;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_21M01', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_21M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_21M01;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_21M01;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2021-01-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_21M01 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_21M02;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_21M02', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_21M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_21M02;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_21M02;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2021-02-28 23:59:00.000');
RAISERROR('Added rptLicIPBetting_21M02 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_21M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_21M03', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_21M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_21M03;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_21M03;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2021-03-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_21M03 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_21M04;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_21M04', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_21M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_21M04;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_21M04;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2021-04-30 23:59:00.000');
RAISERROR('Added rptLicIPBetting_21M04 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_21M05;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_21M05', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_21M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_21M05;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_21M05;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2021-05-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_21M05 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_21M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_21M06', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_21M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_21M06;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_21M06;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2021-06-30 23:59:00.000');
RAISERROR('Added rptLicIPBetting_21M06 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_21M07;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_21M07', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_21M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_21M07;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_21M07;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2021-07-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_21M07 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_21M08;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_21M08', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_21M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_21M08;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_21M08;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2021-08-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_21M08 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_21M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_21M09', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_21M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_21M09;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_21M09;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2021-09-30 23:59:00.000');
RAISERROR('Added rptLicIPBetting_21M09 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_21M10;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_21M10', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_21M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_21M10;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_21M10;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2021-10-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_21M10 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_21M11;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_21M11', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_21M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_21M11;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_21M11;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2021-11-30 23:59:00.000');
RAISERROR('Added rptLicIPBetting_21M11 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_21M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_21M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_21M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_21M12;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_21M12;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2021-12-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_21M12 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_22M01;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_22M01', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_22M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_22M01;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_22M01;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2022-01-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_22M01 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_22M02;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_22M02', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_22M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_22M02;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_22M02;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2022-02-28 23:59:00.000');
RAISERROR('Added rptLicIPBetting_22M02 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_22M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_22M03', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_22M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_22M03;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_22M03;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2022-03-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_22M03 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_22M04;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_22M04', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_22M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_22M04;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_22M04;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2022-04-30 23:59:00.000');
RAISERROR('Added rptLicIPBetting_22M04 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_22M05;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_22M05', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_22M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_22M05;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_22M05;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2022-05-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_22M05 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_22M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_22M06', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_22M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_22M06;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_22M06;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2022-06-30 23:59:00.000');
RAISERROR('Added rptLicIPBetting_22M06 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_22M07;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_22M07', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_22M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_22M07;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_22M07;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2022-07-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_22M07 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_22M08;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_22M08', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_22M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_22M08;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_22M08;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2022-08-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_22M08 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_22M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_22M09', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_22M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_22M09;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_22M09;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2022-09-30 23:59:00.000');
RAISERROR('Added rptLicIPBetting_22M09 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_22M10;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_22M10', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_22M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_22M10;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_22M10;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2022-10-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_22M10 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_22M11;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_22M11', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptLicIPBetting\rptLicIPBetting_22M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_22M11;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_22M11;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2022-11-30 23:59:00.000');
RAISERROR('Added rptLicIPBetting_22M11 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicIPBetting_22M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicIPBetting_22M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptLicIPBetting\rptLicIPBetting_22M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicIPBetting_22M12;
ALTER PARTITION SCHEME ps_rptLicIPBetting_monthly NEXT USED rptLicIPBetting_22M12;
ALTER PARTITION FUNCTION pf_rptLicIPBetting_monthly() SPLIT RANGE (N'2022-12-31 23:59:00.000');
RAISERROR('Added rptLicIPBetting_22M12 into ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
 
-------------------------
-- END ps_rptLicIPBetting_monthly
-------------------------


-------------------------
-- ps_rptLicensee_monthly
-------------------------

ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_19M01;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_19M01', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss2\rptLicensee_19M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_19M01;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_19M01;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2019-01-31 23:59:00.000');
RAISERROR('Added rptLicensee_19M01 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_19M02;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_19M02', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss2\rptLicensee_19M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_19M02;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_19M02;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2019-02-28 23:59:00.000');
RAISERROR('Added rptLicensee_19M02 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_19M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_19M03', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss2\rptLicensee_19M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_19M03;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_19M03;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2019-03-31 23:59:00.000');
RAISERROR('Added rptLicensee_19M03 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_19M04;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_19M04', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss2\rptLicensee_19M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_19M04;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_19M04;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2019-04-30 23:59:00.000');
RAISERROR('Added rptLicensee_19M04 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_19M05;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_19M05', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss2\rptLicensee_19M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_19M05;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_19M05;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2019-05-31 23:59:00.000');
RAISERROR('Added rptLicensee_19M05 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_19M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_19M06', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss2\rptLicensee_19M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_19M06;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_19M06;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2019-06-30 23:59:00.000');
RAISERROR('Added rptLicensee_19M06 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_19M07;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_19M07', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss2\rptLicensee_19M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_19M07;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_19M07;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2019-07-31 23:59:00.000');
RAISERROR('Added rptLicensee_19M07 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_19M08;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_19M08', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss2\rptLicensee_19M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_19M08;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_19M08;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2019-08-31 23:59:00.000');
RAISERROR('Added rptLicensee_19M08 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_19M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_19M09', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss2\rptLicensee_19M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_19M09;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_19M09;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2019-09-30 23:59:00.000');
RAISERROR('Added rptLicensee_19M09 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_19M10;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_19M10', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss2\rptLicensee_19M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_19M10;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_19M10;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2019-10-31 23:59:00.000');
RAISERROR('Added rptLicensee_19M10 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_19M11;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_19M11', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss2\rptLicensee_19M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_19M11;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_19M11;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2019-11-30 23:59:00.000');
RAISERROR('Added rptLicensee_19M11 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_19M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_19M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss2\rptLicensee_19M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_19M12;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_19M12;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2019-12-31 23:59:00.000');
RAISERROR('Added rptLicensee_19M12 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_20M01;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_20M01', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss2\rptLicensee_20M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_20M01;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_20M01;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2020-01-31 23:59:00.000');
RAISERROR('Added rptLicensee_20M01 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_20M02;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_20M02', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss2\rptLicensee_20M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_20M02;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_20M02;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2020-02-29 23:59:00.000');
RAISERROR('Added rptLicensee_20M02 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_20M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_20M03', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss2\rptLicensee_20M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_20M03;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_20M03;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2020-03-31 23:59:00.000');
RAISERROR('Added rptLicensee_20M03 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_20M04;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_20M04', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss2\rptLicensee_20M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_20M04;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_20M04;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2020-04-30 23:59:00.000');
RAISERROR('Added rptLicensee_20M04 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_20M05;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_20M05', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss2\rptLicensee_20M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_20M05;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_20M05;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2020-05-31 23:59:00.000');
RAISERROR('Added rptLicensee_20M05 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_20M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_20M06', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss2\rptLicensee_20M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_20M06;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_20M06;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2020-06-30 23:59:00.000');
RAISERROR('Added rptLicensee_20M06 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_20M07;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_20M07', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss2\rptLicensee_20M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_20M07;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_20M07;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2020-07-31 23:59:00.000');
RAISERROR('Added rptLicensee_20M07 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_20M08;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_20M08', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss2\rptLicensee_20M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_20M08;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_20M08;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2020-08-31 23:59:00.000');
RAISERROR('Added rptLicensee_20M08 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_20M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_20M09', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss2\rptLicensee_20M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_20M09;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_20M09;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2020-09-30 23:59:00.000');
RAISERROR('Added rptLicensee_20M09 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_20M10;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_20M10', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss2\rptLicensee_20M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_20M10;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_20M10;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2020-10-31 23:59:00.000');
RAISERROR('Added rptLicensee_20M10 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_20M11;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_20M11', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss2\rptLicensee_20M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_20M11;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_20M11;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2020-11-30 23:59:00.000');
RAISERROR('Added rptLicensee_20M11 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_20M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_20M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss2\rptLicensee_20M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_20M12;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_20M12;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2020-12-31 23:59:00.000');
RAISERROR('Added rptLicensee_20M12 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_21M01;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_21M01', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss2\rptLicensee_21M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_21M01;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_21M01;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2021-01-31 23:59:00.000');
RAISERROR('Added rptLicensee_21M01 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_21M02;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_21M02', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss2\rptLicensee_21M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_21M02;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_21M02;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2021-02-28 23:59:00.000');
RAISERROR('Added rptLicensee_21M02 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_21M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_21M03', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss2\rptLicensee_21M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_21M03;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_21M03;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2021-03-31 23:59:00.000');
RAISERROR('Added rptLicensee_21M03 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_21M04;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_21M04', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss2\rptLicensee_21M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_21M04;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_21M04;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2021-04-30 23:59:00.000');
RAISERROR('Added rptLicensee_21M04 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_21M05;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_21M05', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss2\rptLicensee_21M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_21M05;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_21M05;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2021-05-31 23:59:00.000');
RAISERROR('Added rptLicensee_21M05 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_21M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_21M06', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss2\rptLicensee_21M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_21M06;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_21M06;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2021-06-30 23:59:00.000');
RAISERROR('Added rptLicensee_21M06 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_21M07;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_21M07', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss2\rptLicensee_21M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_21M07;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_21M07;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2021-07-31 23:59:00.000');
RAISERROR('Added rptLicensee_21M07 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_21M08;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_21M08', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss2\rptLicensee_21M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_21M08;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_21M08;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2021-08-31 23:59:00.000');
RAISERROR('Added rptLicensee_21M08 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_21M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_21M09', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss2\rptLicensee_21M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_21M09;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_21M09;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2021-09-30 23:59:00.000');
RAISERROR('Added rptLicensee_21M09 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_21M10;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_21M10', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss2\rptLicensee_21M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_21M10;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_21M10;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2021-10-31 23:59:00.000');
RAISERROR('Added rptLicensee_21M10 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_21M11;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_21M11', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss2\rptLicensee_21M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_21M11;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_21M11;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2021-11-30 23:59:00.000');
RAISERROR('Added rptLicensee_21M11 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_21M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_21M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss2\rptLicensee_21M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_21M12;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_21M12;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2021-12-31 23:59:00.000');
RAISERROR('Added rptLicensee_21M12 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_22M01;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_22M01', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss2\rptLicensee_22M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_22M01;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_22M01;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2022-01-31 23:59:00.000');
RAISERROR('Added rptLicensee_22M01 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_22M02;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_22M02', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss2\rptLicensee_22M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_22M02;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_22M02;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2022-02-28 23:59:00.000');
RAISERROR('Added rptLicensee_22M02 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_22M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_22M03', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss2\rptLicensee_22M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_22M03;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_22M03;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2022-03-31 23:59:00.000');
RAISERROR('Added rptLicensee_22M03 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_22M04;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_22M04', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss2\rptLicensee_22M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_22M04;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_22M04;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2022-04-30 23:59:00.000');
RAISERROR('Added rptLicensee_22M04 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_22M05;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_22M05', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss2\rptLicensee_22M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_22M05;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_22M05;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2022-05-31 23:59:00.000');
RAISERROR('Added rptLicensee_22M05 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_22M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_22M06', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss2\rptLicensee_22M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_22M06;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_22M06;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2022-06-30 23:59:00.000');
RAISERROR('Added rptLicensee_22M06 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_22M07;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_22M07', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss2\rptLicensee_22M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_22M07;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_22M07;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2022-07-31 23:59:00.000');
RAISERROR('Added rptLicensee_22M07 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_22M08;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_22M08', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss2\rptLicensee_22M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_22M08;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_22M08;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2022-08-31 23:59:00.000');
RAISERROR('Added rptLicensee_22M08 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_22M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_22M09', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss2\rptLicensee_22M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_22M09;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_22M09;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2022-09-30 23:59:00.000');
RAISERROR('Added rptLicensee_22M09 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_22M10;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_22M10', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss2\rptLicensee_22M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_22M10;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_22M10;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2022-10-31 23:59:00.000');
RAISERROR('Added rptLicensee_22M10 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_22M11;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_22M11', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rpt_LicWinloss2\rptLicensee_22M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_22M11;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_22M11;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2022-11-30 23:59:00.000');
RAISERROR('Added rptLicensee_22M11 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptLicensee_22M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptLicensee_22M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rpt_LicWinloss2\rptLicensee_22M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptLicensee_22M12;
ALTER PARTITION SCHEME ps_rptLicensee_monthly NEXT USED rptLicensee_22M12;
ALTER PARTITION FUNCTION pf_rptLicensee_monthly() SPLIT RANGE (N'2022-12-31 23:59:00.000');
RAISERROR('Added rptLicensee_22M12 into ps_rptLicensee_monthly', 0, 0) WITH NOWAIT;
 
-------------------------
-- END ps_rptLicensee_monthly
-------------------------


-------------------------
-- ps_kpiCustomer_Account_quarterly
-------------------------

ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP Customer_Account_19M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'Customer_Account_19M03', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\Customer_Account\Customer_Account_19M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Customer_Account_19M03;
ALTER PARTITION SCHEME ps_kpiCustomer_Account_quarterly NEXT USED Customer_Account_19M03;
ALTER PARTITION FUNCTION pf_kpiCustomer_Account_quarterly() SPLIT RANGE (N'2019-03-31 23:59:59.997');
RAISERROR('Added Customer_Account_19M03 into ps_kpiCustomer_Account_quarterly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP Customer_Account_19M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'Customer_Account_19M06', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\Customer_Account\Customer_Account_19M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Customer_Account_19M06;
ALTER PARTITION SCHEME ps_kpiCustomer_Account_quarterly NEXT USED Customer_Account_19M06;
ALTER PARTITION FUNCTION pf_kpiCustomer_Account_quarterly() SPLIT RANGE (N'2019-06-30 23:59:59.997');
RAISERROR('Added Customer_Account_19M06 into ps_kpiCustomer_Account_quarterly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP Customer_Account_19M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'Customer_Account_19M09', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\Customer_Account\Customer_Account_19M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Customer_Account_19M09;
ALTER PARTITION SCHEME ps_kpiCustomer_Account_quarterly NEXT USED Customer_Account_19M09;
ALTER PARTITION FUNCTION pf_kpiCustomer_Account_quarterly() SPLIT RANGE (N'2019-09-30 23:59:59.997');
RAISERROR('Added Customer_Account_19M09 into ps_kpiCustomer_Account_quarterly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP Customer_Account_19M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'Customer_Account_19M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\Customer_Account\Customer_Account_19M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Customer_Account_19M12;
ALTER PARTITION SCHEME ps_kpiCustomer_Account_quarterly NEXT USED Customer_Account_19M12;
ALTER PARTITION FUNCTION pf_kpiCustomer_Account_quarterly() SPLIT RANGE (N'2019-12-31 23:59:59.997');
RAISERROR('Added Customer_Account_19M12 into ps_kpiCustomer_Account_quarterly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP Customer_Account_20M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'Customer_Account_20M03', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\Customer_Account\Customer_Account_20M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Customer_Account_20M03;
ALTER PARTITION SCHEME ps_kpiCustomer_Account_quarterly NEXT USED Customer_Account_20M03;
ALTER PARTITION FUNCTION pf_kpiCustomer_Account_quarterly() SPLIT RANGE (N'2020-03-31 23:59:59.997');
RAISERROR('Added Customer_Account_20M03 into ps_kpiCustomer_Account_quarterly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP Customer_Account_20M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'Customer_Account_20M06', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\Customer_Account\Customer_Account_20M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Customer_Account_20M06;
ALTER PARTITION SCHEME ps_kpiCustomer_Account_quarterly NEXT USED Customer_Account_20M06;
ALTER PARTITION FUNCTION pf_kpiCustomer_Account_quarterly() SPLIT RANGE (N'2020-06-30 23:59:59.997');
RAISERROR('Added Customer_Account_20M06 into ps_kpiCustomer_Account_quarterly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP Customer_Account_20M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'Customer_Account_20M09', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\Customer_Account\Customer_Account_20M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Customer_Account_20M09;
ALTER PARTITION SCHEME ps_kpiCustomer_Account_quarterly NEXT USED Customer_Account_20M09;
ALTER PARTITION FUNCTION pf_kpiCustomer_Account_quarterly() SPLIT RANGE (N'2020-09-30 23:59:59.997');
RAISERROR('Added Customer_Account_20M09 into ps_kpiCustomer_Account_quarterly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP Customer_Account_20M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'Customer_Account_20M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\Customer_Account\Customer_Account_20M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Customer_Account_20M12;
ALTER PARTITION SCHEME ps_kpiCustomer_Account_quarterly NEXT USED Customer_Account_20M12;
ALTER PARTITION FUNCTION pf_kpiCustomer_Account_quarterly() SPLIT RANGE (N'2020-12-31 23:59:59.997');
RAISERROR('Added Customer_Account_20M12 into ps_kpiCustomer_Account_quarterly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP Customer_Account_21M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'Customer_Account_21M03', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\Customer_Account\Customer_Account_21M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Customer_Account_21M03;
ALTER PARTITION SCHEME ps_kpiCustomer_Account_quarterly NEXT USED Customer_Account_21M03;
ALTER PARTITION FUNCTION pf_kpiCustomer_Account_quarterly() SPLIT RANGE (N'2021-03-31 23:59:59.997');
RAISERROR('Added Customer_Account_21M03 into ps_kpiCustomer_Account_quarterly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP Customer_Account_21M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'Customer_Account_21M06', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\Customer_Account\Customer_Account_21M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Customer_Account_21M06;
ALTER PARTITION SCHEME ps_kpiCustomer_Account_quarterly NEXT USED Customer_Account_21M06;
ALTER PARTITION FUNCTION pf_kpiCustomer_Account_quarterly() SPLIT RANGE (N'2021-06-30 23:59:59.997');
RAISERROR('Added Customer_Account_21M06 into ps_kpiCustomer_Account_quarterly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP Customer_Account_21M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'Customer_Account_21M09', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\Customer_Account\Customer_Account_21M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Customer_Account_21M09;
ALTER PARTITION SCHEME ps_kpiCustomer_Account_quarterly NEXT USED Customer_Account_21M09;
ALTER PARTITION FUNCTION pf_kpiCustomer_Account_quarterly() SPLIT RANGE (N'2021-09-30 23:59:59.997');
RAISERROR('Added Customer_Account_21M09 into ps_kpiCustomer_Account_quarterly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP Customer_Account_21M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'Customer_Account_21M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\Customer_Account\Customer_Account_21M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Customer_Account_21M12;
ALTER PARTITION SCHEME ps_kpiCustomer_Account_quarterly NEXT USED Customer_Account_21M12;
ALTER PARTITION FUNCTION pf_kpiCustomer_Account_quarterly() SPLIT RANGE (N'2021-12-31 23:59:59.997');
RAISERROR('Added Customer_Account_21M12 into ps_kpiCustomer_Account_quarterly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP Customer_Account_22M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'Customer_Account_22M03', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\Customer_Account\Customer_Account_22M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Customer_Account_22M03;
ALTER PARTITION SCHEME ps_kpiCustomer_Account_quarterly NEXT USED Customer_Account_22M03;
ALTER PARTITION FUNCTION pf_kpiCustomer_Account_quarterly() SPLIT RANGE (N'2022-03-31 23:59:59.997');
RAISERROR('Added Customer_Account_22M03 into ps_kpiCustomer_Account_quarterly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP Customer_Account_22M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'Customer_Account_22M06', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\Customer_Account\Customer_Account_22M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Customer_Account_22M06;
ALTER PARTITION SCHEME ps_kpiCustomer_Account_quarterly NEXT USED Customer_Account_22M06;
ALTER PARTITION FUNCTION pf_kpiCustomer_Account_quarterly() SPLIT RANGE (N'2022-06-30 23:59:59.997');
RAISERROR('Added Customer_Account_22M06 into ps_kpiCustomer_Account_quarterly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP Customer_Account_22M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'Customer_Account_22M09', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\Customer_Account\Customer_Account_22M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Customer_Account_22M09;
ALTER PARTITION SCHEME ps_kpiCustomer_Account_quarterly NEXT USED Customer_Account_22M09;
ALTER PARTITION FUNCTION pf_kpiCustomer_Account_quarterly() SPLIT RANGE (N'2022-09-30 23:59:59.997');
RAISERROR('Added Customer_Account_22M09 into ps_kpiCustomer_Account_quarterly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP Customer_Account_22M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'Customer_Account_22M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\Customer_Account\Customer_Account_22M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Customer_Account_22M12;
ALTER PARTITION SCHEME ps_kpiCustomer_Account_quarterly NEXT USED Customer_Account_22M12;
ALTER PARTITION FUNCTION pf_kpiCustomer_Account_quarterly() SPLIT RANGE (N'2022-12-31 23:59:59.997');
RAISERROR('Added Customer_Account_22M12 into ps_kpiCustomer_Account_quarterly', 0, 0) WITH NOWAIT;
 
-------------------------
-- END ps_kpiCustomer_Account_quarterly
-------------------------


-------------------------
-- ps_kpiCustomer_Account_quarterly_new
-------------------------

ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP Customer_Account_19M03_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'Customer_Account_19M03_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\Customer_Account\Customer_Account_19M03_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Customer_Account_19M03_new;
ALTER PARTITION SCHEME ps_kpiCustomer_Account_quarterly_new NEXT USED Customer_Account_19M03_new;
ALTER PARTITION FUNCTION pf_kpiCustomer_Account_quarterly_new() SPLIT RANGE (N'2019-03-31 23:59:59.997');
RAISERROR('Added Customer_Account_19M03_new into ps_kpiCustomer_Account_quarterly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP Customer_Account_19M06_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'Customer_Account_19M06_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\Customer_Account\Customer_Account_19M06_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Customer_Account_19M06_new;
ALTER PARTITION SCHEME ps_kpiCustomer_Account_quarterly_new NEXT USED Customer_Account_19M06_new;
ALTER PARTITION FUNCTION pf_kpiCustomer_Account_quarterly_new() SPLIT RANGE (N'2019-06-30 23:59:59.997');
RAISERROR('Added Customer_Account_19M06_new into ps_kpiCustomer_Account_quarterly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP Customer_Account_19M09_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'Customer_Account_19M09_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\Customer_Account\Customer_Account_19M09_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Customer_Account_19M09_new;
ALTER PARTITION SCHEME ps_kpiCustomer_Account_quarterly_new NEXT USED Customer_Account_19M09_new;
ALTER PARTITION FUNCTION pf_kpiCustomer_Account_quarterly_new() SPLIT RANGE (N'2019-09-30 23:59:59.997');
RAISERROR('Added Customer_Account_19M09_new into ps_kpiCustomer_Account_quarterly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP Customer_Account_19M12_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'Customer_Account_19M12_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\Customer_Account\Customer_Account_19M12_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Customer_Account_19M12_new;
ALTER PARTITION SCHEME ps_kpiCustomer_Account_quarterly_new NEXT USED Customer_Account_19M12_new;
ALTER PARTITION FUNCTION pf_kpiCustomer_Account_quarterly_new() SPLIT RANGE (N'2019-12-31 23:59:59.997');
RAISERROR('Added Customer_Account_19M12_new into ps_kpiCustomer_Account_quarterly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP Customer_Account_20M03_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'Customer_Account_20M03_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\Customer_Account\Customer_Account_20M03_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Customer_Account_20M03_new;
ALTER PARTITION SCHEME ps_kpiCustomer_Account_quarterly_new NEXT USED Customer_Account_20M03_new;
ALTER PARTITION FUNCTION pf_kpiCustomer_Account_quarterly_new() SPLIT RANGE (N'2020-03-31 23:59:59.997');
RAISERROR('Added Customer_Account_20M03_new into ps_kpiCustomer_Account_quarterly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP Customer_Account_20M06_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'Customer_Account_20M06_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\Customer_Account\Customer_Account_20M06_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Customer_Account_20M06_new;
ALTER PARTITION SCHEME ps_kpiCustomer_Account_quarterly_new NEXT USED Customer_Account_20M06_new;
ALTER PARTITION FUNCTION pf_kpiCustomer_Account_quarterly_new() SPLIT RANGE (N'2020-06-30 23:59:59.997');
RAISERROR('Added Customer_Account_20M06_new into ps_kpiCustomer_Account_quarterly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP Customer_Account_20M09_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'Customer_Account_20M09_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\Customer_Account\Customer_Account_20M09_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Customer_Account_20M09_new;
ALTER PARTITION SCHEME ps_kpiCustomer_Account_quarterly_new NEXT USED Customer_Account_20M09_new;
ALTER PARTITION FUNCTION pf_kpiCustomer_Account_quarterly_new() SPLIT RANGE (N'2020-09-30 23:59:59.997');
RAISERROR('Added Customer_Account_20M09_new into ps_kpiCustomer_Account_quarterly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP Customer_Account_20M12_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'Customer_Account_20M12_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\Customer_Account\Customer_Account_20M12_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Customer_Account_20M12_new;
ALTER PARTITION SCHEME ps_kpiCustomer_Account_quarterly_new NEXT USED Customer_Account_20M12_new;
ALTER PARTITION FUNCTION pf_kpiCustomer_Account_quarterly_new() SPLIT RANGE (N'2020-12-31 23:59:59.997');
RAISERROR('Added Customer_Account_20M12_new into ps_kpiCustomer_Account_quarterly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP Customer_Account_21M03_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'Customer_Account_21M03_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\Customer_Account\Customer_Account_21M03_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Customer_Account_21M03_new;
ALTER PARTITION SCHEME ps_kpiCustomer_Account_quarterly_new NEXT USED Customer_Account_21M03_new;
ALTER PARTITION FUNCTION pf_kpiCustomer_Account_quarterly_new() SPLIT RANGE (N'2021-03-31 23:59:59.997');
RAISERROR('Added Customer_Account_21M03_new into ps_kpiCustomer_Account_quarterly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP Customer_Account_21M06_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'Customer_Account_21M06_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\Customer_Account\Customer_Account_21M06_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Customer_Account_21M06_new;
ALTER PARTITION SCHEME ps_kpiCustomer_Account_quarterly_new NEXT USED Customer_Account_21M06_new;
ALTER PARTITION FUNCTION pf_kpiCustomer_Account_quarterly_new() SPLIT RANGE (N'2021-06-30 23:59:59.997');
RAISERROR('Added Customer_Account_21M06_new into ps_kpiCustomer_Account_quarterly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP Customer_Account_21M09_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'Customer_Account_21M09_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\Customer_Account\Customer_Account_21M09_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Customer_Account_21M09_new;
ALTER PARTITION SCHEME ps_kpiCustomer_Account_quarterly_new NEXT USED Customer_Account_21M09_new;
ALTER PARTITION FUNCTION pf_kpiCustomer_Account_quarterly_new() SPLIT RANGE (N'2021-09-30 23:59:59.997');
RAISERROR('Added Customer_Account_21M09_new into ps_kpiCustomer_Account_quarterly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP Customer_Account_21M12_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'Customer_Account_21M12_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\Customer_Account\Customer_Account_21M12_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Customer_Account_21M12_new;
ALTER PARTITION SCHEME ps_kpiCustomer_Account_quarterly_new NEXT USED Customer_Account_21M12_new;
ALTER PARTITION FUNCTION pf_kpiCustomer_Account_quarterly_new() SPLIT RANGE (N'2021-12-31 23:59:59.997');
RAISERROR('Added Customer_Account_21M12_new into ps_kpiCustomer_Account_quarterly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP Customer_Account_22M03_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'Customer_Account_22M03_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\Customer_Account\Customer_Account_22M03_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Customer_Account_22M03_new;
ALTER PARTITION SCHEME ps_kpiCustomer_Account_quarterly_new NEXT USED Customer_Account_22M03_new;
ALTER PARTITION FUNCTION pf_kpiCustomer_Account_quarterly_new() SPLIT RANGE (N'2022-03-31 23:59:59.997');
RAISERROR('Added Customer_Account_22M03_new into ps_kpiCustomer_Account_quarterly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP Customer_Account_22M06_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'Customer_Account_22M06_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\Customer_Account\Customer_Account_22M06_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Customer_Account_22M06_new;
ALTER PARTITION SCHEME ps_kpiCustomer_Account_quarterly_new NEXT USED Customer_Account_22M06_new;
ALTER PARTITION FUNCTION pf_kpiCustomer_Account_quarterly_new() SPLIT RANGE (N'2022-06-30 23:59:59.997');
RAISERROR('Added Customer_Account_22M06_new into ps_kpiCustomer_Account_quarterly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP Customer_Account_22M09_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'Customer_Account_22M09_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\Customer_Account\Customer_Account_22M09_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Customer_Account_22M09_new;
ALTER PARTITION SCHEME ps_kpiCustomer_Account_quarterly_new NEXT USED Customer_Account_22M09_new;
ALTER PARTITION FUNCTION pf_kpiCustomer_Account_quarterly_new() SPLIT RANGE (N'2022-09-30 23:59:59.997');
RAISERROR('Added Customer_Account_22M09_new into ps_kpiCustomer_Account_quarterly_new', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP Customer_Account_22M12_new;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'Customer_Account_22M12_new', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\Customer_Account\Customer_Account_22M12_new.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Customer_Account_22M12_new;
ALTER PARTITION SCHEME ps_kpiCustomer_Account_quarterly_new NEXT USED Customer_Account_22M12_new;
ALTER PARTITION FUNCTION pf_kpiCustomer_Account_quarterly_new() SPLIT RANGE (N'2022-12-31 23:59:59.997');
RAISERROR('Added Customer_Account_22M12_new into ps_kpiCustomer_Account_quarterly_new', 0, 0) WITH NOWAIT;
 
-------------------------
-- END ps_kpiCustomer_Account_quarterly_new
-------------------------


-------------------------
-- ps_rptKPI_MTD_3rdProducts_yearly
-------------------------

ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptKPI_MTD_3rdProducts_19M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptKPI_MTD_3rdProducts_19M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptKPI_MTD_3rdProducts\rptKPI_MTD_3rdProducts_19M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptKPI_MTD_3rdProducts_19M12;
ALTER PARTITION SCHEME ps_rptKPI_MTD_3rdProducts_yearly NEXT USED rptKPI_MTD_3rdProducts_19M12;
ALTER PARTITION FUNCTION pf_rptKPI_MTD_3rdProducts_yearly() SPLIT RANGE (N'2019-12-31 23:59:00.000');
RAISERROR('Added rptKPI_MTD_3rdProducts_19M12 into ps_rptKPI_MTD_3rdProducts_yearly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptKPI_MTD_3rdProducts_20M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptKPI_MTD_3rdProducts_20M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptKPI_MTD_3rdProducts\rptKPI_MTD_3rdProducts_20M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptKPI_MTD_3rdProducts_20M12;
ALTER PARTITION SCHEME ps_rptKPI_MTD_3rdProducts_yearly NEXT USED rptKPI_MTD_3rdProducts_20M12;
ALTER PARTITION FUNCTION pf_rptKPI_MTD_3rdProducts_yearly() SPLIT RANGE (N'2020-12-31 23:59:00.000');
RAISERROR('Added rptKPI_MTD_3rdProducts_20M12 into ps_rptKPI_MTD_3rdProducts_yearly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptKPI_MTD_3rdProducts_21M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptKPI_MTD_3rdProducts_21M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport_N2\rptKPI_MTD_3rdProducts\rptKPI_MTD_3rdProducts_21M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptKPI_MTD_3rdProducts_21M12;
ALTER PARTITION SCHEME ps_rptKPI_MTD_3rdProducts_yearly NEXT USED rptKPI_MTD_3rdProducts_21M12;
ALTER PARTITION FUNCTION pf_rptKPI_MTD_3rdProducts_yearly() SPLIT RANGE (N'2021-12-31 23:59:00.000');
RAISERROR('Added rptKPI_MTD_3rdProducts_21M12 into ps_rptKPI_MTD_3rdProducts_yearly', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptKPI_MTD_3rdProducts_22M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptKPI_MTD_3rdProducts_22M12', FILENAME = N'M:\IBC_DB\bodb_LicenseeReport2\rptKPI_MTD_3rdProducts\rptKPI_MTD_3rdProducts_22M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptKPI_MTD_3rdProducts_22M12;
ALTER PARTITION SCHEME ps_rptKPI_MTD_3rdProducts_yearly NEXT USED rptKPI_MTD_3rdProducts_22M12;
ALTER PARTITION FUNCTION pf_rptKPI_MTD_3rdProducts_yearly() SPLIT RANGE (N'2022-12-31 23:59:00.000');
RAISERROR('Added rptKPI_MTD_3rdProducts_22M12 into ps_rptKPI_MTD_3rdProducts_yearly', 0, 0) WITH NOWAIT;
 
-------------------------
-- END ps_rptKPI_MTD_3rdProducts_yearly
-------------------------

