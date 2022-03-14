/***
	Created@20220314: bobby.nguyen
	Task: #169911 - DBA clean up 2018 historical data
	Database: DB06X.bodb_Archive
***/

--table_name	partition_number	Row_Total	partition_scheme	partition_function	range_value	fg_name	logical_name	physical_name	Size_Gb
--bettrans_bk	1	113185715	ps_bettrans_monthly	pf_bettrans_monthly	2018-01-31 23:59:00.000	Bettrans_1801	Bettrans_1801	F:\USER_DB\bodb_Archive\Bettrans\Bettrans_1801.ndf	2
--bettrans_bk	2	99226458	ps_bettrans_monthly	pf_bettrans_monthly	2018-02-28 23:59:00.000	Bettrans_1802	Bettrans_1802	F:\USER_DB\bodb_Archive\Bettrans\Bettrans_1802.ndf	2
--bettrans_bk	3	126828232	ps_bettrans_monthly	pf_bettrans_monthly	2018-03-31 23:59:00.000	Bettrans_1803	Bettrans_1803	F:\USER_DB\bodb_Archive\Bettrans\Bettrans_1803.ndf	2
--bettrans_bk	4	131963590	ps_bettrans_monthly	pf_bettrans_monthly	2018-04-30 23:59:00.000	Bettrans_1804	Bettrans_1804	F:\USER_DB\bodb_Archive\Bettrans\Bettrans_1804.ndf	3
--bettrans_bk	5	118017823	ps_bettrans_monthly	pf_bettrans_monthly	2018-05-31 23:59:00.000	Bettrans_1805	Bettrans_1805	F:\USER_DB\bodb_Archive\Bettrans\Bettrans_1805.ndf	2
--bettrans_bk	6	187265649	ps_bettrans_monthly	pf_bettrans_monthly	2018-06-30 23:59:00.000	Bettrans_1806	Bettrans_1806	F:\USER_DB\bodb_Archive\Bettrans\Bettrans_1806.ndf	4
--bettrans_bk	7	208200582	ps_bettrans_monthly	pf_bettrans_monthly	2018-07-31 23:59:00.000	Bettrans_1807	Bettrans_1807	F:\USER_DB\bodb_Archive\Bettrans\Bettrans_1807.ndf	4
--bettrans_bk	8	174783352	ps_bettrans_monthly	pf_bettrans_monthly	2018-08-31 23:59:00.000	Bettrans_1808	Bettrans_1808	F:\USER_DB\bodb_Archive\Bettrans\Bettrans_1808.ndf	3
--bettrans_bk	9	165285781	ps_bettrans_monthly	pf_bettrans_monthly	2018-09-30 23:59:00.000	Bettrans_1809	Bettrans_1809	F:\USER_DB\bodb_Archive\Bettrans\Bettrans_1809.ndf	3
--bettrans_bk	10	157949076	ps_bettrans_monthly	pf_bettrans_monthly	2018-10-31 23:59:00.000	Bettrans_1810	Bettrans_1810	F:\USER_DB\bodb_Archive\Bettrans\Bettrans_1810.ndf	3
--bettrans_bk	11	150139746	ps_bettrans_monthly	pf_bettrans_monthly	2018-11-30 23:59:00.000	Bettrans_1811	Bettrans_1811	F:\USER_DB\bodb_Archive\Bettrans\Bettrans_1811.ndf	3
--bettrans_bk	12	142168302	ps_bettrans_monthly	pf_bettrans_monthly	2018-12-31 23:59:00.000	Bettrans_1812	Bettrans_1812	F:\USER_DB\bodb_Archive\Bettrans\Bettrans_1812.ndf	3

