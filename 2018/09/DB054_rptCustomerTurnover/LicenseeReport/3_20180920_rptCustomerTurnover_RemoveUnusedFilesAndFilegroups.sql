USE [bodb_LicenseeReport]
GO
/*
	Task - Archive data for rptCustomerTurnover
		+ Merge partition and remove file/filegroup
	Run on DB054
*/

ALTER PARTITION FUNCTION [pf_rptCustomerTurnover_monthly]() MERGE RANGE ('2015-09-30 23:59:00');
ALTER PARTITION FUNCTION [pf_rptCustomerTurnover_monthly]() MERGE RANGE ('2015-10-31 23:59:00');
ALTER PARTITION FUNCTION [pf_rptCustomerTurnover_monthly]() MERGE RANGE ('2015-11-30 23:59:00');
ALTER PARTITION FUNCTION [pf_rptCustomerTurnover_monthly]() MERGE RANGE ('2015-12-31 23:59:00');
ALTER PARTITION FUNCTION [pf_rptCustomerTurnover_monthly]() MERGE RANGE ('2016-01-31 23:59:00');
ALTER PARTITION FUNCTION [pf_rptCustomerTurnover_monthly]() MERGE RANGE ('2016-02-29 23:59:00');
ALTER PARTITION FUNCTION [pf_rptCustomerTurnover_monthly]() MERGE RANGE ('2016-03-31 23:59:00');
ALTER PARTITION FUNCTION [pf_rptCustomerTurnover_monthly]() MERGE RANGE ('2016-04-30 23:59:00');
ALTER PARTITION FUNCTION [pf_rptCustomerTurnover_monthly]() MERGE RANGE ('2016-05-31 23:59:00');
ALTER PARTITION FUNCTION [pf_rptCustomerTurnover_monthly]() MERGE RANGE ('2016-06-30 23:59:00');
ALTER PARTITION FUNCTION [pf_rptCustomerTurnover_monthly]() MERGE RANGE ('2016-07-31 23:59:00');
ALTER PARTITION FUNCTION [pf_rptCustomerTurnover_monthly]() MERGE RANGE ('2016-08-31 23:59:00');
ALTER PARTITION FUNCTION [pf_rptCustomerTurnover_monthly]() MERGE RANGE ('2016-09-30 23:59:00');
ALTER PARTITION FUNCTION [pf_rptCustomerTurnover_monthly]() MERGE RANGE ('2016-10-31 23:59:00');
ALTER PARTITION FUNCTION [pf_rptCustomerTurnover_monthly]() MERGE RANGE ('2016-11-30 23:59:00');
ALTER PARTITION FUNCTION [pf_rptCustomerTurnover_monthly]() MERGE RANGE ('2016-12-31 23:59:00');
ALTER PARTITION FUNCTION [pf_rptCustomerTurnover_monthly]() MERGE RANGE ('2017-01-31 23:59:00');
ALTER PARTITION FUNCTION [pf_rptCustomerTurnover_monthly]() MERGE RANGE ('2017-02-28 23:59:00');
ALTER PARTITION FUNCTION [pf_rptCustomerTurnover_monthly]() MERGE RANGE ('2017-03-31 23:59:00');
ALTER PARTITION FUNCTION [pf_rptCustomerTurnover_monthly]() MERGE RANGE ('2017-04-30 23:59:00');
ALTER PARTITION FUNCTION [pf_rptCustomerTurnover_monthly]() MERGE RANGE ('2017-05-31 23:59:00');
ALTER PARTITION FUNCTION [pf_rptCustomerTurnover_monthly]() MERGE RANGE ('2017-06-30 23:59:00');
ALTER PARTITION FUNCTION [pf_rptCustomerTurnover_monthly]() MERGE RANGE ('2017-07-31 23:59:00');
ALTER PARTITION FUNCTION [pf_rptCustomerTurnover_monthly]() MERGE RANGE ('2017-08-31 23:59:00');
ALTER PARTITION FUNCTION [pf_rptCustomerTurnover_monthly]() MERGE RANGE ('2017-09-30 23:59:00');
ALTER PARTITION FUNCTION [pf_rptCustomerTurnover_monthly]() MERGE RANGE ('2017-10-31 23:59:00');
ALTER PARTITION FUNCTION [pf_rptCustomerTurnover_monthly]() MERGE RANGE ('2017-11-30 23:59:00');
ALTER PARTITION FUNCTION [pf_rptCustomerTurnover_monthly]() MERGE RANGE ('2017-12-31 23:59:00');
ALTER PARTITION FUNCTION [pf_rptCustomerTurnover_monthly]() MERGE RANGE ('2018-01-31 23:59:00');
ALTER PARTITION FUNCTION [pf_rptCustomerTurnover_monthly]() MERGE RANGE ('2018-02-28 23:59:00');
ALTER PARTITION FUNCTION [pf_rptCustomerTurnover_monthly]() MERGE RANGE ('2018-03-31 23:59:00');
ALTER PARTITION FUNCTION [pf_rptCustomerTurnover_monthly]() MERGE RANGE ('2018-04-30 23:59:00');
ALTER PARTITION FUNCTION [pf_rptCustomerTurnover_monthly]() MERGE RANGE ('2018-05-31 23:59:00');
GO

