/*<info serverAlias="DBARC-bodb_Archive"></info>*/
/*
	Task remove data 2017 year in bodb_Archive
	Run on DB06x.bodb_Archive
*/

exec [dbo].[DBA_CloneTableStructure]
		@SourceSchema = 'dbo',
		@SourceTable = 'transfer_bk',
		@DestinationSchema = 'dbo',
		@DestinationTable = '__switch_partition_temp',
		@RecreateIfExists = 1,
		@FileGroup = '[ps_TRANSBK_monthly]([winlostdate])'


go

alter table transfer_bk switch partition 1 to __switch_partition_temp partition 1
alter table transfer_bk switch partition 2 to __switch_partition_temp partition 2
alter table transfer_bk switch partition 3 to __switch_partition_temp partition 3
alter table transfer_bk switch partition 4 to __switch_partition_temp partition 4
alter table transfer_bk switch partition 5 to __switch_partition_temp partition 5
alter table transfer_bk switch partition 6 to __switch_partition_temp partition 6
alter table transfer_bk switch partition 7 to __switch_partition_temp partition 7
alter table transfer_bk switch partition 8 to __switch_partition_temp partition 8
alter table transfer_bk switch partition 9 to __switch_partition_temp partition 9
alter table transfer_bk switch partition 10 to __switch_partition_temp partition 10
alter table transfer_bk switch partition 11 to __switch_partition_temp partition 11
alter table transfer_bk switch partition 12 to __switch_partition_temp partition 12


go
drop table __switch_partition_temp


go

alter partition function pf_TRANSBK_monthly() merge range (N'2017-01-31 23:59:00.000')
alter partition function pf_TRANSBK_monthly() merge range (N'2017-02-28 23:59:00.000')
alter partition function pf_TRANSBK_monthly() merge range (N'2017-03-31 23:59:00.000')
alter partition function pf_TRANSBK_monthly() merge range (N'2017-04-30 23:59:00.000')
alter partition function pf_TRANSBK_monthly() merge range (N'2017-05-31 23:59:00.000')
alter partition function pf_TRANSBK_monthly() merge range (N'2017-06-30 23:59:00.000')
alter partition function pf_TRANSBK_monthly() merge range (N'2017-07-31 23:59:00.000')
alter partition function pf_TRANSBK_monthly() merge range (N'2017-08-31 23:59:00.000')
alter partition function pf_TRANSBK_monthly() merge range (N'2017-09-30 23:59:00.000')
alter partition function pf_TRANSBK_monthly() merge range (N'2017-10-31 23:59:00.000')
alter partition function pf_TRANSBK_monthly() merge range (N'2017-11-30 23:59:00.000')
alter partition function pf_TRANSBK_monthly() merge range (N'2017-12-31 23:59:00.000')


go

alter database [bodb_archive] remove file [TRANSBK_17M01]
alter database [bodb_archive] remove file [TRANSBK_17M02]
alter database [bodb_archive] remove file [TRANSBK_17M03]
alter database [bodb_archive] remove file [TRANSBK_17M04]
alter database [bodb_archive] remove file [TRANSBK_17M05]
alter database [bodb_archive] remove file [TRANSBK_17M06]
alter database [bodb_archive] remove file [TRANSBK_17M07]
alter database [bodb_archive] remove file [TRANSBK_17M08]
alter database [bodb_archive] remove file [TRANSBK_17M09]
alter database [bodb_archive] remove file [TRANSBK_17M10]
alter database [bodb_archive] remove file [TRANSBK_17M11]
alter database [bodb_archive] remove file [TRANSBK_17M12]


go

alter database [bodb_archive] remove filegroup [TRANSBK_17M01]
alter database [bodb_archive] remove filegroup [TRANSBK_17M02]
alter database [bodb_archive] remove filegroup [TRANSBK_17M03]
alter database [bodb_archive] remove filegroup [TRANSBK_17M04]
alter database [bodb_archive] remove filegroup [TRANSBK_17M05]
alter database [bodb_archive] remove filegroup [TRANSBK_17M06]
alter database [bodb_archive] remove filegroup [TRANSBK_17M07]
alter database [bodb_archive] remove filegroup [TRANSBK_17M08]
alter database [bodb_archive] remove filegroup [TRANSBK_17M09]
alter database [bodb_archive] remove filegroup [TRANSBK_17M10]
alter database [bodb_archive] remove filegroup [TRANSBK_17M11]
alter database [bodb_archive] remove filegroup [TRANSBK_17M12]