BEGIN TRANSACTION
USE [bodb_archive]
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[__switch_bettrans_bk_partition_temp](
	[custid] [int] NOT NULL,
	[transdate] [datetime] NOT NULL,
	[oddsid] [int] NOT NULL,
	[hdp1] [smallmoney] NULL,
	[hdp2] [smallmoney] NULL,
	[odds] [smallmoney] NULL,
	[stake] [money] NOT NULL,
	[actual_stake] [money] NULL,
	[status] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[winlost] [money] NULL,
	[awinlost] [money] NULL,
	[mwinlost] [money] NULL,
	[swinlost] [money] NULL,
	[playercomm] [money] NULL,
	[comm] [money] NULL,
	[acomm] [money] NULL,
	[scomm] [money] NULL,
	[apositiontaking] [smallmoney] NULL,
	[mpositiontaking] [smallmoney] NULL,
	[spositiontaking] [smallmoney] NULL,
	[tpositiontaking] [smallmoney] NULL,
	[playerdiscount] [decimal](9, 8) NULL,
	[discount] [decimal](9, 8) NULL,
	[adiscount] [decimal](9, 8) NULL,
	[sdiscount] [decimal](9, 8) NULL,
	[livehomescore] [smallint] NULL,
	[liveawayscore] [smallint] NULL,
	[liveindicator] [bit] NULL,
	[betteam] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[creator] [int] NOT NULL,
	[refno] [bigint] NULL,
	[winlostdate] [smalldatetime] NULL,
	[betfrom] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[betcheck] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[checktime] [datetime] NULL,
	[oddsspread] [money] NULL,
	[actualrate] [float](53) NULL,
	[matchid] [int] NULL,
	[recommend] [int] NULL,
	[mrecommend] [int] NULL,
	[srecommend] [int] NULL,
	[ruben] [tinyint] NULL,
	[betid] [bigint] NULL,
	[statuswinlost] [tinyint] NULL,
	[modds] [smallmoney] NULL,
	[betdaqid] [bigint] NULL,
	[tstamp] [binary](8) NULL,
	[currency] [tinyint] NULL,
	[ip] [varchar](45) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[transdesc] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[virtualrate] [float](53) NULL,
	[oddstype] [tinyint] NULL,
	[statusID] [tinyint] NULL,
	[currency2] [tinyint] NULL,
	[transid] [bigint] NOT NULL,
	[bettype] [smallint] NULL,
	[balance] [money] NULL,
	[transid2] [bigint] NULL,
	[SecAcceptFlag] [bit] NULL,
	[recommdate] [datetime] NULL,
	[comstatus] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CountryCode] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ExtraInfo] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WalletType] [tinyint] NULL,
	[BonusID] [int] NULL,
	[RefCode] [bigint] NULL,
	[SettlementTime] [datetime] NULL,
	[epositiontaking] [smallmoney] NULL,
	[ReasonID] [smallint] NULL,
	[sort] [smallint] NULL
)
WITH
(
DATA_COMPRESSION = PAGE
)

