/*<info serverAlias="DBARC-bodb_Archive"></info>*/
/*
	Task remove data 2017 year in bodb_Archive
	Run on DB06x.bodb_Archive
*/

exec [dbo].[DBA_CloneTableStructure]
		@SourceSchema = 'dbo',
		@SourceTable = 'bettrans_bk',
		@DestinationSchema = 'dbo',
		@DestinationTable = '__switch_partition_temp',
		@RecreateIfExists = 1,
		@FileGroup = '[ps_bettrans_monthly]([winlostdate])'


go

alter table bettrans_bk switch partition 1 to __switch_partition_temp partition 1
alter table bettrans_bk switch partition 2 to __switch_partition_temp partition 2
alter table bettrans_bk switch partition 3 to __switch_partition_temp partition 3
alter table bettrans_bk switch partition 4 to __switch_partition_temp partition 4
alter table bettrans_bk switch partition 5 to __switch_partition_temp partition 5
alter table bettrans_bk switch partition 6 to __switch_partition_temp partition 6
alter table bettrans_bk switch partition 7 to __switch_partition_temp partition 7
alter table bettrans_bk switch partition 8 to __switch_partition_temp partition 8
alter table bettrans_bk switch partition 9 to __switch_partition_temp partition 9
alter table bettrans_bk switch partition 10 to __switch_partition_temp partition 10
alter table bettrans_bk switch partition 11 to __switch_partition_temp partition 11
alter table bettrans_bk switch partition 12 to __switch_partition_temp partition 12


go
drop table __switch_partition_temp


go

alter partition function pf_bettrans_monthly() merge range (N'2017-01-31 23:59:00.000')
alter partition function pf_bettrans_monthly() merge range (N'2017-02-28 23:59:00.000')
alter partition function pf_bettrans_monthly() merge range (N'2017-03-31 23:59:00.000')
alter partition function pf_bettrans_monthly() merge range (N'2017-04-30 23:59:00.000')
alter partition function pf_bettrans_monthly() merge range (N'2017-05-31 23:59:00.000')
alter partition function pf_bettrans_monthly() merge range (N'2017-06-30 23:59:00.000')
alter partition function pf_bettrans_monthly() merge range (N'2017-07-31 23:59:00.000')
alter partition function pf_bettrans_monthly() merge range (N'2017-08-31 23:59:00.000')
alter partition function pf_bettrans_monthly() merge range (N'2017-09-30 23:59:00.000')
alter partition function pf_bettrans_monthly() merge range (N'2017-10-31 23:59:00.000')
alter partition function pf_bettrans_monthly() merge range (N'2017-11-30 23:59:00.000')
alter partition function pf_bettrans_monthly() merge range (N'2017-12-31 23:59:00.000')


go

alter database [bodb_archive] remove file [Bettrans_1701]
alter database [bodb_archive] remove file [Bettrans_1702]
alter database [bodb_archive] remove file [Bettrans_1703]
alter database [bodb_archive] remove file [Bettrans_1704]
alter database [bodb_archive] remove file [Bettrans_1705]
alter database [bodb_archive] remove file [Bettrans_1706]
alter database [bodb_archive] remove file [Bettrans_1707]
alter database [bodb_archive] remove file [Bettrans_1708]
alter database [bodb_archive] remove file [Bettrans_1709]
alter database [bodb_archive] remove file [Bettrans_1710]
alter database [bodb_archive] remove file [Bettrans_1711]
alter database [bodb_archive] remove file [Bettrans_1712]


go

alter database [bodb_archive] remove filegroup [Bettrans_1701]
alter database [bodb_archive] remove filegroup [Bettrans_1702]
alter database [bodb_archive] remove filegroup [Bettrans_1703]
alter database [bodb_archive] remove filegroup [Bettrans_1704]
alter database [bodb_archive] remove filegroup [Bettrans_1705]
alter database [bodb_archive] remove filegroup [Bettrans_1706]
alter database [bodb_archive] remove filegroup [Bettrans_1707]
alter database [bodb_archive] remove filegroup [Bettrans_1708]
alter database [bodb_archive] remove filegroup [Bettrans_1709]
alter database [bodb_archive] remove filegroup [Bettrans_1710]
alter database [bodb_archive] remove filegroup [Bettrans_1711]
alter database [bodb_archive] remove filegroup [Bettrans_1712]