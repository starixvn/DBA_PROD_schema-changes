/***
	Created@20220314: bobby.nguyen
	Task: #169911 - DBA clean up 2018 historical data
	Database: DB06X.bodb_Archive
***/
--table_name	partition_number	Row_Total	partition_scheme	fg_name	logical_name	Size_MB	physical_name
--transfer_bk	1	22611916	ps_TRANSBK_monthly	TRANSBK_18M01	TRANSBK_18M01	192	F:\USER_DB\bodb_Archive\TRANSBK\TRANSBK_18M01.ndf
--transfer_bk	2	20102982	ps_TRANSBK_monthly	TRANSBK_18M02	TRANSBK_18M02	168	F:\USER_DB\bodb_Archive\TRANSBK\TRANSBK_18M02.ndf
--transfer_bk	3	24971562	ps_TRANSBK_monthly	TRANSBK_18M03	TRANSBK_18M03	200	F:\USER_DB\bodb_Archive\TRANSBK\TRANSBK_18M03.ndf
--transfer_bk	4	26010279	ps_TRANSBK_monthly	TRANSBK_18M04	TRANSBK_18M04	208	F:\USER_DB\bodb_Archive\TRANSBK\TRANSBK_18M04.ndf
--transfer_bk	5	25104642	ps_TRANSBK_monthly	TRANSBK_18M05	TRANSBK_18M05	192	F:\USER_DB\bodb_Archive\TRANSBK\TRANSBK_18M05.ndf
--transfer_bk	6	44838576	ps_TRANSBK_monthly	TRANSBK_18M06	TRANSBK_18M06	340	F:\USER_DB\bodb_Archive\TRANSBK\TRANSBK_18M06.ndf
--transfer_bk	7	44726538	ps_TRANSBK_monthly	TRANSBK_18M07	TRANSBK_18M07	344	F:\USER_DB\bodb_Archive\TRANSBK\TRANSBK_18M07.ndf
--transfer_bk	8	36582286	ps_TRANSBK_monthly	TRANSBK_18M08	TRANSBK_18M08	276	F:\USER_DB\bodb_Archive\TRANSBK\TRANSBK_18M08.ndf
--transfer_bk	9	34486554	ps_TRANSBK_monthly	TRANSBK_18M09	TRANSBK_18M09	256	F:\USER_DB\bodb_Archive\TRANSBK\TRANSBK_18M09.ndf
--transfer_bk	10	36740535	ps_TRANSBK_monthly	TRANSBK_18M10	TRANSBK_18M10	284	F:\USER_DB\bodb_Archive\TRANSBK\TRANSBK_18M10.ndf
--transfer_bk	11	36497770	ps_TRANSBK_monthly	TRANSBK_18M11	TRANSBK_18M11	276	F:\USER_DB\bodb_Archive\TRANSBK\TRANSBK_18M11.ndf
--transfer_bk	12	37078255	ps_TRANSBK_monthly	TRANSBK_18M12	TRANSBK_18M12	284	F:\USER_DB\bodb_Archive\TRANSBK\TRANSBK_18M12.ndf
BEGIN TRANSACTION
USE [bodb_archive]
CREATE TABLE [dbo].[__switch_transfer_bk_partition_temp](
	[custid] [int] NOT NULL,
	[transdate] [datetime] NOT NULL,
	[Debit] [money] NOT NULL,
	[Credit] [money] NOT NULL,
	[TransDesc] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[winlostdate] [smalldatetime] NOT NULL,
	[recommend] [int] NOT NULL,
	[mrecommend] [int] NOT NULL,
	[srecommend] [int] NOT NULL,
	[currency] [tinyint] NULL,
	[refno] [bigint] NOT NULL,
	[creator] [int] NULL,
	[transid] [bigint] NOT NULL,
	[bettype] [smallint] NULL,
	[balance] [money] NULL
)
WITH
(
DATA_COMPRESSION = PAGE
)

