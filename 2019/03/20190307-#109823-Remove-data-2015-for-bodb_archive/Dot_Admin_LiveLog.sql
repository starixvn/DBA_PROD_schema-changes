
/*
	Task - Remove data 2015 for bodb_archive @ Dot_Admin_LiveLog
	Run on DB06.bodb_archive
*/

--clone schema
exec [dbo].[DBA_CloneTableStructure]
    @SourceSchema = 'dbo',
    @SourceTable = 'Dot_Admin_LiveLog',
    @DestinationSchema = 'dbo',
    @DestinationTable = 'Dot_Admin_LiveLog_v2',
    @RecreateIfExists = 1,
	@FileGroup = '[ps_LiveLog_quarterly]([transtime])'


--move data 2015 to new table
ALTER TABLE Dot_Admin_LiveLog SWITCH PARTITION 1 TO Dot_Admin_LiveLog_v2 PARTITION 1 
ALTER TABLE Dot_Admin_LiveLog SWITCH PARTITION 2 TO Dot_Admin_LiveLog_v2 PARTITION 2 
ALTER TABLE Dot_Admin_LiveLog SWITCH PARTITION 3 TO Dot_Admin_LiveLog_v2 PARTITION 3 
ALTER TABLE Dot_Admin_LiveLog SWITCH PARTITION 4 TO Dot_Admin_LiveLog_v2 PARTITION 4 
ALTER TABLE Dot_Admin_LiveLog SWITCH PARTITION 5 TO Dot_Admin_LiveLog_v2 PARTITION 5 
ALTER TABLE Dot_Admin_LiveLog SWITCH PARTITION 6 TO Dot_Admin_LiveLog_v2 PARTITION 6 
ALTER TABLE Dot_Admin_LiveLog SWITCH PARTITION 7 TO Dot_Admin_LiveLog_v2 PARTITION 7 
ALTER TABLE Dot_Admin_LiveLog SWITCH PARTITION 8 TO Dot_Admin_LiveLog_v2 PARTITION 8 
ALTER TABLE Dot_Admin_LiveLog SWITCH PARTITION 9 TO Dot_Admin_LiveLog_v2 PARTITION 9 
ALTER TABLE Dot_Admin_LiveLog SWITCH PARTITION 10 TO Dot_Admin_LiveLog_v2 PARTITION 10
ALTER TABLE Dot_Admin_LiveLog SWITCH PARTITION 11 TO Dot_Admin_LiveLog_v2 PARTITION 11
ALTER TABLE Dot_Admin_LiveLog SWITCH PARTITION 12 TO Dot_Admin_LiveLog_v2 PARTITION 12
ALTER TABLE Dot_Admin_LiveLog SWITCH PARTITION 13 TO Dot_Admin_LiveLog_v2 PARTITION 13
ALTER TABLE Dot_Admin_LiveLog SWITCH PARTITION 14 TO Dot_Admin_LiveLog_v2 PARTITION 14
ALTER TABLE Dot_Admin_LiveLog SWITCH PARTITION 15 TO Dot_Admin_LiveLog_v2 PARTITION 15
ALTER TABLE Dot_Admin_LiveLog SWITCH PARTITION 16 TO Dot_Admin_LiveLog_v2 PARTITION 16


--check data

-- delete Dot_Admin_LiveLog_v2
DROP TABLE Dot_Admin_LiveLog_v2

--merge partitions for 2015 year
ALTER partition function pf_LiveLog_quarterly() merge range (N'2012-03-31 23:59:59.997')
ALTER partition function pf_LiveLog_quarterly() merge range (N'2012-06-30 23:59:59.997')
ALTER partition function pf_LiveLog_quarterly() merge range (N'2012-09-30 23:59:59.997')
ALTER partition function pf_LiveLog_quarterly() merge range (N'2012-12-31 23:59:59.997')
ALTER partition function pf_LiveLog_quarterly() merge range (N'2013-03-31 23:59:59.997')
ALTER partition function pf_LiveLog_quarterly() merge range (N'2013-06-30 23:59:59.997')
ALTER partition function pf_LiveLog_quarterly() merge range (N'2013-09-30 23:59:59.997')
ALTER partition function pf_LiveLog_quarterly() merge range (N'2013-12-31 23:59:59.997')
ALTER partition function pf_LiveLog_quarterly() merge range (N'2014-03-31 23:59:59.997')
ALTER partition function pf_LiveLog_quarterly() merge range (N'2014-06-30 23:59:59.997')
ALTER partition function pf_LiveLog_quarterly() merge range (N'2014-09-30 23:59:59.997')
ALTER partition function pf_LiveLog_quarterly() merge range (N'2014-12-31 23:59:59.997')
ALTER partition function pf_LiveLog_quarterly() merge range (N'2015-03-31 23:59:59.997')
ALTER partition function pf_LiveLog_quarterly() merge range (N'2015-06-30 23:59:59.997')
ALTER partition function pf_LiveLog_quarterly() merge range (N'2015-09-30 23:59:59.997')
ALTER partition function pf_LiveLog_quarterly() merge range (N'2015-12-31 23:59:59.997')

--remove un-use data file
ALTER DATABASE [bodb_Archive] REMOVE FILE [LiveLog_12Q1]
ALTER DATABASE [bodb_Archive] REMOVE FILE [LiveLog_12Q2]
ALTER DATABASE [bodb_Archive] REMOVE FILE [LiveLog_12Q3]
ALTER DATABASE [bodb_Archive] REMOVE FILE [LiveLog_12Q4]
ALTER DATABASE [bodb_Archive] REMOVE FILE [LiveLog_13Q1]
ALTER DATABASE [bodb_Archive] REMOVE FILE [LiveLog_13Q2]
ALTER DATABASE [bodb_Archive] REMOVE FILE [LiveLog_13Q3]
ALTER DATABASE [bodb_Archive] REMOVE FILE [LiveLog_13Q4]
ALTER DATABASE [bodb_Archive] REMOVE FILE [LiveLog_14Q1]
ALTER DATABASE [bodb_Archive] REMOVE FILE [LiveLog_14Q2]
ALTER DATABASE [bodb_Archive] REMOVE FILE [LiveLog_14Q3]
ALTER DATABASE [bodb_Archive] REMOVE FILE [LiveLog_14Q4]
ALTER DATABASE [bodb_Archive] REMOVE FILE [LiveLog_15Q1]
ALTER DATABASE [bodb_Archive] REMOVE FILE [LiveLog_15Q2]
ALTER DATABASE [bodb_Archive] REMOVE FILE [LiveLog_15Q3]
ALTER DATABASE [bodb_Archive] REMOVE FILE [LiveLog_15Q4]

--remove un-use datagroup
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [LiveLog_12Q1]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [LiveLog_12Q2]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [LiveLog_12Q3]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [LiveLog_12Q4]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [LiveLog_13Q1]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [LiveLog_13Q2]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [LiveLog_13Q3]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [LiveLog_13Q4]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [LiveLog_14Q1]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [LiveLog_14Q2]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [LiveLog_14Q3]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [LiveLog_14Q4]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [LiveLog_15Q1]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [LiveLog_15Q2]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [LiveLog_15Q3]
ALTER DATABASE [bodb_Archive] REMOVE FILEGROUP [LiveLog_15Q4]
