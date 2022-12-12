/*<info serverAlias="DBAGE-bodb_LicenseeReport"></info>*/
-------------------------
--table: rpt_Betting
--start: 2023-01-31
--end: 2025-12-31
--ps: ps_rptBetting_monthly
--pf: pf_rptBetting_monthly
--file group: rptBetting_
--path file: F:\USER_DB\bodb_LicenseeReport\rpt_Betting
-------------------------
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_23M01;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_23M01', FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_Betting\rptBetting_23M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_23M01
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_23M01;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2023-01-31 23:59:00.000');
RAISERROR('Added rptBetting_23M01', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_23M02;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_23M02', FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_Betting\rptBetting_23M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_23M02
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_23M02;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2023-02-28 23:59:00.000');
RAISERROR('Added rptBetting_23M02', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_23M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_23M03', FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_Betting\rptBetting_23M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_23M03
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_23M03;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2023-03-31 23:59:00.000');
RAISERROR('Added rptBetting_23M03', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_23M04;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_23M04', FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_Betting\rptBetting_23M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_23M04
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_23M04;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2023-04-30 23:59:00.000');
RAISERROR('Added rptBetting_23M04', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_23M05;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_23M05', FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_Betting\rptBetting_23M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_23M05
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_23M05;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2023-05-31 23:59:00.000');
RAISERROR('Added rptBetting_23M05', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_23M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_23M06', FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_Betting\rptBetting_23M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_23M06
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_23M06;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2023-06-30 23:59:00.000');
RAISERROR('Added rptBetting_23M06', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_23M07;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_23M07', FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_Betting\rptBetting_23M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_23M07
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_23M07;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2023-07-31 23:59:00.000');
RAISERROR('Added rptBetting_23M07', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_23M08;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_23M08', FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_Betting\rptBetting_23M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_23M08
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_23M08;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2023-08-31 23:59:00.000');
RAISERROR('Added rptBetting_23M08', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_23M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_23M09', FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_Betting\rptBetting_23M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_23M09
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_23M09;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2023-09-30 23:59:00.000');
RAISERROR('Added rptBetting_23M09', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_23M10;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_23M10', FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_Betting\rptBetting_23M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_23M10
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_23M10;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2023-10-31 23:59:00.000');
RAISERROR('Added rptBetting_23M10', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_23M11;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_23M11', FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_Betting\rptBetting_23M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_23M11
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_23M11;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2023-11-30 23:59:00.000');
RAISERROR('Added rptBetting_23M11', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_23M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_23M12', FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_Betting\rptBetting_23M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_23M12
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_23M12;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2023-12-31 23:59:00.000');
RAISERROR('Added rptBetting_23M12', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_24M01;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_24M01', FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_Betting\rptBetting_24M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_24M01
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_24M01;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2024-01-31 23:59:00.000');
RAISERROR('Added rptBetting_24M01', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_24M02;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_24M02', FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_Betting\rptBetting_24M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_24M02
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_24M02;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2024-02-29 23:59:00.000');
RAISERROR('Added rptBetting_24M02', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_24M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_24M03', FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_Betting\rptBetting_24M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_24M03
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_24M03;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2024-03-31 23:59:00.000');
RAISERROR('Added rptBetting_24M03', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_24M04;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_24M04', FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_Betting\rptBetting_24M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_24M04
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_24M04;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2024-04-30 23:59:00.000');
RAISERROR('Added rptBetting_24M04', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_24M05;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_24M05', FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_Betting\rptBetting_24M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_24M05
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_24M05;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2024-05-31 23:59:00.000');
RAISERROR('Added rptBetting_24M05', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_24M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_24M06', FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_Betting\rptBetting_24M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_24M06
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_24M06;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2024-06-30 23:59:00.000');
RAISERROR('Added rptBetting_24M06', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_24M07;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_24M07', FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_Betting\rptBetting_24M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_24M07
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_24M07;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2024-07-31 23:59:00.000');
RAISERROR('Added rptBetting_24M07', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_24M08;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_24M08', FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_Betting\rptBetting_24M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_24M08
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_24M08;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2024-08-31 23:59:00.000');
RAISERROR('Added rptBetting_24M08', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_24M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_24M09', FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_Betting\rptBetting_24M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_24M09
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_24M09;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2024-09-30 23:59:00.000');
RAISERROR('Added rptBetting_24M09', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_24M10;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_24M10', FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_Betting\rptBetting_24M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_24M10
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_24M10;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2024-10-31 23:59:00.000');
RAISERROR('Added rptBetting_24M10', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_24M11;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_24M11', FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_Betting\rptBetting_24M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_24M11
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_24M11;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2024-11-30 23:59:00.000');
RAISERROR('Added rptBetting_24M11', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_24M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_24M12', FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_Betting\rptBetting_24M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_24M12
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_24M12;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2024-12-31 23:59:00.000');
RAISERROR('Added rptBetting_24M12', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_25M01;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_25M01', FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_Betting\rptBetting_25M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_25M01
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_25M01;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2025-01-31 23:59:00.000');
RAISERROR('Added rptBetting_25M01', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_25M02;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_25M02', FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_Betting\rptBetting_25M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_25M02
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_25M02;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2025-02-28 23:59:00.000');
RAISERROR('Added rptBetting_25M02', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_25M03;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_25M03', FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_Betting\rptBetting_25M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_25M03
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_25M03;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2025-03-31 23:59:00.000');
RAISERROR('Added rptBetting_25M03', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_25M04;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_25M04', FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_Betting\rptBetting_25M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_25M04
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_25M04;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2025-04-30 23:59:00.000');
RAISERROR('Added rptBetting_25M04', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_25M05;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_25M05', FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_Betting\rptBetting_25M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_25M05
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_25M05;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2025-05-31 23:59:00.000');
RAISERROR('Added rptBetting_25M05', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_25M06;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_25M06', FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_Betting\rptBetting_25M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_25M06
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_25M06;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2025-06-30 23:59:00.000');
RAISERROR('Added rptBetting_25M06', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_25M07;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_25M07', FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_Betting\rptBetting_25M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_25M07
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_25M07;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2025-07-31 23:59:00.000');
RAISERROR('Added rptBetting_25M07', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_25M08;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_25M08', FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_Betting\rptBetting_25M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_25M08
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_25M08;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2025-08-31 23:59:00.000');
RAISERROR('Added rptBetting_25M08', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_25M09;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_25M09', FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_Betting\rptBetting_25M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_25M09
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_25M09;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2025-09-30 23:59:00.000');
RAISERROR('Added rptBetting_25M09', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_25M10;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_25M10', FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_Betting\rptBetting_25M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_25M10
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_25M10;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2025-10-31 23:59:00.000');
RAISERROR('Added rptBetting_25M10', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_25M11;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_25M11', FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_Betting\rptBetting_25M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_25M11
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_25M11;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2025-11-30 23:59:00.000');
RAISERROR('Added rptBetting_25M11', 0, 0) WITH NOWAIT;
 
ALTER DATABASE bodb_LicenseeReport ADD FILEGROUP rptBetting_25M12;
ALTER DATABASE bodb_LicenseeReport ADD FILE (NAME = N'rptBetting_25M12', FILENAME = N'F:\USER_DB\bodb_LicenseeReport\rpt_Betting\rptBetting_25M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP rptBetting_25M12
ALTER PARTITION SCHEME ps_rptBetting_monthly NEXT USED rptBetting_25M12;
ALTER PARTITION FUNCTION pf_rptBetting_monthly() SPLIT RANGE (N'2025-12-31 23:59:00.000');
RAISERROR('Added rptBetting_25M12', 0, 0) WITH NOWAIT;
 

