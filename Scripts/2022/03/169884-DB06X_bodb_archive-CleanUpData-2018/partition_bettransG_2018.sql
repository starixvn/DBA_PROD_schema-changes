/*<info serverAlias="DBARC-bodb_Archive" executers="" viewers="" isFunction="0" isNested="0"></info>*/
/***
	Created@20220314: bobby.nguyen
	Task: #169911 - DBA clean up 2018 historical data
	Database: DB06X.bodb_Archive
***/
--table_name	partition_number	Row_Total	partition_scheme	fg_name	logical_name	Size_MB	physical_name
--bettransG	1	1861144	ps_BETG_monthly	BETG_18M01	BETG_18M01	40	F:\USER_DB\bodb_Archive\BETG\BETG_18M01.ndf
--bettransG	2	1678717	ps_BETG_monthly	BETG_18M02	BETG_18M02	36	F:\USER_DB\bodb_Archive\BETG\BETG_18M02.ndf
--bettransG	3	1836026	ps_BETG_monthly	BETG_18M03	BETG_18M03	40	F:\USER_DB\bodb_Archive\BETG\BETG_18M03.ndf
--bettransG	4	1963857	ps_BETG_monthly	BETG_18M04	BETG_18M04	42	F:\USER_DB\bodb_Archive\BETG\BETG_18M04.ndf
--bettransG	5	2334817	ps_BETG_monthly	BETG_18M05	BETG_18M05	50	F:\USER_DB\bodb_Archive\BETG\BETG_18M05.ndf
--bettransG	6	7180740	ps_BETG_monthly	BETG_18M06	BETG_18M06	140	F:\USER_DB\bodb_Archive\BETG\BETG_18M06.ndf
--bettransG	7	9491542	ps_BETG_monthly	BETG_18M07	BETG_18M07	184	F:\USER_DB\bodb_Archive\BETG\BETG_18M07.ndf
--bettransG	8	6159897	ps_BETG_monthly	BETG_18M08	BETG_18M08	124	F:\USER_DB\bodb_Archive\BETG\BETG_18M08.ndf
--bettransG	9	4856160	ps_BETG_monthly	BETG_18M09	BETG_18M09	100	F:\USER_DB\bodb_Archive\BETG\BETG_18M09.ndf
--bettransG	10	4217622	ps_BETG_monthly	BETG_18M10	BETG_18M10	88	F:\USER_DB\bodb_Archive\BETG\BETG_18M10.ndf
--bettransG	11	3382277	ps_BETG_monthly	BETG_18M11	BETG_18M11	72	F:\USER_DB\bodb_Archive\BETG\BETG_18M11.ndf
--bettransG	12	4336117	ps_BETG_monthly	BETG_18M12	BETG_18M12	88	F:\USER_DB\bodb_Archive\BETG\BETG_18M12.ndf
BEGIN TRANSACTION
USE [bodb_archive]
CREATE TABLE [dbo].[__switch_bettransG_partition_temp](
	[transid] [int] NOT NULL,
	[custid] [int] NOT NULL,
	[transdate] [datetime] NOT NULL,
	[oddsid] [int] NOT NULL,
	[odds] [smallmoney] NULL,
	[stake] [money] NOT NULL,
	[status] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[winlost] [money] NULL,
	[betteam] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[creator] [int] NOT NULL,
	[refno] [bigint] NOT NULL,
	[winlostdate] [smalldatetime] NULL,
	[betfrom] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[checktime] [smalldatetime] NULL,
	[apositiontaking] [smallmoney] NULL,
	[mpositiontaking] [smallmoney] NULL,
	[tpositiontaking] [smallmoney] NULL,
	[awinlost] [money] NULL,
	[mwinlost] [money] NULL,
	[playerdiscount] [decimal](9, 8) NULL,
	[discount] [decimal](9, 8) NULL,
	[adiscount] [decimal](9, 8) NULL,
	[playercomm] [money] NULL,
	[comm] [money] NULL,
	[acomm] [money] NULL,
	[actualrate] [float](53) NULL,
	[matchid] [int] NULL,
	[matchdate] [smalldatetime] NULL,
	[statuswinlost] [tinyint] NULL,
	[ruben] [tinyint] NULL,
	[bettype] [smallint] NULL,
	[spositiontaking] [smallmoney] NULL,
	[swinlost] [money] NULL,
	[sdiscount] [decimal](9, 8) NULL,
	[scomm] [money] NULL,
	[statusID] [tinyint] NULL,
	[virtualrate] [float](53) NULL,
	[SiteID] [varchar](7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[transdesc] [nvarchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BetID3rd] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[epositiontaking] [smallmoney] NULL,
	[actual_stake] [money] NULL,
	[netstake] [money] NULL
) 
ON [ps_BETG_monthly]([winlostdate])
WITH
(
DATA_COMPRESSION = PAGE
)

USE [bodb_archive]
CREATE CLUSTERED INDEX [__switch_bettransG_partition_temp_IX_bettransG] ON [dbo].[__switch_bettransG_partition_temp]
(
	[refno] ASC,
	[winlostdate]
)WITH (PAD_INDEX = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [ps_BETG_monthly]([winlostdate])
USE [bodb_archive]
CREATE NONCLUSTERED INDEX [__switch_bettransG_partition_temp_IX_CustID] ON [dbo].[__switch_bettransG_partition_temp]
(
	[custid] ASC
)
INCLUDE([winlostdate],[matchid]) WITH (PAD_INDEX = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [ps_BETG_monthly]([winlostdate])
USE [bodb_archive]
CREATE NONCLUSTERED INDEX [__switch_bettransG_partition_temp_IX_transid] ON [dbo].[__switch_bettransG_partition_temp]
(
	[transid] ASC
)
INCLUDE([winlostdate]) WITH (PAD_INDEX = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [ps_BETG_monthly]([winlostdate])
USE [bodb_archive]
CREATE NONCLUSTERED INDEX [__switch_bettransG_partition_temp_IX_winlostdate] ON [dbo].[__switch_bettransG_partition_temp]
(
	[winlostdate] ASC
)WITH (PAD_INDEX = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [ps_BETG_monthly]([winlostdate])
COMMIT TRANSACTION
GO

USE bodb_Archive;
alter table bettransG switch partition 1 to __switch_bettransG_partition_temp partition 1
alter table bettransG switch partition 2 to __switch_bettransG_partition_temp partition 2
alter table bettransG switch partition 3 to __switch_bettransG_partition_temp partition 3
alter table bettransG switch partition 4 to __switch_bettransG_partition_temp partition 4
alter table bettransG switch partition 5 to __switch_bettransG_partition_temp partition 5
alter table bettransG switch partition 6 to __switch_bettransG_partition_temp partition 6
alter table bettransG switch partition 7 to __switch_bettransG_partition_temp partition 7
alter table bettransG switch partition 8 to __switch_bettransG_partition_temp partition 8
alter table bettransG switch partition 9 to __switch_bettransG_partition_temp partition 9
alter table bettransG switch partition 10 to __switch_bettransG_partition_temp partition 10
alter table bettransG switch partition 11 to __switch_bettransG_partition_temp partition 11
alter table bettransG switch partition 12 to __switch_bettransG_partition_temp partition 12


USE bodb_Archive
drop table [bodb_Archive].[dbo].[__switch_bettransG_partition_temp]
go

USE bodb_Archive
alter partition function pf_BETG_monthly() merge range (N'2018-01-31T23:59:00')
alter partition function pf_BETG_monthly() merge range (N'2018-02-28T23:59:00')
alter partition function pf_BETG_monthly() merge range (N'2018-03-31T23:59:00')
alter partition function pf_BETG_monthly() merge range (N'2018-04-30T23:59:00')
alter partition function pf_BETG_monthly() merge range (N'2018-05-31T23:59:00')
alter partition function pf_BETG_monthly() merge range (N'2018-06-30T23:59:00')
alter partition function pf_BETG_monthly() merge range (N'2018-07-31T23:59:00')
alter partition function pf_BETG_monthly() merge range (N'2018-08-31T23:59:00')
alter partition function pf_BETG_monthly() merge range (N'2018-09-30T23:59:00')
alter partition function pf_BETG_monthly() merge range (N'2018-10-31T23:59:00')
alter partition function pf_BETG_monthly() merge range (N'2018-11-30T23:59:00')
alter partition function pf_BETG_monthly() merge range (N'2018-12-31T23:59:00')
GO

USE master;
ALTER DATABASE bodb_archive REMOVE FILE [BETG_18M01]
ALTER DATABASE bodb_archive REMOVE FILE [BETG_18M02]
ALTER DATABASE bodb_archive REMOVE FILE [BETG_18M03]
ALTER DATABASE bodb_archive REMOVE FILE [BETG_18M04]
ALTER DATABASE bodb_archive REMOVE FILE [BETG_18M05]
ALTER DATABASE bodb_archive REMOVE FILE [BETG_18M06]
ALTER DATABASE bodb_archive REMOVE FILE [BETG_18M07]
ALTER DATABASE bodb_archive REMOVE FILE [BETG_18M08]
ALTER DATABASE bodb_archive REMOVE FILE [BETG_18M09]
ALTER DATABASE bodb_archive REMOVE FILE [BETG_18M10]
ALTER DATABASE bodb_archive REMOVE FILE [BETG_18M11]
ALTER DATABASE bodb_archive REMOVE FILE [BETG_18M12]
GO

USE master;
ALTER DATABASE bodb_archive REMOVE FILEGROUP [BETG_18M01]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [BETG_18M02]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [BETG_18M03]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [BETG_18M04]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [BETG_18M05]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [BETG_18M06]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [BETG_18M07]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [BETG_18M08]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [BETG_18M09]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [BETG_18M10]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [BETG_18M11]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [BETG_18M12]
GO