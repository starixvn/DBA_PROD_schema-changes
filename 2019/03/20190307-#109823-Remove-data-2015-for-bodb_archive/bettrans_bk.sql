
/*
	Task - Remove data 2015 for bodb_archive @ bettrans_bk
	Run on DB06.bodb_archive
*/

--clone schema
exec [dbo].[DBA_CloneTableStructure]
    @SourceSchema = 'dbo',
    @SourceTable = 'bettrans_bk',
    @DestinationSchema = 'dbo',
    @DestinationTable = 'bettrans_bk_v2',
    @RecreateIfExists = 1,
	@FileGroup = '[ps_bettrans_monthly]([winlostdate])'


--move data 2015 to new table
ALTER TABLE bettrans_bk SWITCH PARTITION 2 TO bettrans_bk_v2 PARTITION 2 
ALTER TABLE bettrans_bk SWITCH PARTITION 3 TO bettrans_bk_v2 PARTITION 3 
ALTER TABLE bettrans_bk SWITCH PARTITION 4 TO bettrans_bk_v2 PARTITION 4 
ALTER TABLE bettrans_bk SWITCH PARTITION 5 TO bettrans_bk_v2 PARTITION 5 
ALTER TABLE bettrans_bk SWITCH PARTITION 6 TO bettrans_bk_v2 PARTITION 6 
ALTER TABLE bettrans_bk SWITCH PARTITION 7 TO bettrans_bk_v2 PARTITION 7 
ALTER TABLE bettrans_bk SWITCH PARTITION 8 TO bettrans_bk_v2 PARTITION 8 
ALTER TABLE bettrans_bk SWITCH PARTITION 9 TO bettrans_bk_v2 PARTITION 9 
ALTER TABLE bettrans_bk SWITCH PARTITION 10 TO bettrans_bk_v2 PARTITION 10
ALTER TABLE bettrans_bk SWITCH PARTITION 11 TO bettrans_bk_v2 PARTITION 11
ALTER TABLE bettrans_bk SWITCH PARTITION 12 TO bettrans_bk_v2 PARTITION 12
ALTER TABLE bettrans_bk SWITCH PARTITION 13 TO bettrans_bk_v2 PARTITION 13

--check data

-- delete bettrans_bk_v2
DROP TABLE bettrans_bk_v2

--merge partitions for 2015 year
ALTER partition function pf_bettrans_monthly() merge range (N'2014-12-31 23:59:00.000')
ALTER partition function pf_bettrans_monthly() merge range (N'2015-01-31 23:59:00.000')
ALTER partition function pf_bettrans_monthly() merge range (N'2015-02-28 23:59:00.000')
ALTER partition function pf_bettrans_monthly() merge range (N'2015-03-31 23:59:00.000')
ALTER partition function pf_bettrans_monthly() merge range (N'2015-04-30 23:59:00.000')
ALTER partition function pf_bettrans_monthly() merge range (N'2015-05-31 23:59:00.000')
ALTER partition function pf_bettrans_monthly() merge range (N'2015-06-30 23:59:00.000')
ALTER partition function pf_bettrans_monthly() merge range (N'2015-07-31 23:59:00.000')
ALTER partition function pf_bettrans_monthly() merge range (N'2015-08-31 23:59:00.000')
ALTER partition function pf_bettrans_monthly() merge range (N'2015-09-30 23:59:00.000')
ALTER partition function pf_bettrans_monthly() merge range (N'2015-10-31 23:59:00.000')
ALTER partition function pf_bettrans_monthly() merge range (N'2015-11-30 23:59:00.000')
ALTER partition function pf_bettrans_monthly() merge range (N'2015-12-31 23:59:00.000')

--remove un-use data file
ALTER DATABASE [bodb_Archive] REMOVE FILE [Bettrans_1412]
ALTER DATABASE [bodb_Archive] REMOVE FILE [Bettrans_1501]
ALTER DATABASE [bodb_Archive] REMOVE FILE [Bettrans_1502]
ALTER DATABASE [bodb_Archive] REMOVE FILE [Bettrans_1503]
ALTER DATABASE [bodb_Archive] REMOVE FILE [Bettrans_1504]
ALTER DATABASE [bodb_Archive] REMOVE FILE [Bettrans_1505]
ALTER DATABASE [bodb_Archive] REMOVE FILE [Bettrans_1506]
ALTER DATABASE [bodb_Archive] REMOVE FILE [Bettrans_1507]
ALTER DATABASE [bodb_Archive] REMOVE FILE [Bettrans_1508]
ALTER DATABASE [bodb_Archive] REMOVE FILE [Bettrans_1509]
ALTER DATABASE [bodb_Archive] REMOVE FILE [Bettrans_1510]
ALTER DATABASE [bodb_Archive] REMOVE FILE [Bettrans_1511]
ALTER DATABASE [bodb_Archive] REMOVE FILE [Bettrans_1512]

--remove un-use datagroup
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [Bettrans_1412]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [Bettrans_1501]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [Bettrans_1502]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [Bettrans_1503]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [Bettrans_1504]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [Bettrans_1505]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [Bettrans_1506]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [Bettrans_1507]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [Bettrans_1508]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [Bettrans_1509]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [Bettrans_1510]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [Bettrans_1511]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [Bettrans_1512]
