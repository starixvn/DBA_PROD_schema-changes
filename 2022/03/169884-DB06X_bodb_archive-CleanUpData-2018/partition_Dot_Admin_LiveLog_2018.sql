/***
	Created@20220314: bobby.nguyen
	Task: #169911 - DBA clean up 2018 historical data
	Database: DB06X.bodb_Archive
***/

--table_name	partition_number	Row_Total	partition_scheme	fg_name	logical_name	Size_MB	physical_name
--Dot_Admin_LiveLog	1	30391330	ps_LiveLog_quarterly	LiveLog_18Q1	LiveLog_18Q1	966	F:\USER_DB\bodb_Archive\LiveLog\LiveLog_18Q1.ndf
--Dot_Admin_LiveLog	2	32335809	ps_LiveLog_quarterly	LiveLog_18Q2	LiveLog_18Q2	1052	F:\USER_DB\bodb_Archive\LiveLog\LiveLog_18Q2.ndf
--Dot_Admin_LiveLog	3	34234798	ps_LiveLog_quarterly	LiveLog_18Q3	LiveLog_18Q3	962	F:\USER_DB\bodb_Archive\LiveLog\LiveLog_18Q3.ndf
--Dot_Admin_LiveLog	4	52538705	ps_LiveLog_quarterly	LiveLog_18Q4	LiveLog_18Q4	988	F:\USER_DB\bodb_Archive\LiveLog\LiveLog_18Q4.ndf

BEGIN TRANSACTION
USE [bodb_archive]
CREATE TABLE [dbo].[__switch_Dot_Admin_LiveLog_partition_temp](
	[ID] [bigint] NOT NULL,
	[matchid] [int] NULL,
	[action_memo] [varchar](600) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OperatorID] [int] NULL,
	[transtime] [datetime] NOT NULL
)
WITH
(
DATA_COMPRESSION = PAGE
)
USE [bodb_archive]
CREATE CLUSTERED INDEX [__switch_Dot_Admin_LiveLog_partition_temp_CIX_MatchID] ON [dbo].[__switch_Dot_Admin_LiveLog_partition_temp]
(
	[matchid] ASC,
	[transtime] ASC
)WITH (PAD_INDEX = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [ps_LiveLog_quarterly]([transtime])
USE [bodb_archive]
CREATE NONCLUSTERED INDEX [__switch_Dot_Admin_LiveLog_partition_temp_PK_Dot_Admin_LiveLog] ON [dbo].[__switch_Dot_Admin_LiveLog_partition_temp]
(
	[ID] ASC
)
INCLUDE([transtime]) WITH (PAD_INDEX = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [ps_LiveLog_quarterly]([transtime])
COMMIT TRANSACTION
GO

USE [bodb_archive]
alter table Dot_Admin_LiveLog switch partition 1 to __switch_Dot_Admin_LiveLog_partition_temp partition 1
alter table Dot_Admin_LiveLog switch partition 2 to __switch_Dot_Admin_LiveLog_partition_temp partition 2
alter table Dot_Admin_LiveLog switch partition 3 to __switch_Dot_Admin_LiveLog_partition_temp partition 3
alter table Dot_Admin_LiveLog switch partition 4 to __switch_Dot_Admin_LiveLog_partition_temp partition 4
GO

USE [bodb_archive]
drop table [bodb_archive].[dbo].[__switch_Dot_Admin_LiveLog_partition_temp]
GO

USE [bodb_archive]
ALTER PARTITION FUNCTION pf_LiveLog_quarterly() MERGE RANGE (N'2018-03-31T23:59:59.997')
ALTER PARTITION FUNCTION pf_LiveLog_quarterly() MERGE RANGE (N'2018-06-30T23:59:59.997')
ALTER PARTITION FUNCTION pf_LiveLog_quarterly() MERGE RANGE (N'2018-09-30T23:59:59.997')
ALTER PARTITION FUNCTION pf_LiveLog_quarterly() MERGE RANGE (N'2018-12-31T23:59:59.997')
GO

USE master
ALTER DATABASE bodb_archive REMOVE FILE [LiveLog_18Q1]
ALTER DATABASE bodb_archive REMOVE FILE [LiveLog_18Q2]
ALTER DATABASE bodb_archive REMOVE FILE [LiveLog_18Q3]
ALTER DATABASE bodb_archive REMOVE FILE [LiveLog_18Q4]
GO

USE master
ALTER DATABASE bodb_archive REMOVE FILEGROUP [LiveLog_18Q1]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [LiveLog_18Q2]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [LiveLog_18Q3]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [LiveLog_18Q4]
GO