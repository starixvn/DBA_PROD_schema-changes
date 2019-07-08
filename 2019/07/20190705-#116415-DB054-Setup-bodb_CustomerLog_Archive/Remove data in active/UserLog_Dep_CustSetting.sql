/*
	Task - Remove data in active upto 2019-05-31
	Run on DB054.bodb_CustomerLog

	P/s: must to deploy sp: DBA_CloneTableStructure first.
*/

USE bodb_CustomerLog
GO

--clone schema
exec [dbo].[DBA_CloneTableStructure]
    @SourceSchema = 'dbo',
    @SourceTable = 'UserLog_Dep_CustSetting',
    @DestinationSchema = 'dbo',
    @DestinationTable = 'UserLog_Dep_CustSetting_v2',
    @RecreateIfExists = 1,
	@FileGroup = '[ps_Dep_CustSetting_monthly]([logdate])'


--switch partitions
ALTER TABLE UserLog_Dep_CustSetting SWITCH PARTITION 1 TO UserLog_Dep_CustSetting_v2 PARTITION 1
ALTER TABLE UserLog_Dep_CustSetting SWITCH PARTITION 2 TO UserLog_Dep_CustSetting_v2 PARTITION 2
ALTER TABLE UserLog_Dep_CustSetting SWITCH PARTITION 3 TO UserLog_Dep_CustSetting_v2 PARTITION 3
ALTER TABLE UserLog_Dep_CustSetting SWITCH PARTITION 4 TO UserLog_Dep_CustSetting_v2 PARTITION 4
ALTER TABLE UserLog_Dep_CustSetting SWITCH PARTITION 5 TO UserLog_Dep_CustSetting_v2 PARTITION 5
ALTER TABLE UserLog_Dep_CustSetting SWITCH PARTITION 6 TO UserLog_Dep_CustSetting_v2 PARTITION 6
ALTER TABLE UserLog_Dep_CustSetting SWITCH PARTITION 7 TO UserLog_Dep_CustSetting_v2 PARTITION 7
ALTER TABLE UserLog_Dep_CustSetting SWITCH PARTITION 8 TO UserLog_Dep_CustSetting_v2 PARTITION 8
ALTER TABLE UserLog_Dep_CustSetting SWITCH PARTITION 9 TO UserLog_Dep_CustSetting_v2 PARTITION 9

--check data
--....

-- delete UserLog_Dep_CustSetting_v2
DROP TABLE UserLog_Dep_CustSetting_v2

--merge partitions
ALTER PARTITION FUNCTION pf_Dep_CustSetting_Monthly() MERGE RANGE (N'2018-09-30 23:59:59.997')
ALTER PARTITION FUNCTION pf_Dep_CustSetting_Monthly() MERGE RANGE (N'2018-10-31 23:59:59.997')
ALTER PARTITION FUNCTION pf_Dep_CustSetting_Monthly() MERGE RANGE (N'2018-11-30 23:59:59.997')
ALTER PARTITION FUNCTION pf_Dep_CustSetting_Monthly() MERGE RANGE (N'2018-12-31 23:59:59.997')
ALTER PARTITION FUNCTION pf_Dep_CustSetting_Monthly() MERGE RANGE (N'2019-01-31 23:59:59.997')
ALTER PARTITION FUNCTION pf_Dep_CustSetting_Monthly() MERGE RANGE (N'2019-02-28 23:59:59.997')
ALTER PARTITION FUNCTION pf_Dep_CustSetting_Monthly() MERGE RANGE (N'2019-03-31 23:59:59.997')
ALTER PARTITION FUNCTION pf_Dep_CustSetting_Monthly() MERGE RANGE (N'2019-04-30 23:59:59.997')
ALTER PARTITION FUNCTION pf_Dep_CustSetting_Monthly() MERGE RANGE (N'2019-05-31 23:59:59.997')

--remove un-use data file
ALTER DATABASE [bodb_CustomerLog] REMOVE FILE Dep_CustSetting_18M09
ALTER DATABASE [bodb_CustomerLog] REMOVE FILE Dep_CustSetting_18M10
ALTER DATABASE [bodb_CustomerLog] REMOVE FILE Dep_CustSetting_18M11
ALTER DATABASE [bodb_CustomerLog] REMOVE FILE Dep_CustSetting_18M12
ALTER DATABASE [bodb_CustomerLog] REMOVE FILE Dep_CustSetting_19M01
ALTER DATABASE [bodb_CustomerLog] REMOVE FILE Dep_CustSetting_19M02
ALTER DATABASE [bodb_CustomerLog] REMOVE FILE Dep_CustSetting_19M03
ALTER DATABASE [bodb_CustomerLog] REMOVE FILE Dep_CustSetting_19M04
ALTER DATABASE [bodb_CustomerLog] REMOVE FILE Dep_CustSetting_19M05

--remove un-use datagroup
ALTER DATABASE [bodb_CustomerLog] REMOVE FILEGROUP Dep_CustSetting_18M09
ALTER DATABASE [bodb_CustomerLog] REMOVE FILEGROUP Dep_CustSetting_18M10
ALTER DATABASE [bodb_CustomerLog] REMOVE FILEGROUP Dep_CustSetting_18M11
ALTER DATABASE [bodb_CustomerLog] REMOVE FILEGROUP Dep_CustSetting_18M12
ALTER DATABASE [bodb_CustomerLog] REMOVE FILEGROUP Dep_CustSetting_19M01
ALTER DATABASE [bodb_CustomerLog] REMOVE FILEGROUP Dep_CustSetting_19M02
ALTER DATABASE [bodb_CustomerLog] REMOVE FILEGROUP Dep_CustSetting_19M03
ALTER DATABASE [bodb_CustomerLog] REMOVE FILEGROUP Dep_CustSetting_19M04
ALTER DATABASE [bodb_CustomerLog] REMOVE FILEGROUP Dep_CustSetting_19M05

GO
