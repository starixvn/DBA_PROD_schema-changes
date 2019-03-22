
/*
	Task - Remove data 2015 for bodb_archive @ bettransG
	Run on DB06.bodb_archive
*/

--clone schema
exec [dbo].[DBA_CloneTableStructure]
    @SourceSchema = 'dbo',
    @SourceTable = 'bettransG',
    @DestinationSchema = 'dbo',
    @DestinationTable = 'bettransG_v2',
    @RecreateIfExists = 1,
	@FileGroup = '[ps_BETG_monthly]([winlostdate])'
	
--move data 2015 to new table
ALTER TABLE bettransG SWITCH PARTITION 2 TO bettransG_v2 PARTITION 2 
ALTER TABLE bettransG SWITCH PARTITION 3 TO bettransG_v2 PARTITION 3 
ALTER TABLE bettransG SWITCH PARTITION 4 TO bettransG_v2 PARTITION 4 
ALTER TABLE bettransG SWITCH PARTITION 5 TO bettransG_v2 PARTITION 5 
ALTER TABLE bettransG SWITCH PARTITION 6 TO bettransG_v2 PARTITION 6 
ALTER TABLE bettransG SWITCH PARTITION 7 TO bettransG_v2 PARTITION 7 
ALTER TABLE bettransG SWITCH PARTITION 8 TO bettransG_v2 PARTITION 8 
ALTER TABLE bettransG SWITCH PARTITION 9 TO bettransG_v2 PARTITION 9 
ALTER TABLE bettransG SWITCH PARTITION 10 TO bettransG_v2 PARTITION 10
ALTER TABLE bettransG SWITCH PARTITION 11 TO bettransG_v2 PARTITION 11
ALTER TABLE bettransG SWITCH PARTITION 12 TO bettransG_v2 PARTITION 12
ALTER TABLE bettransG SWITCH PARTITION 13 TO bettransG_v2 PARTITION 13

--check data

-- delete bettransG_v2
DROP TABLE bettransG_v2

--merge partitions for 2015 year
ALTER partition function pf_BETG_monthly() merge range (N'2014-12-31 23:59:00.000')
ALTER partition function pf_BETG_monthly() merge range (N'2015-01-31 23:59:00.000')
ALTER partition function pf_BETG_monthly() merge range (N'2015-02-28 23:59:00.000')
ALTER partition function pf_BETG_monthly() merge range (N'2015-03-31 23:59:00.000')
ALTER partition function pf_BETG_monthly() merge range (N'2015-04-30 23:59:00.000')
ALTER partition function pf_BETG_monthly() merge range (N'2015-05-31 23:59:00.000')
ALTER partition function pf_BETG_monthly() merge range (N'2015-06-30 23:59:00.000')
ALTER partition function pf_BETG_monthly() merge range (N'2015-07-31 23:59:00.000')
ALTER partition function pf_BETG_monthly() merge range (N'2015-08-31 23:59:00.000')
ALTER partition function pf_BETG_monthly() merge range (N'2015-09-30 23:59:00.000')
ALTER partition function pf_BETG_monthly() merge range (N'2015-10-31 23:59:00.000')
ALTER partition function pf_BETG_monthly() merge range (N'2015-11-30 23:59:00.000')
ALTER partition function pf_BETG_monthly() merge range (N'2015-12-31 23:59:00.000')

--remove un-use data file
ALTER DATABASE [bodb_Archive] REMOVE FILE [BETG_1412]

ALTER DATABASE [bodb_Archive] REMOVE FILE [BETG_15M01]
ALTER DATABASE [bodb_Archive] REMOVE FILE [BETG_15M02]
ALTER DATABASE [bodb_Archive] REMOVE FILE [BETG_15M03]
ALTER DATABASE [bodb_Archive] REMOVE FILE [BETG_15M04]
ALTER DATABASE [bodb_Archive] REMOVE FILE [BETG_15M05]
ALTER DATABASE [bodb_Archive] REMOVE FILE [BETG_15M06]
ALTER DATABASE [bodb_Archive] REMOVE FILE [BETG_15M07]
ALTER DATABASE [bodb_Archive] REMOVE FILE [BETG_15M08]
ALTER DATABASE [bodb_Archive] REMOVE FILE [BETG_15M09]
ALTER DATABASE [bodb_Archive] REMOVE FILE [BETG_15M10]
ALTER DATABASE [bodb_Archive] REMOVE FILE [BETG_15M11]
ALTER DATABASE [bodb_Archive] REMOVE FILE [BETG_15M12]

--remove un-use datagroup
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [BETG_1412]

ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [BETG_15M01]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [BETG_15M02]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [BETG_15M03]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [BETG_15M04]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [BETG_15M05]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [BETG_15M06]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [BETG_15M07]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [BETG_15M08]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [BETG_15M09]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [BETG_15M10]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [BETG_15M11]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [BETG_15M12]

GO