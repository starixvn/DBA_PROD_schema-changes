/*<info serverAlias="DBARC-bodb_Archive" executers="" viewers="" isFunction="0" isNested="0"></info>*/
/***
	Created@20220314: bobby.nguyen
	Task: #169911 - DBA clean up 2018 historical data
	Database: DB06X.bodb_Archive
***/
--table_name	partition_number	Row_Total	partition_scheme	fg_name	logical_name	Size_MB	physical_name
--bettransLC_bk	1	910917	ps_BETLC_monthly_new	BETLC_18M01_new	BETLC_18M01_new	41	F:\USER_DB\bodb_Archive\BETLC_New\BETLC_18M01_new.ndf
--bettransLC_bk	2	943575	ps_BETLC_monthly_new	BETLC_18M02_new	BETLC_18M02_new	43	F:\USER_DB\bodb_Archive\BETLC_New\BETLC_18M02_new.ndf
--bettransLC_bk	3	1102000	ps_BETLC_monthly_new	BETLC_18M03_new	BETLC_18M03_new	52	F:\USER_DB\bodb_Archive\BETLC_New\BETLC_18M03_new.ndf
--bettransLC_bk	4	1102134	ps_BETLC_monthly_new	BETLC_18M04_new	BETLC_18M04_new	53	F:\USER_DB\bodb_Archive\BETLC_New\BETLC_18M04_new.ndf
--bettransLC_bk	5	1431175	ps_BETLC_monthly_new	BETLC_18M05_new	BETLC_18M05_new	67	F:\USER_DB\bodb_Archive\BETLC_New\BETLC_18M05_new.ndf
--bettransLC_bk	6	2289986	ps_BETLC_monthly_new	BETLC_18M06_new	BETLC_18M06_new	104	F:\USER_DB\bodb_Archive\BETLC_New\BETLC_18M06_new.ndf
--bettransLC_bk	7	99	ps_BETLC_monthly_new	BETLC_18M07_new	BETLC_18M07_new	4	F:\USER_DB\bodb_Archive\BETLC_New\BETLC_18M07_new.ndf
--bettransLC_bk	8	584267	ps_BETLC_monthly_new	BETLC_18M08_new	BETLC_18M08_new	28	F:\USER_DB\bodb_Archive\BETLC_New\BETLC_18M08_new.ndf
--bettransLC_bk	9	2198235	ps_BETLC_monthly_new	BETLC_18M09_new	BETLC_18M09_new	107	F:\USER_DB\bodb_Archive\BETLC_New\BETLC_18M09_new.ndf
--bettransLC_bk	10	3192547	ps_BETLC_monthly_new	BETLC_18M10_new	BETLC_18M10_new	145	F:\USER_DB\bodb_Archive\BETLC_New\BETLC_18M10_new.ndf
--bettransLC_bk	11	3624748	ps_BETLC_monthly_new	BETLC_18M11_new	BETLC_18M11_new	163	F:\USER_DB\bodb_Archive\BETLC_New\BETLC_18M11_new.ndf
--bettransLC_bk	12	4123117	ps_BETLC_monthly_new	BETLC_18M12_new	BETLC_18M12_new	184	F:\USER_DB\bodb_Archive\BETLC_New\BETLC_18M12_new.ndf
BEGIN TRANSACTION
USE [bodb_archive]
CREATE TABLE [dbo].[__switch_bettransLC_bk_partition_temp](
	[transid] [bigint] NOT NULL,
	[custid] [int] NOT NULL,
	[transdate] [datetime] NOT NULL,
	[odds] [smallmoney] NULL,
	[stake] [money] NOT NULL,
	[status] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[apositiontaking] [smallmoney] NULL,
	[mpositiontaking] [smallmoney] NULL,
	[tpositiontaking] [smallmoney] NULL,
	[spositiontaking] [smallmoney] NULL,
	[playerdiscount] [decimal](9, 8) NULL,
	[discount] [decimal](9, 8) NULL,
	[adiscount] [decimal](9, 8) NULL,
	[sdiscount] [decimal](9, 8) NULL,
	[creator] [int] NOT NULL,
	[winlostdate] [smalldatetime] NOT NULL,
	[betfrom] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[virtualrate] [float](53) NOT NULL,
	[actualrate] [float](53) NULL,
	[actual_stake] [money] NULL,
	[currency] [tinyint] NULL,
	[CurrencyName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[recommend] [int] NOT NULL,
	[mrecommend] [int] NOT NULL,
	[srecommend] [int] NOT NULL,
	[statusID] [tinyint] NULL,
	[balance] [money] NULL,
	[Username] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[transdesc] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[productID] [smallint] NOT NULL,
	[gameID] [smallint] NOT NULL,
	[vendorID] [int] NOT NULL,
	[GameId3rd] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TranId3rd] [varchar](64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[RefNo] [bigint] NULL,
	[IsSum] [bit] NULL,
	[winlost] [money] NULL,
	[awinlost] [money] NULL,
	[mwinlost] [money] NULL,
	[swinlost] [money] NULL,
	[playercomm] [money] NULL,
	[comm] [money] NULL,
	[acomm] [money] NULL,
	[scomm] [money] NULL,
	[Transdate3rd] [datetime] NULL,
	[CountryCode] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NetStake] [money] NULL,
	[epositiontaking] [smallmoney] NULL,
	[SiteID] [varchar](7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ip] [varchar](45) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
WITH
(
DATA_COMPRESSION = PAGE
)

USE [bodb_archive]
CREATE CLUSTERED INDEX [__switch_bettransLC_bk_partition_temp_CIX_winlostdate] ON [dbo].[__switch_bettransLC_bk_partition_temp]
(
	[winlostdate] ASC
)WITH (PAD_INDEX = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [ps_BETLC_monthly_new]([winlostdate])
USE [bodb_archive]
CREATE NONCLUSTERED INDEX [__switch_bettransLC_bk_partition_temp_IX_custid] ON [dbo].[__switch_bettransLC_bk_partition_temp]
(
	[custid] ASC,
	[transid] ASC
)
INCLUDE([winlostdate],[productID],[gameID]) WITH (PAD_INDEX = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [ps_BETLC_monthly_new]([winlostdate])
USE [bodb_archive]
CREATE NONCLUSTERED INDEX [__switch_bettransLC_bk_partition_temp_IX_RefNo] ON [dbo].[__switch_bettransLC_bk_partition_temp]
(
	[RefNo] ASC
)
INCLUDE([winlostdate]) WITH (PAD_INDEX = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [ps_BETLC_monthly_new]([winlostdate])
COMMIT TRANSACTION
go

USE [bodb_archive]
alter table bettransLC_bk switch partition 1 to __switch_bettransLC_bk_partition_temp partition 1
alter table bettransLC_bk switch partition 2 to __switch_bettransLC_bk_partition_temp partition 2
alter table bettransLC_bk switch partition 3 to __switch_bettransLC_bk_partition_temp partition 3
alter table bettransLC_bk switch partition 4 to __switch_bettransLC_bk_partition_temp partition 4
alter table bettransLC_bk switch partition 5 to __switch_bettransLC_bk_partition_temp partition 5
alter table bettransLC_bk switch partition 6 to __switch_bettransLC_bk_partition_temp partition 6
alter table bettransLC_bk switch partition 7 to __switch_bettransLC_bk_partition_temp partition 7
alter table bettransLC_bk switch partition 8 to __switch_bettransLC_bk_partition_temp partition 8
alter table bettransLC_bk switch partition 9 to __switch_bettransLC_bk_partition_temp partition 9
alter table bettransLC_bk switch partition 10 to __switch_bettransLC_bk_partition_temp partition 10
alter table bettransLC_bk switch partition 11 to __switch_bettransLC_bk_partition_temp partition 11
alter table bettransLC_bk switch partition 12 to __switch_bettransLC_bk_partition_temp partition 12
go

USE [bodb_archive]
drop table [bodb_archive].[dbo].[__switch_bettransLC_bk_partition_temp]


USE [bodb_archive]
ALTER PARTITION FUNCTION pf_BETLC_monthly_new() MERGE RANGE (N'2018-01-31T23:59:00')
ALTER PARTITION FUNCTION pf_BETLC_monthly_new() MERGE RANGE (N'2018-02-28T23:59:00')
ALTER PARTITION FUNCTION pf_BETLC_monthly_new() MERGE RANGE (N'2018-03-31T23:59:00')
ALTER PARTITION FUNCTION pf_BETLC_monthly_new() MERGE RANGE (N'2018-04-30T23:59:00')
ALTER PARTITION FUNCTION pf_BETLC_monthly_new() MERGE RANGE (N'2018-05-31T23:59:00')
ALTER PARTITION FUNCTION pf_BETLC_monthly_new() MERGE RANGE (N'2018-06-30T23:59:00')
ALTER PARTITION FUNCTION pf_BETLC_monthly_new() MERGE RANGE (N'2018-07-31T23:59:00')
ALTER PARTITION FUNCTION pf_BETLC_monthly_new() MERGE RANGE (N'2018-08-31T23:59:00')
ALTER PARTITION FUNCTION pf_BETLC_monthly_new() MERGE RANGE (N'2018-09-30T23:59:00')
ALTER PARTITION FUNCTION pf_BETLC_monthly_new() MERGE RANGE (N'2018-10-31T23:59:00')
ALTER PARTITION FUNCTION pf_BETLC_monthly_new() MERGE RANGE (N'2018-11-30T23:59:00')
ALTER PARTITION FUNCTION pf_BETLC_monthly_new() MERGE RANGE (N'2018-12-31T23:59:00')
GO

USE master;
ALTER DATABASE bodb_archive REMOVE FILE [BETLC_18M01_new]
ALTER DATABASE bodb_archive REMOVE FILE [BETLC_18M02_new]
ALTER DATABASE bodb_archive REMOVE FILE [BETLC_18M03_new]
ALTER DATABASE bodb_archive REMOVE FILE [BETLC_18M04_new]
ALTER DATABASE bodb_archive REMOVE FILE [BETLC_18M05_new]
ALTER DATABASE bodb_archive REMOVE FILE [BETLC_18M06_new]
ALTER DATABASE bodb_archive REMOVE FILE [BETLC_18M07_new]
ALTER DATABASE bodb_archive REMOVE FILE [BETLC_18M08_new]
ALTER DATABASE bodb_archive REMOVE FILE [BETLC_18M09_new]
ALTER DATABASE bodb_archive REMOVE FILE [BETLC_18M10_new]
ALTER DATABASE bodb_archive REMOVE FILE [BETLC_18M11_new]
ALTER DATABASE bodb_archive REMOVE FILE [BETLC_18M12_new]
GO

USE master;
ALTER DATABASE bodb_archive REMOVE FILEGROUP [BETLC_18M01_new]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [BETLC_18M02_new]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [BETLC_18M03_new]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [BETLC_18M04_new]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [BETLC_18M05_new]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [BETLC_18M06_new]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [BETLC_18M07_new]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [BETLC_18M08_new]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [BETLC_18M09_new]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [BETLC_18M10_new]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [BETLC_18M11_new]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [BETLC_18M12_new]
GO
