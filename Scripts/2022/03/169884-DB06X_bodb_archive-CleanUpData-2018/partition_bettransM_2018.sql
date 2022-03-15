/*<info serverAlias="DBARC-bodb_Archive" executers="" viewers="" isFunction="0" isNested="0"></info>*/
/***
	Created@20220314: bobby.nguyen
	Task: #169911 - DBA clean up 2018 historical data
	Database: DB06X.bodb_Archive
***/
--table_name	partition_number	Row_Total	partition_scheme	fg_name	logical_name	Size_MB	physical_name
--bettransm	1	27964010	ps_bettransm_monthly	Bettransm_1801	Bettransm_1801	294	F:\USER_DB\bodb_Archive\Bettransm\Bettransm_1801.ndf
--bettransm	2	29628597	ps_bettransm_monthly	Bettransm_1802	Bettransm_1802	305	F:\USER_DB\bodb_Archive\Bettransm\Bettransm_1802.ndf
--bettransm	3	35876688	ps_bettransm_monthly	Bettransm_1803	Bettransm_1803	374	F:\USER_DB\bodb_Archive\Bettransm\Bettransm_1803.ndf
--bettransm	4	36667646	ps_bettransm_monthly	Bettransm_1804	Bettransm_1804	381	F:\USER_DB\bodb_Archive\Bettransm\Bettransm_1804.ndf
--bettransm	5	23096731	ps_bettransm_monthly	Bettransm_1805	Bettransm_1805	284	F:\USER_DB\bodb_Archive\Bettransm\Bettransm_1805.ndf
--bettransm	6	22292713	ps_bettransm_monthly	Bettransm_1806	Bettransm_1806	292	F:\USER_DB\bodb_Archive\Bettransm\Bettransm_1806.ndf
--bettransm	7	25839912	ps_bettransm_monthly	Bettransm_1807	Bettransm_1807	324	F:\USER_DB\bodb_Archive\Bettransm\Bettransm_1807.ndf
--bettransm	8	34250076	ps_bettransm_monthly	Bettransm_1808	Bettransm_1808	456	F:\USER_DB\bodb_Archive\Bettransm\Bettransm_1808.ndf
--bettransm	9	36501743	ps_bettransm_monthly	Bettransm_1809	Bettransm_1809	606	F:\USER_DB\bodb_Archive\Bettransm\Bettransm_1809.ndf
--bettransm	10	35250914	ps_bettransm_monthly	Bettransm_1810	Bettransm_1810	618	F:\USER_DB\bodb_Archive\Bettransm\Bettransm_1810.ndf
--bettransm	11	32842057	ps_bettransm_monthly	Bettransm_1811	Bettransm_1811	554	F:\USER_DB\bodb_Archive\Bettransm\Bettransm_1811.ndf
--bettransm	12	33674672	ps_bettransm_monthly	Bettransm_1812	Bettransm_1812	546	F:\USER_DB\bodb_Archive\Bettransm\Bettransm_1812.ndf

BEGIN TRANSACTION
USE [bodb_archive]
CREATE TABLE [dbo].[__switch_bettransm_partition_temp](
	[transid] [bigint] NOT NULL,
	[custid] [int] NOT NULL,
	[transdate] [datetime] NOT NULL,
	[oddsid] [int] NOT NULL,
	[hdp1] [smallmoney] NULL,
	[hdp2] [smallmoney] NULL,
	[odds] [smallmoney] NULL,
	[stake] [money] NOT NULL,
	[status] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[winlost] [money] NULL,
	[livehomescore] [smallint] NULL,
	[liveawayscore] [smallint] NULL,
	[liveindicator] [bit] NULL,
	[betteam] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[creator] [int] NOT NULL,
	[refno] [bigint] NOT NULL,
	[comstatus] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[winlostdate] [smalldatetime] NULL,
	[betfrom] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[betcheck] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[oddsspread] [money] NULL,
	[apositiontaking] [smallmoney] NULL,
	[mpositiontaking] [smallmoney] NULL,
	[spositiontaking] [smallmoney] NULL,
	[tpositiontaking] [smallmoney] NULL,
	[awinlost] [money] NULL,
	[mwinlost] [money] NULL,
	[swinlost] [money] NULL,
	[playerdiscount] [decimal](9, 8) NULL,
	[discount] [decimal](9, 8) NULL,
	[adiscount] [decimal](9, 8) NULL,
	[sdiscount] [decimal](9, 8) NULL,
	[playercomm] [money] NULL,
	[comm] [money] NULL,
	[acomm] [money] NULL,
	[scomm] [money] NULL,
	[actualrate] [float](53) NULL,
	[matchid] [int] NULL,
	[matchdate] [smalldatetime] NULL,
	[finalodds] [smallmoney] NULL,
	[isfinish] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[statuswinlost] [tinyint] NULL,
	[ruben] [tinyint] NULL,
	[statusID] [tinyint] NULL,
	[bettype] [smallint] NULL,
	[recommdate] [datetime] NULL,
	[transdesc] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SecAcceptFlag] [bit] NULL,
	[checktime] [datetime] NULL,
	[ReasonIDm] [smallint] NULL
)
WITH
(
DATA_COMPRESSION = PAGE
)

