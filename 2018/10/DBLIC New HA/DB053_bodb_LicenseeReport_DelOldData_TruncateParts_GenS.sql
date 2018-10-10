/*
	Task: Generate batch script to quick delete data in rptCustomerTurnover using partitions switching
	Run on DB053.bodb_LicenseeReport
*/

DECLARE @sql varchar(MAX)

DECLARE @parts TABLE
(
	partNo int,
	filegroup varchar(100),
	HasCompression bit
)

INSERT INTO @parts --input info of partitions to be truncated - get from <Get Partition Info.sql>
SELECT 25, 'rptCustomerTurnover_17M09', 1 UNION ALL
SELECT 26, 'rptCustomerTurnover_17M10', 1 UNION ALL
SELECT 27, 'rptCustomerTurnover_17M11', 1 UNION ALL
SELECT 28, 'rptCustomerTurnover_17M12', 1 UNION ALL
SELECT 29, 'rptCustomerTurnover_18M01', 1 UNION ALL
SELECT 30, 'rptCustomerTurnover_18M02', 1 UNION ALL
SELECT 31, 'rptCustomerTurnover_18M03', 1 UNION ALL
SELECT 32, 'rptCustomerTurnover_18M04', 1 UNION ALL
SELECT 33, 'rptCustomerTurnover_18M05', 1


SELECT @sql = ''
SELECT @sql = @sql + '/*/////////////////// START DELETE PART ' + filegroup + '//////////////////////////////////// */

CREATE TABLE [rptCustomerTurnover_staging](
	[custid] [int] NOT NULL,
	[bettype] [smallint] NULL,
	[sporttype] [smallint] NULL,
	[currency] [tinyint] NULL,
	[stake] [money] NOT NULL,
	[winlost] [money] NULL,
	[playercomm] [money] NULL,
	[odds] [money] NULL,
	[oddstype] [tinyint] NULL,
	[statusID] [tinyint] NULL,
	[recommend] [int] NULL,
	[leagueID] [int] NULL,
	[winlostdate] [smalldatetime] NULL,
	[betcount] [int] NULL,
	[isBA] [tinyint] NULL,
	[BetEffective] [money] NULL
) ON [' + filegroup + ']' + 
CASE WHEN HasCompression = 1 THEN '
WITH
(
DATA_COMPRESSION = PAGE
)'
ELSE '' END + '

CREATE CLUSTERED INDEX [CIX_winlostdate] ON [rptCustomerTurnover_staging]
(
	[winlostdate] ASC,
	[recommend] ASC,
	[sporttype] ASC,
	[bettype] ASC,
	[custid] ASC,
	[currency] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_recommend] ON [rptCustomerTurnover_staging]
(
	[recommend] ASC,
	[custid] ASC
)
INCLUDE ( 	[odds],
	[statusID]) 
GO

ALTER TABLE dbo.rptCustomerTurnover SWITCH PARTITION ' + CONVERT(varchar(2), partNo) + ' TO dbo.rptCustomerTurnover_staging

DROP TABLE dbo.rptCustomerTurnover_staging

/*////////////////////////////////////END DELETE PART ' + filegroup + '//////////////////////////////////// */'

FROM @parts

select CAST(@sql AS XML)