USE [bodb_archive]
CREATE CLUSTERED INDEX [__switch_transfer_bk_partition_temp_CIX_winlostdate] ON [dbo].[__switch_transfer_bk_partition_temp]
(
	[winlostdate] ASC,
	[custid] ASC
)WITH (PAD_INDEX = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [ps_TRANSBK_monthly]([winlostdate])
COMMIT TRANSACTION
GO

use bodb_Archive
alter table transfer_bk switch partition 1 to __switch_transfer_bk_partition_temp partition 1
alter table transfer_bk switch partition 2 to __switch_transfer_bk_partition_temp partition 2
alter table transfer_bk switch partition 3 to __switch_transfer_bk_partition_temp partition 3
alter table transfer_bk switch partition 4 to __switch_transfer_bk_partition_temp partition 4
alter table transfer_bk switch partition 5 to __switch_transfer_bk_partition_temp partition 5
alter table transfer_bk switch partition 6 to __switch_transfer_bk_partition_temp partition 6
alter table transfer_bk switch partition 7 to __switch_transfer_bk_partition_temp partition 7
alter table transfer_bk switch partition 8 to __switch_transfer_bk_partition_temp partition 8
alter table transfer_bk switch partition 9 to __switch_transfer_bk_partition_temp partition 9
alter table transfer_bk switch partition 10 to __switch_transfer_bk_partition_temp partition 10
alter table transfer_bk switch partition 11 to __switch_transfer_bk_partition_temp partition 11
alter table transfer_bk switch partition 12 to __switch_transfer_bk_partition_temp partition 12
GO

use bodb_Archive
drop table [bodb_Archive].[dbo].[__switch_transfer_bk_partition_temp]
go

use bodb_Archive
ALTER PARTITION FUNCTION pf_TRANSBK_monthly() MERGE RANGE (N'2018-01-31T23:59:00')
ALTER PARTITION FUNCTION pf_TRANSBK_monthly() MERGE RANGE (N'2018-02-28T23:59:00')
ALTER PARTITION FUNCTION pf_TRANSBK_monthly() MERGE RANGE (N'2018-03-31T23:59:00')
ALTER PARTITION FUNCTION pf_TRANSBK_monthly() MERGE RANGE (N'2018-04-30T23:59:00')
ALTER PARTITION FUNCTION pf_TRANSBK_monthly() MERGE RANGE (N'2018-05-31T23:59:00')
ALTER PARTITION FUNCTION pf_TRANSBK_monthly() MERGE RANGE (N'2018-06-30T23:59:00')
ALTER PARTITION FUNCTION pf_TRANSBK_monthly() MERGE RANGE (N'2018-07-31T23:59:00')
ALTER PARTITION FUNCTION pf_TRANSBK_monthly() MERGE RANGE (N'2018-08-31T23:59:00')
ALTER PARTITION FUNCTION pf_TRANSBK_monthly() MERGE RANGE (N'2018-09-30T23:59:00')
ALTER PARTITION FUNCTION pf_TRANSBK_monthly() MERGE RANGE (N'2018-10-31T23:59:00')
ALTER PARTITION FUNCTION pf_TRANSBK_monthly() MERGE RANGE (N'2018-11-30T23:59:00')
ALTER PARTITION FUNCTION pf_TRANSBK_monthly() MERGE RANGE (N'2018-12-31T23:59:00')
GO

use master
ALTER DATABASE bodb_archive REMOVE FILE [TRANSBK_18M01]
ALTER DATABASE bodb_archive REMOVE FILE [TRANSBK_18M02]
ALTER DATABASE bodb_archive REMOVE FILE [TRANSBK_18M03]
ALTER DATABASE bodb_archive REMOVE FILE [TRANSBK_18M04]
ALTER DATABASE bodb_archive REMOVE FILE [TRANSBK_18M05]
ALTER DATABASE bodb_archive REMOVE FILE [TRANSBK_18M06]
ALTER DATABASE bodb_archive REMOVE FILE [TRANSBK_18M07]
ALTER DATABASE bodb_archive REMOVE FILE [TRANSBK_18M08]
ALTER DATABASE bodb_archive REMOVE FILE [TRANSBK_18M09]
ALTER DATABASE bodb_archive REMOVE FILE [TRANSBK_18M10]
ALTER DATABASE bodb_archive REMOVE FILE [TRANSBK_18M11]
ALTER DATABASE bodb_archive REMOVE FILE [TRANSBK_18M12]
GO

use master
ALTER DATABASE bodb_archive REMOVE FILEGROUP [TRANSBK_18M01]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [TRANSBK_18M02]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [TRANSBK_18M03]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [TRANSBK_18M04]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [TRANSBK_18M05]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [TRANSBK_18M06]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [TRANSBK_18M07]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [TRANSBK_18M08]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [TRANSBK_18M09]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [TRANSBK_18M10]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [TRANSBK_18M11]
ALTER DATABASE bodb_archive REMOVE FILEGROUP [TRANSBK_18M12]
GO