USE [bodb_archive]
CREATE CLUSTERED INDEX [__switch_bettrans_bk_partition_temp_CIX_winlostdate] ON [dbo].[__switch_bettrans_bk_partition_temp]
(
	[winlostdate] ASC
)WITH (PAD_INDEX = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON ps_bettrans_monthly([winlostdate])
USE [bodb_archive]
CREATE NONCLUSTERED INDEX [__switch_bettrans_bk_partition_temp_IX_custid] ON [dbo].[__switch_bettrans_bk_partition_temp]
(
	[custid] ASC
)
INCLUDE([winlostdate],[matchid],[bettype]) WITH (PAD_INDEX = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON ps_bettrans_monthly([winlostdate])
USE [bodb_archive]
CREATE NONCLUSTERED INDEX [__switch_bettrans_bk_partition_temp_IX_transid] ON [dbo].[__switch_bettrans_bk_partition_temp]
(
	[transid] ASC
)
INCLUDE([winlostdate]) WITH (PAD_INDEX = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON ps_bettrans_monthly([winlostdate]);
COMMIT TRANSACTION
GO

USE [bodb_archive]
ALTER TABLE [dbo].[bettrans_bk] SWITCH PARTITION 1 TO [dbo].[__switch_bettrans_bk_partition_temp] partition 1 WITH (WAIT_AT_LOW_PRIORITY (MAX_DURATION = 0 MINUTES, ABORT_AFTER_WAIT = NONE))
ALTER TABLE [dbo].[bettrans_bk] SWITCH PARTITION 2 TO [dbo].[__switch_bettrans_bk_partition_temp] partition 2 WITH (WAIT_AT_LOW_PRIORITY (MAX_DURATION = 0 MINUTES, ABORT_AFTER_WAIT = NONE))
ALTER TABLE [dbo].[bettrans_bk] SWITCH PARTITION 3 TO [dbo].[__switch_bettrans_bk_partition_temp] partition 3 WITH (WAIT_AT_LOW_PRIORITY (MAX_DURATION = 0 MINUTES, ABORT_AFTER_WAIT = NONE))
ALTER TABLE [dbo].[bettrans_bk] SWITCH PARTITION 4 TO [dbo].[__switch_bettrans_bk_partition_temp] partition 4 WITH (WAIT_AT_LOW_PRIORITY (MAX_DURATION = 0 MINUTES, ABORT_AFTER_WAIT = NONE))
ALTER TABLE [dbo].[bettrans_bk] SWITCH PARTITION 5 TO [dbo].[__switch_bettrans_bk_partition_temp] partition 5 WITH (WAIT_AT_LOW_PRIORITY (MAX_DURATION = 0 MINUTES, ABORT_AFTER_WAIT = NONE))
ALTER TABLE [dbo].[bettrans_bk] SWITCH PARTITION 6 TO [dbo].[__switch_bettrans_bk_partition_temp] partition 6 WITH (WAIT_AT_LOW_PRIORITY (MAX_DURATION = 0 MINUTES, ABORT_AFTER_WAIT = NONE))
ALTER TABLE [dbo].[bettrans_bk] SWITCH PARTITION 7 TO [dbo].[__switch_bettrans_bk_partition_temp] partition 7 WITH (WAIT_AT_LOW_PRIORITY (MAX_DURATION = 0 MINUTES, ABORT_AFTER_WAIT = NONE))
ALTER TABLE [dbo].[bettrans_bk] SWITCH PARTITION 8 TO [dbo].[__switch_bettrans_bk_partition_temp] partition 8 WITH (WAIT_AT_LOW_PRIORITY (MAX_DURATION = 0 MINUTES, ABORT_AFTER_WAIT = NONE))
ALTER TABLE [dbo].[bettrans_bk] SWITCH PARTITION 9 TO [dbo].[__switch_bettrans_bk_partition_temp] partition 9 WITH (WAIT_AT_LOW_PRIORITY (MAX_DURATION = 0 MINUTES, ABORT_AFTER_WAIT = NONE))
ALTER TABLE [dbo].[bettrans_bk] SWITCH PARTITION 10 TO [dbo].[__switch_bettrans_bk_partition_temp] partition 10 WITH (WAIT_AT_LOW_PRIORITY (MAX_DURATION = 0 MINUTES, ABORT_AFTER_WAIT = NONE))
ALTER TABLE [dbo].[bettrans_bk] SWITCH PARTITION 11 TO [dbo].[__switch_bettrans_bk_partition_temp] partition 12 WITH (WAIT_AT_LOW_PRIORITY (MAX_DURATION = 0 MINUTES, ABORT_AFTER_WAIT = NONE))
ALTER TABLE [dbo].[bettrans_bk] SWITCH PARTITION 12 TO [dbo].[__switch_bettrans_bk_partition_temp] partition 12 WITH (WAIT_AT_LOW_PRIORITY (MAX_DURATION = 0 MINUTES, ABORT_AFTER_WAIT = NONE))


USE [bodb_archive]
DROP TABLE [bodb_archive].[dbo].[__switch_bettrans_bk_partition_temp];
GO

USE [bodb_archive]
alter partition function pf_bettrans_monthly() merge range (N'2018-01-31T23:59:00')
alter partition function pf_bettrans_monthly() merge range (N'2018-02-28T23:59:00')
alter partition function pf_bettrans_monthly() merge range (N'2018-03-31T23:59:00')
alter partition function pf_bettrans_monthly() merge range (N'2018-04-30T23:59:00')
alter partition function pf_bettrans_monthly() merge range (N'2018-05-31T23:59:00')
alter partition function pf_bettrans_monthly() merge range (N'2018-06-30T23:59:00')
alter partition function pf_bettrans_monthly() merge range (N'2018-07-31T23:59:00')
alter partition function pf_bettrans_monthly() merge range (N'2018-08-31T23:59:00')
alter partition function pf_bettrans_monthly() merge range (N'2018-09-30T23:59:00')
alter partition function pf_bettrans_monthly() merge range (N'2018-10-31T23:59:00')
alter partition function pf_bettrans_monthly() merge range (N'2018-11-30T23:59:00')
alter partition function pf_bettrans_monthly() merge range (N'2018-12-31T23:59:00')
GO

USE [master]
alter database bodb_archive remove file [Bettrans_1801]
alter database bodb_archive remove file [Bettrans_1802]
alter database bodb_archive remove file [Bettrans_1803]
alter database bodb_archive remove file [Bettrans_1804]
alter database bodb_archive remove file [Bettrans_1805]
alter database bodb_archive remove file [Bettrans_1806]
alter database bodb_archive remove file [Bettrans_1807]
alter database bodb_archive remove file [Bettrans_1808]
alter database bodb_archive remove file [Bettrans_1809]
alter database bodb_archive remove file [Bettrans_1810]
alter database bodb_archive remove file [Bettrans_1811]
alter database bodb_archive remove file [Bettrans_1812]
GO

user [master];
alter database bodb_archive remove filegroup [Bettrans_1801]
alter database bodb_archive remove filegroup [Bettrans_1802]
alter database bodb_archive remove filegroup [Bettrans_1803]
alter database bodb_archive remove filegroup [Bettrans_1804]
alter database bodb_archive remove filegroup [Bettrans_1805]
alter database bodb_archive remove filegroup [Bettrans_1806]
alter database bodb_archive remove filegroup [Bettrans_1807]
alter database bodb_archive remove filegroup [Bettrans_1808]
alter database bodb_archive remove filegroup [Bettrans_1809]
alter database bodb_archive remove filegroup [Bettrans_1810]
alter database bodb_archive remove filegroup [Bettrans_1811]
alter database bodb_archive remove filegroup [Bettrans_1812]