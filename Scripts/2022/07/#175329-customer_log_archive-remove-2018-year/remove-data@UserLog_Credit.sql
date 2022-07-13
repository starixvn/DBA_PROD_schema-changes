/*<info serverAlias="DBLOG-bodb_CustomerLog_Archive"></info>*/

/* Task: Remove data of table: UserLog_Credit on 2018 year */


use bodb_CustomerLog_Archive
go


exec [dbo].[DBA_CloneTableStructure]
		@SourceSchema = 'dbo',
		@SourceTable = 'UserLog_Credit',
		@DestinationSchema = 'dbo',
		@DestinationTable = '__switch_partition_temp',
		@RecreateIfExists = 1,
		@FileGroup = '[ps_CREDIT_monthly]([logdate])'


go

alter table UserLog_Credit switch partition 1 to __switch_partition_temp partition 1
alter table UserLog_Credit switch partition 2 to __switch_partition_temp partition 2
alter table UserLog_Credit switch partition 3 to __switch_partition_temp partition 3
alter table UserLog_Credit switch partition 4 to __switch_partition_temp partition 4
alter table UserLog_Credit switch partition 5 to __switch_partition_temp partition 5
alter table UserLog_Credit switch partition 6 to __switch_partition_temp partition 6
alter table UserLog_Credit switch partition 7 to __switch_partition_temp partition 7
alter table UserLog_Credit switch partition 8 to __switch_partition_temp partition 8
alter table UserLog_Credit switch partition 9 to __switch_partition_temp partition 9
alter table UserLog_Credit switch partition 10 to __switch_partition_temp partition 10
alter table UserLog_Credit switch partition 11 to __switch_partition_temp partition 11
alter table UserLog_Credit switch partition 12 to __switch_partition_temp partition 12


go
drop table __switch_partition_temp


go

alter partition function pf_CREDIT_monthly() merge range (N'2018-01-31 23:59:59.997')
alter partition function pf_CREDIT_monthly() merge range (N'2018-02-28 23:59:59.997')
alter partition function pf_CREDIT_monthly() merge range (N'2018-03-31 23:59:59.997')
alter partition function pf_CREDIT_monthly() merge range (N'2018-04-30 23:59:59.997')
alter partition function pf_CREDIT_monthly() merge range (N'2018-05-31 23:59:59.997')
alter partition function pf_CREDIT_monthly() merge range (N'2018-06-30 23:59:59.997')
alter partition function pf_CREDIT_monthly() merge range (N'2018-07-31 23:59:59.997')
alter partition function pf_CREDIT_monthly() merge range (N'2018-08-31 23:59:59.997')
alter partition function pf_CREDIT_monthly() merge range (N'2018-09-30 23:59:59.997')
alter partition function pf_CREDIT_monthly() merge range (N'2018-10-31 23:59:59.997')
alter partition function pf_CREDIT_monthly() merge range (N'2018-11-30 23:59:59.997')
alter partition function pf_CREDIT_monthly() merge range (N'2018-12-31 23:59:59.997')


go

alter database [bodb_CustomerLog_Archive] remove file [CREDIT_18M01]
alter database [bodb_CustomerLog_Archive] remove file [CREDIT_18M02]
alter database [bodb_CustomerLog_Archive] remove file [CREDIT_18M03]
alter database [bodb_CustomerLog_Archive] remove file [CREDIT_18M04]
alter database [bodb_CustomerLog_Archive] remove file [CREDIT_18M05]
alter database [bodb_CustomerLog_Archive] remove file [CREDIT_18M06]
alter database [bodb_CustomerLog_Archive] remove file [CREDIT_18M07]
alter database [bodb_CustomerLog_Archive] remove file [CREDIT_18M08]
alter database [bodb_CustomerLog_Archive] remove file [CREDIT_18M09]
alter database [bodb_CustomerLog_Archive] remove file [CREDIT_18M10]
alter database [bodb_CustomerLog_Archive] remove file [CREDIT_18M11]
alter database [bodb_CustomerLog_Archive] remove file [CREDIT_18M12]


go

alter database [bodb_CustomerLog_Archive] remove filegroup [CREDIT_18M01]
alter database [bodb_CustomerLog_Archive] remove filegroup [CREDIT_18M02]
alter database [bodb_CustomerLog_Archive] remove filegroup [CREDIT_18M03]
alter database [bodb_CustomerLog_Archive] remove filegroup [CREDIT_18M04]
alter database [bodb_CustomerLog_Archive] remove filegroup [CREDIT_18M05]
alter database [bodb_CustomerLog_Archive] remove filegroup [CREDIT_18M06]
alter database [bodb_CustomerLog_Archive] remove filegroup [CREDIT_18M07]
alter database [bodb_CustomerLog_Archive] remove filegroup [CREDIT_18M08]
alter database [bodb_CustomerLog_Archive] remove filegroup [CREDIT_18M09]
alter database [bodb_CustomerLog_Archive] remove filegroup [CREDIT_18M10]
alter database [bodb_CustomerLog_Archive] remove filegroup [CREDIT_18M11]
alter database [bodb_CustomerLog_Archive] remove filegroup [CREDIT_18M12]

