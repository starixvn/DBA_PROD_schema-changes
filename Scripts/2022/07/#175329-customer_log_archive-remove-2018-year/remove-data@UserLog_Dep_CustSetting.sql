/*<info serverAlias="DBLOG-bodb_CustomerLog_Archive"></info>*/

/* Task: Remove data of table: UserLog_Dep_CustSetting on 2018 year */


use bodb_CustomerLog_Archive
go


exec [dbo].[DBA_CloneTableStructure]
		@SourceSchema = 'dbo',
		@SourceTable = 'UserLog_Dep_CustSetting',
		@DestinationSchema = 'dbo',
		@DestinationTable = '__switch_partition_temp',
		@RecreateIfExists = 1,
		@FileGroup = '[ps_Dep_CustSetting_monthly]([logdate])'


go

alter table UserLog_Dep_CustSetting switch partition 1 to __switch_partition_temp partition 1
alter table UserLog_Dep_CustSetting switch partition 2 to __switch_partition_temp partition 2
alter table UserLog_Dep_CustSetting switch partition 3 to __switch_partition_temp partition 3
alter table UserLog_Dep_CustSetting switch partition 4 to __switch_partition_temp partition 4


go
drop table __switch_partition_temp


go

alter partition function pf_Dep_CustSetting_Monthly() merge range (N'2018-09-30 23:59:59.997')
alter partition function pf_Dep_CustSetting_Monthly() merge range (N'2018-10-31 23:59:59.997')
alter partition function pf_Dep_CustSetting_Monthly() merge range (N'2018-11-30 23:59:59.997')
alter partition function pf_Dep_CustSetting_Monthly() merge range (N'2018-12-31 23:59:59.997')


go

alter database [bodb_CustomerLog_Archive] remove file [Dep_CustSetting_18M09]
alter database [bodb_CustomerLog_Archive] remove file [Dep_CustSetting_18M10]
alter database [bodb_CustomerLog_Archive] remove file [Dep_CustSetting_18M11]
alter database [bodb_CustomerLog_Archive] remove file [Dep_CustSetting_18M12]


go

alter database [bodb_CustomerLog_Archive] remove filegroup [Dep_CustSetting_18M09]
alter database [bodb_CustomerLog_Archive] remove filegroup [Dep_CustSetting_18M10]
alter database [bodb_CustomerLog_Archive] remove filegroup [Dep_CustSetting_18M11]
alter database [bodb_CustomerLog_Archive] remove filegroup [Dep_CustSetting_18M12]

