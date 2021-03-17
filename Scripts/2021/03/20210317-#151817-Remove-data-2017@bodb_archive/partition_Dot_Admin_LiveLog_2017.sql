/*
	Task remove data 2017 year in bodb_Archive
	Run on DB06x.bodb_Archive
*/

exec [dbo].[DBA_CloneTableStructure]
		@SourceSchema = 'dbo',
		@SourceTable = 'Dot_Admin_LiveLog',
		@DestinationSchema = 'dbo',
		@DestinationTable = '__switch_partition_temp',
		@RecreateIfExists = 1,
		@FileGroup = '[ps_LiveLog_quarterly]([transtime])'


go

alter table Dot_Admin_LiveLog switch partition 1 to __switch_partition_temp partition 1
alter table Dot_Admin_LiveLog switch partition 2 to __switch_partition_temp partition 2
alter table Dot_Admin_LiveLog switch partition 3 to __switch_partition_temp partition 3
alter table Dot_Admin_LiveLog switch partition 4 to __switch_partition_temp partition 4


go
drop table __switch_partition_temp


go

alter partition function pf_LiveLog_quarterly() merge range (N'2017-03-31 23:59:59.997')
alter partition function pf_LiveLog_quarterly() merge range (N'2017-06-30 23:59:59.997')
alter partition function pf_LiveLog_quarterly() merge range (N'2017-09-30 23:59:59.997')
alter partition function pf_LiveLog_quarterly() merge range (N'2017-12-31 23:59:59.997')


go

alter database [bodb_archive] remove file [LiveLog_17Q1]
alter database [bodb_archive] remove file [LiveLog_17Q2]
alter database [bodb_archive] remove file [LiveLog_17Q3]
alter database [bodb_archive] remove file [LiveLog_17Q4]


go

alter database [bodb_archive] remove filegroup [LiveLog_17Q1]
alter database [bodb_archive] remove filegroup [LiveLog_17Q2]
alter database [bodb_archive] remove filegroup [LiveLog_17Q3]
alter database [bodb_archive] remove filegroup [LiveLog_17Q4]