DBCC SHRINKFILE ('rptCustomerTurnover_15M09', EMPTYFILE);
DBCC SHRINKFILE ('rptCustomerTurnover_15M10', EMPTYFILE);
DBCC SHRINKFILE ('rptCustomerTurnover_15M11', EMPTYFILE);
DBCC SHRINKFILE ('rptCustomerTurnover_15M12', EMPTYFILE);
DBCC SHRINKFILE ('rptCustomerTurnover_16M01', EMPTYFILE);
DBCC SHRINKFILE ('rptCustomerTurnover_16M02', EMPTYFILE);
DBCC SHRINKFILE ('rptCustomerTurnover_16M03', EMPTYFILE);
DBCC SHRINKFILE ('rptCustomerTurnover_16M04', EMPTYFILE);
DBCC SHRINKFILE ('rptCustomerTurnover_16M05', EMPTYFILE);
DBCC SHRINKFILE ('rptCustomerTurnover_16M06', EMPTYFILE);
DBCC SHRINKFILE ('rptCustomerTurnover_16M07', EMPTYFILE);
DBCC SHRINKFILE ('rptCustomerTurnover_16M08', EMPTYFILE);
DBCC SHRINKFILE ('rptCustomerTurnover_16M09', EMPTYFILE);
DBCC SHRINKFILE ('rptCustomerTurnover_16M10', EMPTYFILE);
DBCC SHRINKFILE ('rptCustomerTurnover_16M11', EMPTYFILE);
DBCC SHRINKFILE ('rptCustomerTurnover_16M12', EMPTYFILE);
DBCC SHRINKFILE ('rptCustomerTurnover_17M01', EMPTYFILE);
DBCC SHRINKFILE ('rptCustomerTurnover_17M02', EMPTYFILE);
DBCC SHRINKFILE ('rptCustomerTurnover_17M03', EMPTYFILE);
DBCC SHRINKFILE ('rptCustomerTurnover_17M04', EMPTYFILE);
DBCC SHRINKFILE ('rptCustomerTurnover_17M05', EMPTYFILE);
DBCC SHRINKFILE ('rptCustomerTurnover_17M06', EMPTYFILE);
DBCC SHRINKFILE ('rptCustomerTurnover_17M07', EMPTYFILE);
DBCC SHRINKFILE ('rptCustomerTurnover_17M08', EMPTYFILE);
DBCC SHRINKFILE ('rptCustomerTurnover_17M09', EMPTYFILE);
DBCC SHRINKFILE ('rptCustomerTurnover_17M10', EMPTYFILE);
DBCC SHRINKFILE ('rptCustomerTurnover_17M11', EMPTYFILE);
DBCC SHRINKFILE ('rptCustomerTurnover_17M12', EMPTYFILE);
DBCC SHRINKFILE ('rptCustomerTurnover_18M01', EMPTYFILE);
DBCC SHRINKFILE ('rptCustomerTurnover_18M02', EMPTYFILE);
DBCC SHRINKFILE ('rptCustomerTurnover_18M03', EMPTYFILE);
DBCC SHRINKFILE ('rptCustomerTurnover_18M04', EMPTYFILE);
DBCC SHRINKFILE ('rptCustomerTurnover_18M05', EMPTYFILE);
GO

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptCustomerTurnover_15M09];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptCustomerTurnover_15M10];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptCustomerTurnover_15M11];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptCustomerTurnover_15M12];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptCustomerTurnover_16M01];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptCustomerTurnover_16M02];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptCustomerTurnover_16M03];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptCustomerTurnover_16M04];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptCustomerTurnover_16M05];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptCustomerTurnover_16M06];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptCustomerTurnover_16M07];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptCustomerTurnover_16M08];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptCustomerTurnover_16M09];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptCustomerTurnover_16M10];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptCustomerTurnover_16M11];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptCustomerTurnover_16M12];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptCustomerTurnover_17M01];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptCustomerTurnover_17M02];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptCustomerTurnover_17M03];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptCustomerTurnover_17M04];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptCustomerTurnover_17M05];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptCustomerTurnover_17M06];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptCustomerTurnover_17M07];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptCustomerTurnover_17M08];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptCustomerTurnover_17M09];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptCustomerTurnover_17M10];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptCustomerTurnover_17M11];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptCustomerTurnover_17M12];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptCustomerTurnover_18M01];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptCustomerTurnover_18M02];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptCustomerTurnover_18M03];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptCustomerTurnover_18M04];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptCustomerTurnover_18M05];
GO

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptCustomerTurnover_15M09];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptCustomerTurnover_15M10];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptCustomerTurnover_15M11];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptCustomerTurnover_15M12];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptCustomerTurnover_16M01];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptCustomerTurnover_16M02];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptCustomerTurnover_16M03];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptCustomerTurnover_16M04];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptCustomerTurnover_16M05];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptCustomerTurnover_16M06];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptCustomerTurnover_16M07];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptCustomerTurnover_16M08];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptCustomerTurnover_16M09];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptCustomerTurnover_16M10];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptCustomerTurnover_16M11];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptCustomerTurnover_16M12];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptCustomerTurnover_17M01];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptCustomerTurnover_17M02];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptCustomerTurnover_17M03];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptCustomerTurnover_17M04];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptCustomerTurnover_17M05];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptCustomerTurnover_17M06];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptCustomerTurnover_17M07];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptCustomerTurnover_17M08];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptCustomerTurnover_17M09];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptCustomerTurnover_17M10];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptCustomerTurnover_17M11];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptCustomerTurnover_17M12];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptCustomerTurnover_18M01];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptCustomerTurnover_18M02];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptCustomerTurnover_18M03];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptCustomerTurnover_18M04];
ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptCustomerTurnover_18M05];
GO