
/*
	Task - Remove data 2015 for bodb_archive @ bettransm
	Run on DB06.bodb_archive
*/

--clone schema
exec [dbo].[DBA_CloneTableStructure]
    @SourceSchema = 'dbo',
    @SourceTable = 'bettransm',
    @DestinationSchema = 'dbo',
    @DestinationTable = 'bettransm_v2',
    @RecreateIfExists = 1,
	@FileGroup = '[ps_bettransm_monthly]([winlostdate])'
	
--move data 2015 to new table
ALTER TABLE bettransm SWITCH PARTITION 2 TO bettransm_v2 PARTITION 2 
ALTER TABLE bettransm SWITCH PARTITION 3 TO bettransm_v2 PARTITION 3 
ALTER TABLE bettransm SWITCH PARTITION 4 TO bettransm_v2 PARTITION 4 
ALTER TABLE bettransm SWITCH PARTITION 5 TO bettransm_v2 PARTITION 5 
ALTER TABLE bettransm SWITCH PARTITION 6 TO bettransm_v2 PARTITION 6 
ALTER TABLE bettransm SWITCH PARTITION 7 TO bettransm_v2 PARTITION 7 
ALTER TABLE bettransm SWITCH PARTITION 8 TO bettransm_v2 PARTITION 8 
ALTER TABLE bettransm SWITCH PARTITION 9 TO bettransm_v2 PARTITION 9 
ALTER TABLE bettransm SWITCH PARTITION 10 TO bettransm_v2 PARTITION 10
ALTER TABLE bettransm SWITCH PARTITION 11 TO bettransm_v2 PARTITION 11
ALTER TABLE bettransm SWITCH PARTITION 12 TO bettransm_v2 PARTITION 12
ALTER TABLE bettransm SWITCH PARTITION 13 TO bettransm_v2 PARTITION 13

--check data

-- delete bettransm_v2
DROP TABLE bettransm_v2

--merge partitions for 2015 year
ALTER partition function pf_bettransm_monthly() merge range (N'2014-12-31 23:59:00.000')
ALTER partition function pf_bettransm_monthly() merge range (N'2015-01-31 23:59:00.000')
ALTER partition function pf_bettransm_monthly() merge range (N'2015-02-28 23:59:00.000')
ALTER partition function pf_bettransm_monthly() merge range (N'2015-03-31 23:59:00.000')
ALTER partition function pf_bettransm_monthly() merge range (N'2015-04-30 23:59:00.000')
ALTER partition function pf_bettransm_monthly() merge range (N'2015-05-31 23:59:00.000')
ALTER partition function pf_bettransm_monthly() merge range (N'2015-06-30 23:59:00.000')
ALTER partition function pf_bettransm_monthly() merge range (N'2015-07-31 23:59:00.000')
ALTER partition function pf_bettransm_monthly() merge range (N'2015-08-31 23:59:00.000')
ALTER partition function pf_bettransm_monthly() merge range (N'2015-09-30 23:59:00.000')
ALTER partition function pf_bettransm_monthly() merge range (N'2015-10-31 23:59:00.000')
ALTER partition function pf_bettransm_monthly() merge range (N'2015-11-30 23:59:00.000')
ALTER partition function pf_bettransm_monthly() merge range (N'2015-12-31 23:59:00.000')

--remove un-use data file
ALTER DATABASE [bodb_Archive] REMOVE FILE [Bettransm_1412]

ALTER DATABASE [bodb_Archive] REMOVE FILE [Bettransm_1501]
ALTER DATABASE [bodb_Archive] REMOVE FILE [Bettransm_1502]
ALTER DATABASE [bodb_Archive] REMOVE FILE [Bettransm_1503]
ALTER DATABASE [bodb_Archive] REMOVE FILE [Bettransm_1504]
ALTER DATABASE [bodb_Archive] REMOVE FILE [Bettransm_1505]
ALTER DATABASE [bodb_Archive] REMOVE FILE [Bettransm_1506]
ALTER DATABASE [bodb_Archive] REMOVE FILE [Bettransm_1507]
ALTER DATABASE [bodb_Archive] REMOVE FILE [Bettransm_1508]
ALTER DATABASE [bodb_Archive] REMOVE FILE [Bettransm_1509]
ALTER DATABASE [bodb_Archive] REMOVE FILE [Bettransm_1510]
ALTER DATABASE [bodb_Archive] REMOVE FILE [Bettransm_1511]
ALTER DATABASE [bodb_Archive] REMOVE FILE [Bettransm_1512]

--remove un-use datagroup
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [Bettransm_1412]

ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [Bettransm_1501]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [Bettransm_1502]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [Bettransm_1503]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [Bettransm_1504]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [Bettransm_1505]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [Bettransm_1506]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [Bettransm_1507]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [Bettransm_1508]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [Bettransm_1509]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [Bettransm_1510]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [Bettransm_1511]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [Bettransm_1512]

GO