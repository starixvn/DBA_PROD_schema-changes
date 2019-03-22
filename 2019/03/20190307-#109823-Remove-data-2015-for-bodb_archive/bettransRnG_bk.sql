
/*
	Task - Remove data 2015 for bodb_archive @ bettransRnG_bk
	Run on DB06.bodb_archive
*/

--clone schema
exec [dbo].[DBA_CloneTableStructure]
    @SourceSchema = 'dbo',
    @SourceTable = 'bettransRnG_bk',
    @DestinationSchema = 'dbo',
    @DestinationTable = 'bettransRnG_bk_v2',
    @RecreateIfExists = 1,
	@FileGroup = '[ps_BETRNG_monthly_new]([winlostdate])'
	
--move data 2015 to new table
ALTER TABLE bettransRnG_bk SWITCH PARTITION 10 TO bettransRnG_bk_v2 PARTITION 10
ALTER TABLE bettransRnG_bk SWITCH PARTITION 11 TO bettransRnG_bk_v2 PARTITION 11
ALTER TABLE bettransRnG_bk SWITCH PARTITION 12 TO bettransRnG_bk_v2 PARTITION 12

--check data

-- delete bettransRnG_bk_v2
DROP TABLE bettransRnG_bk_v2

--merge partitions for 2015 year
ALTER partition function pf_BETRNG_monthly_new() merge range (N'2015-01-31 23:59:00.000')
ALTER partition function pf_BETRNG_monthly_new() merge range (N'2015-02-28 23:59:00.000')
ALTER partition function pf_BETRNG_monthly_new() merge range (N'2015-03-31 23:59:00.000')
ALTER partition function pf_BETRNG_monthly_new() merge range (N'2015-04-30 23:59:00.000')
ALTER partition function pf_BETRNG_monthly_new() merge range (N'2015-05-31 23:59:00.000')
ALTER partition function pf_BETRNG_monthly_new() merge range (N'2015-06-30 23:59:00.000')
ALTER partition function pf_BETRNG_monthly_new() merge range (N'2015-07-31 23:59:00.000')
ALTER partition function pf_BETRNG_monthly_new() merge range (N'2015-08-31 23:59:00.000')
ALTER partition function pf_BETRNG_monthly_new() merge range (N'2015-09-30 23:59:00.000')
ALTER partition function pf_BETRNG_monthly_new() merge range (N'2015-10-31 23:59:00.000')
ALTER partition function pf_BETRNG_monthly_new() merge range (N'2015-11-30 23:59:00.000')
ALTER partition function pf_BETRNG_monthly_new() merge range (N'2015-12-31 23:59:00.000')

--remove un-use data file
ALTER DATABASE [bodb_Archive] REMOVE FILE [BETRNG_15M01_new]
ALTER DATABASE [bodb_Archive] REMOVE FILE [BETRNG_15M02_new]
ALTER DATABASE [bodb_Archive] REMOVE FILE [BETRNG_15M03_new]
ALTER DATABASE [bodb_Archive] REMOVE FILE [BETRNG_15M04_new]
ALTER DATABASE [bodb_Archive] REMOVE FILE [BETRNG_15M05_new]
ALTER DATABASE [bodb_Archive] REMOVE FILE [BETRNG_15M06_new]
ALTER DATABASE [bodb_Archive] REMOVE FILE [BETRNG_15M07_new]
ALTER DATABASE [bodb_Archive] REMOVE FILE [BETRNG_15M08_new]
ALTER DATABASE [bodb_Archive] REMOVE FILE [BETRNG_15M09_new]
ALTER DATABASE [bodb_Archive] REMOVE FILE [BETRNG_15M10_new]
ALTER DATABASE [bodb_Archive] REMOVE FILE [BETRNG_15M11_new]
ALTER DATABASE [bodb_Archive] REMOVE FILE [BETRNG_15M12_new]

--remove un-use datagroup
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [BETRNG_15M01_new]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [BETRNG_15M02_new]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [BETRNG_15M03_new]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [BETRNG_15M04_new]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [BETRNG_15M05_new]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [BETRNG_15M06_new]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [BETRNG_15M07_new]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [BETRNG_15M08_new]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [BETRNG_15M09_new]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [BETRNG_15M10_new]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [BETRNG_15M11_new]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [BETRNG_15M12_new]

GO