USE [bodb_archive]
CREATE CLUSTERED INDEX [__switch_bettransm_partition_temp_IX_bettransm] ON [dbo].[__switch_bettransm_partition_temp]
(
	[refno] ASC,
	[winlostdate]
)WITH (PAD_INDEX = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [ps_bettransm_monthly]([winlostdate])
USE [bodb_archive]
CREATE NONCLUSTERED INDEX [__switch_bettransm_partition_temp_IX_transid] ON [dbo].[__switch_bettransm_partition_temp]
(
	[transid] ASC
)
INCLUDE([winlostdate]) WITH (PAD_INDEX = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [ps_bettransm_monthly]([winlostdate])
USE [bodb_archive]
CREATE NONCLUSTERED INDEX [__switch_bettransm_partition_temp_IX_winlostdate] ON [dbo].[__switch_bettransm_partition_temp]
(
	[winlostdate] ASC
)WITH (PAD_INDEX = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [ps_bettransm_monthly]([winlostdate])
COMMIT TRANSACTION
GO

USE [bodb_archive]
alter table bettransm switch partition 1 to __switch_bettransm_partition_temp partition 1
alter table bettransm switch partition 2 to __switch_bettransm_partition_temp partition 2
alter table bettransm switch partition 3 to __switch_bettransm_partition_temp partition 3
alter table bettransm switch partition 4 to __switch_bettransm_partition_temp partition 4
alter table bettransm switch partition 5 to __switch_bettransm_partition_temp partition 5
alter table bettransm switch partition 6 to __switch_bettransm_partition_temp partition 6
alter table bettransm switch partition 7 to __switch_bettransm_partition_temp partition 7
alter table bettransm switch partition 8 to __switch_bettransm_partition_temp partition 8
alter table bettransm switch partition 9 to __switch_bettransm_partition_temp partition 9
alter table bettransm switch partition 10 to __switch_bettransm_partition_temp partition 10
alter table bettransm switch partition 11 to __switch_bettransm_partition_temp partition 11
alter table bettransm switch partition 12 to __switch_bettransm_partition_temp partition 12
GO

USE [bodb_archive]
drop table [bodb_archive].[dbo].[__switch_bettransm_partition_temp]
go

USE [bodb_archive]
ALTER PARTITION FUNCTION pf_bettransm_monthly() MERGE RANGE (N'2018-01-31T23:59:00')
ALTER PARTITION FUNCTION pf_bettransm_monthly() MERGE RANGE (N'2018-02-28T23:59:00')
ALTER PARTITION FUNCTION pf_bettransm_monthly() MERGE RANGE (N'2018-03-31T23:59:00')
ALTER PARTITION FUNCTION pf_bettransm_monthly() MERGE RANGE (N'2018-04-30T23:59:00')
ALTER PARTITION FUNCTION pf_bettransm_monthly() MERGE RANGE (N'2018-05-31T23:59:00')
ALTER PARTITION FUNCTION pf_bettransm_monthly() MERGE RANGE (N'2018-06-30T23:59:00')
ALTER PARTITION FUNCTION pf_bettransm_monthly() MERGE RANGE (N'2018-07-31T23:59:00')
ALTER PARTITION FUNCTION pf_bettransm_monthly() MERGE RANGE (N'2018-08-31T23:59:00')
ALTER PARTITION FUNCTION pf_bettransm_monthly() MERGE RANGE (N'2018-09-30T23:59:00')
ALTER PARTITION FUNCTION pf_bettransm_monthly() MERGE RANGE (N'2018-10-31T23:59:00')
ALTER PARTITION FUNCTION pf_bettransm_monthly() MERGE RANGE (N'2018-11-30T23:59:00')
ALTER PARTITION FUNCTION pf_bettransm_monthly() MERGE RANGE (N'2018-12-31T23:59:00')
GO

USE master;
ALTER DATABASE bodb_archive REMOVE FILE [Bettransm_1801]
ALTER DATABASE bodb_archive REMOVE FILE [Bettransm_1802]
ALTER DATABASE bodb_archive REMOVE FILE [Bettransm_1803]
ALTER DATABASE bodb_archive REMOVE FILE [Bettransm_1804]
ALTER DATABASE bodb_archive REMOVE FILE [Bettransm_1805]
ALTER DATABASE bodb_archive REMOVE FILE [Bettransm_1806]
ALTER DATABASE bodb_archive REMOVE FILE [Bettransm_1807]
ALTER DATABASE bodb_archive REMOVE FILE [Bettransm_1808]
ALTER DATABASE bodb_archive REMOVE FILE [Bettransm_1809]
ALTER DATABASE bodb_archive REMOVE FILE [Bettransm_1810]
ALTER DATABASE bodb_archive REMOVE FILE [Bettransm_1811]
ALTER DATABASE bodb_archive REMOVE FILE [Bettransm_1812]
GO

USE master;
ALTER DATABASE bodb_archive REMOVE FILEGROUP [Bettransm_1801]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [Bettransm_1802]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [Bettransm_1803]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [Bettransm_1804]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [Bettransm_1805]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [Bettransm_1806]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [Bettransm_1807]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [Bettransm_1808]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [Bettransm_1809]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [Bettransm_1810]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [Bettransm_1811]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [Bettransm_1812]
GO