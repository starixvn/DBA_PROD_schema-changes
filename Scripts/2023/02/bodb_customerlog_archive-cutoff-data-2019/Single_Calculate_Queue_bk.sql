/*<info serverAlias="DBLOG-bodb_CustomerLog_Archive" executers="" viewers="" isFunction="0" isNested="0"></info>*/

exec [dbo].[DBA_CloneTableStructure]
		@SourceSchema = 'dbo',
		@SourceTable = 'Single_Calculate_Queue_bk',
		@DestinationSchema = 'dbo',
		@DestinationTable = '__switch_partition_temp',
		@RecreateIfExists = 1,
		@FileGroup = '[ps_SETTLE_monthly](logdate)'

go
alter table Single_Calculate_Queue_bk switch partition 1 to __switch_partition_temp partition 1alter table Single_Calculate_Queue_bk switch partition 2 to __switch_partition_temp partition 2alter table Single_Calculate_Queue_bk switch partition 3 to __switch_partition_temp partition 3alter table Single_Calculate_Queue_bk switch partition 4 to __switch_partition_temp partition 4alter table Single_Calculate_Queue_bk switch partition 5 to __switch_partition_temp partition 5alter table Single_Calculate_Queue_bk switch partition 6 to __switch_partition_temp partition 6alter table Single_Calculate_Queue_bk switch partition 7 to __switch_partition_temp partition 7alter table Single_Calculate_Queue_bk switch partition 8 to __switch_partition_temp partition 8alter table Single_Calculate_Queue_bk switch partition 9 to __switch_partition_temp partition 9alter table Single_Calculate_Queue_bk switch partition 10 to __switch_partition_temp partition 10alter table Single_Calculate_Queue_bk switch partition 11 to __switch_partition_temp partition 11alter table Single_Calculate_Queue_bk switch partition 12 to __switch_partition_temp partition 12

go
drop table __switch_partition_temp

go
--alter partition function pf_SETTLE_monthly() merge range (N'2019-01-31 23:59:59.997')--alter partition function pf_SETTLE_monthly() merge range (N'2019-02-28 23:59:59.997')--alter partition function pf_SETTLE_monthly() merge range (N'2019-03-31 23:59:59.997')--alter partition function pf_SETTLE_monthly() merge range (N'2019-04-30 23:59:59.997')--alter partition function pf_SETTLE_monthly() merge range (N'2019-05-31 23:59:59.997')--alter partition function pf_SETTLE_monthly() merge range (N'2019-06-30 23:59:59.997')--alter partition function pf_SETTLE_monthly() merge range (N'2019-07-31 23:59:59.997')--alter partition function pf_SETTLE_monthly() merge range (N'2019-08-31 23:59:59.997')--alter partition function pf_SETTLE_monthly() merge range (N'2019-09-30 23:59:59.997')--alter partition function pf_SETTLE_monthly() merge range (N'2019-10-31 23:59:59.997')--alter partition function pf_SETTLE_monthly() merge range (N'2019-11-30 23:59:59.997')--alter partition function pf_SETTLE_monthly() merge range (N'2019-12-31 23:59:59.997')

go
alter database [bodb_CustomerLog_Archive] remove file [SETTLE_19M01]alter database [bodb_CustomerLog_Archive] remove file [SETTLE_19M02]alter database [bodb_CustomerLog_Archive] remove file [SETTLE_19M03]alter database [bodb_CustomerLog_Archive] remove file [SETTLE_19M04]alter database [bodb_CustomerLog_Archive] remove file [SETTLE_19M05]alter database [bodb_CustomerLog_Archive] remove file [SETTLE_19M06]alter database [bodb_CustomerLog_Archive] remove file [SETTLE_19M07]alter database [bodb_CustomerLog_Archive] remove file [SETTLE_19M08]alter database [bodb_CustomerLog_Archive] remove file [SETTLE_19M09]alter database [bodb_CustomerLog_Archive] remove file [SETTLE_19M10]alter database [bodb_CustomerLog_Archive] remove file [SETTLE_19M11]alter database [bodb_CustomerLog_Archive] remove file [SETTLE_19M12]

go
alter database [bodb_CustomerLog_Archive] remove filegroup [SETTLE_19M01]alter database [bodb_CustomerLog_Archive] remove filegroup [SETTLE_19M02]alter database [bodb_CustomerLog_Archive] remove filegroup [SETTLE_19M03]alter database [bodb_CustomerLog_Archive] remove filegroup [SETTLE_19M04]alter database [bodb_CustomerLog_Archive] remove filegroup [SETTLE_19M05]alter database [bodb_CustomerLog_Archive] remove filegroup [SETTLE_19M06]alter database [bodb_CustomerLog_Archive] remove filegroup [SETTLE_19M07]alter database [bodb_CustomerLog_Archive] remove filegroup [SETTLE_19M08]alter database [bodb_CustomerLog_Archive] remove filegroup [SETTLE_19M09]alter database [bodb_CustomerLog_Archive] remove filegroup [SETTLE_19M10]alter database [bodb_CustomerLog_Archive] remove filegroup [SETTLE_19M11]alter database [bodb_CustomerLog_Archive] remove filegroup [SETTLE_19M12]

