/*<info serverAlias="DBLOG-bodb_CustomerLog_Archive" executers="" viewers="" isFunction="0" isNested="0"></info>*/

exec [dbo].[DBA_CloneTableStructure]
		@SourceSchema = 'dbo',
		@SourceTable = 'CS_UserLog_RunSP',
		@DestinationSchema = 'dbo',
		@DestinationTable = '__switch_partition_temp',
		@RecreateIfExists = 1,
		@FileGroup = '[ps_CS_RUNSP_monthly](logdate)'

go
alter table CS_UserLog_RunSP switch partition 1 to __switch_partition_temp partition 1alter table CS_UserLog_RunSP switch partition 2 to __switch_partition_temp partition 2alter table CS_UserLog_RunSP switch partition 3 to __switch_partition_temp partition 3alter table CS_UserLog_RunSP switch partition 4 to __switch_partition_temp partition 4alter table CS_UserLog_RunSP switch partition 5 to __switch_partition_temp partition 5alter table CS_UserLog_RunSP switch partition 6 to __switch_partition_temp partition 6alter table CS_UserLog_RunSP switch partition 7 to __switch_partition_temp partition 7

go
drop table __switch_partition_temp

go
--alter partition function pf_CS_RUNSP_monthly() merge range (N'2019-06-30 23:59:59.997')--alter partition function pf_CS_RUNSP_monthly() merge range (N'2019-07-31 23:59:59.997')--alter partition function pf_CS_RUNSP_monthly() merge range (N'2019-08-31 23:59:59.997')--alter partition function pf_CS_RUNSP_monthly() merge range (N'2019-09-30 23:59:59.997')--alter partition function pf_CS_RUNSP_monthly() merge range (N'2019-10-31 23:59:59.997')--alter partition function pf_CS_RUNSP_monthly() merge range (N'2019-11-30 23:59:59.997')--alter partition function pf_CS_RUNSP_monthly() merge range (N'2019-12-31 23:59:59.997')

go
alter database [bodb_CustomerLog_Archive] remove file [CS_RUNSP_19M06]alter database [bodb_CustomerLog_Archive] remove file [CS_RUNSP_19M07]alter database [bodb_CustomerLog_Archive] remove file [CS_RUNSP_19M08]alter database [bodb_CustomerLog_Archive] remove file [CS_RUNSP_19M09]alter database [bodb_CustomerLog_Archive] remove file [CS_RUNSP_19M10]alter database [bodb_CustomerLog_Archive] remove file [CS_RUNSP_19M11]alter database [bodb_CustomerLog_Archive] remove file [CS_RUNSP_19M12]

go
alter database [bodb_CustomerLog_Archive] remove filegroup [CS_RUNSP_19M06]alter database [bodb_CustomerLog_Archive] remove filegroup [CS_RUNSP_19M07]alter database [bodb_CustomerLog_Archive] remove filegroup [CS_RUNSP_19M08]alter database [bodb_CustomerLog_Archive] remove filegroup [CS_RUNSP_19M09]alter database [bodb_CustomerLog_Archive] remove filegroup [CS_RUNSP_19M10]alter database [bodb_CustomerLog_Archive] remove filegroup [CS_RUNSP_19M11]alter database [bodb_CustomerLog_Archive] remove filegroup [CS_RUNSP_19M12]
