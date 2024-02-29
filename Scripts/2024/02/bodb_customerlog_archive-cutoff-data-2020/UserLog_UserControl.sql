/*<info serverAlias="DBLOG-bodb_CustomerLog_Archive" executers="" viewers="" isFunction="0" isNested="0"></info>*/

exec [dbo].[DBA_CloneTableStructure]
		@SourceSchema = 'dbo',
		@SourceTable = 'UserLog_UserControl',
		@DestinationSchema = 'dbo',
		@DestinationTable = '__switch_partition_temp',
		@RecreateIfExists = 1,
		@FileGroup = '[ps_UserControl_monthly]([logdate])'

go
alter table UserLog_UserControl switch partition 1 to __switch_partition_temp partition 1alter table UserLog_UserControl switch partition 2 to __switch_partition_temp partition 2

go
drop table __switch_partition_temp

go
alter partition function pf_UserControl_monthly() merge range (N'2020-11-30 23:59:59.997')alter partition function pf_UserControl_monthly() merge range (N'2020-12-31 23:59:59.997')

go
alter database [bodb_CustomerLog_Archive] remove file [UserControl_20M11]alter database [bodb_CustomerLog_Archive] remove file [UserControl_20M12]

go
alter database [bodb_CustomerLog_Archive] remove filegroup [UserControl_20M11]alter database [bodb_CustomerLog_Archive] remove filegroup [UserControl_20M12]