
Use bodb_LicenseeReport
GO

/*
Create: 2018-12-25@Sophia
Task: 95178-LAP-Casino Turnover report [rptCasinoTurnover] 
DB: DB052/DB053.bodb_LicenseeReport
*/ 
 
--1
--Create files and file groups
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_18M12]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_19M01]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_19M02]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_19M03]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_19M04]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_19M05]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_19M06]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_19M07]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_19M08]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_19M09]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_19M10]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_19M11]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_19M12]

ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_20M01]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_20M02]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_20M03]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_20M04]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_20M05]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_20M06]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_20M07]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_20M08]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_20M09]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_20M10]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_20M11]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_20M12]

ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_21M01]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_21M02]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_21M03]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_21M04]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_21M05]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_21M06]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_21M07]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_21M08]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_21M09]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_21M10]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_21M11]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_21M12]

ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_22M01]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_22M02]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_22M03]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_22M04]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_22M05]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_22M06]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_22M07]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_22M08]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_22M09]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_22M10]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_22M11]
ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_22M12]

ALTER DATABASE bodb_LicenseeReport ADD filegroup [rptCasinoTurnover_MAX]

 
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_19M01', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_18M12.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_18M12]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_19M01', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_19M01.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_19M01]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_19M02', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_19M02.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_19M02]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_19M03', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_19M03.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_19M03]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_19M04', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_19M04.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_19M04]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_19M05', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_19M05.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_19M05]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_19M06', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_19M06.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_19M06]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_19M07', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_19M07.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_19M07]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_19M08', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_19M08.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_19M08]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_19M09', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_19M09.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_19M09]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_19M10', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_19M10.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_19M10]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_19M11', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_19M11.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_19M11]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_19M12', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_19M12.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_19M12]

ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_20M01', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_20M01.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_20M01]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_20M02', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_20M02.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_20M02]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_20M03', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_20M03.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_20M03]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_20M04', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_20M04.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_20M04]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_20M05', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_20M05.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_20M05]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_20M06', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_20M06.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_20M06]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_20M07', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_20M07.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_20M07]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_20M08', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_20M08.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_20M08]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_20M09', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_20M09.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_20M09]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_20M10', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_20M10.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_20M10]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_20M11', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_20M11.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_20M11]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_20M12', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_20M12.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_20M12]

ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_21M01', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_21M01.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_21M01]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_21M02', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_21M02.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_21M02]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_21M03', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_21M03.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_21M03]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_21M04', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_21M04.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_21M04]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_21M05', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_21M05.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_21M05]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_21M06', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_21M06.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_21M06]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_21M07', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_21M07.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_21M07]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_21M08', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_21M08.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_21M08]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_21M09', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_21M09.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_21M09]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_21M10', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_21M10.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_21M10]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_21M11', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_21M11.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_21M11]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_21M12', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_21M12.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_21M12]

ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_22M01', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_22M01.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_22M01]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_22M02', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_22M02.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_22M02]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_22M03', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_22M03.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_22M03]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_22M04', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_22M04.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_22M04]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_22M05', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_22M05.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_22M05]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_22M06', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_22M06.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_22M06]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_22M07', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_22M07.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_22M07]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_22M08', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_22M08.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_22M08]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_22M09', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_22M09.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_22M09]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_22M10', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_22M10.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_22M10]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_22M11', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_22M11.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_22M11]
ALTER DATABASE bodb_LicenseeReport ADD FILE (name = 'rptCasinoTurnover_22M12', filename ='M:\IBC_DB\bodb_LicenseeReport\rptCasinoTurnover\rptCasinoTurnover_22M12.ndf', SIZE = 1 MB ,FILEGROWTH = 16 MB ) TO filegroup [rptCasinoTurnover_22M12]

--2
--Create partition function
CREATE PARTITION FUNCTION pf_rptCasinoTurnover_monthly (SMALLDATETIME) AS
RANGE LEFT FOR VALUES
(    
	N'2018-12-31T23:59:00.000', N'2019-01-31T23:59:00.000', N'2019-02-28T23:59:00.000'
	, N'2019-03-31T23:59:00.000', N'2019-04-30T23:59:00.000', N'2019-05-31T23:59:00.000'
	, N'2019-06-30T23:59:00.000', N'2019-07-31T23:59:00.000', N'2019-08-31T23:59:00.000'
	, N'2019-09-30T23:59:00.000', N'2019-10-31T23:59:00.000', N'2019-11-30T23:59:00.000'
	, N'2019-12-31T23:59:00.000', N'2020-01-31T23:59:00.000', N'2020-02-29T23:59:00.000'
	, N'2020-03-31T23:59:00.000', N'2020-04-30T23:59:00.000', N'2020-05-31T23:59:00.000'
	, N'2020-06-30T23:59:00.000', N'2020-07-31T23:59:00.000', N'2020-08-31T23:59:00.000'
	, N'2020-09-30T23:59:00.000', N'2020-10-31T23:59:00.000', N'2020-11-30T23:59:00.000'
	, N'2020-12-31T23:59:00.000', N'2021-01-31T23:59:00.000', N'2021-02-28T23:59:00.000'
	, N'2021-03-31T23:59:00.000', N'2021-04-30T23:59:00.000', N'2021-05-31T23:59:00.000'
	, N'2021-06-30T23:59:00.000', N'2021-07-31T23:59:00.000', N'2021-08-31T23:59:00.000'
	, N'2021-09-30T23:59:00.000', N'2021-10-31T23:59:00.000', N'2021-11-30T23:59:00.000'
	, N'2021-12-31T23:59:00.000', N'2022-01-31T23:59:00.000', N'2022-02-28T23:59:00.000'
	, N'2022-03-31T23:59:00.000', N'2022-04-30T23:59:00.000', N'2022-05-31T23:59:00.000'
	, N'2022-06-30T23:59:00.000', N'2022-07-31T23:59:00.000', N'2022-08-31T23:59:00.000'
	, N'2022-09-30T23:59:00.000', N'2022-10-31T23:59:00.000', N'2022-11-30T23:59:00.000'
	, N'2022-12-31T23:59:00.000'
)

--Create partition schema
CREATE PARTITION SCHEME ps_rptCasinoTurnover_monthly
AS PARTITION pf_rptCasinoTurnover_monthly
TO
    ([rptCasinoTurnover_18M12],	[rptCasinoTurnover_19M01],	[rptCasinoTurnover_19M02], 
	[rptCasinoTurnover_19M03], 	[rptCasinoTurnover_19M04], 	[rptCasinoTurnover_19M05], 
	[rptCasinoTurnover_19M06], 	[rptCasinoTurnover_19M07], 	[rptCasinoTurnover_19M08], 
	[rptCasinoTurnover_19M09], 	[rptCasinoTurnover_19M10], 	[rptCasinoTurnover_19M11], 
	[rptCasinoTurnover_19M12],	[rptCasinoTurnover_20M01],	[rptCasinoTurnover_20M02],
	[rptCasinoTurnover_20M03],	[rptCasinoTurnover_20M04],	[rptCasinoTurnover_20M05],
	[rptCasinoTurnover_20M06],	[rptCasinoTurnover_20M07],	[rptCasinoTurnover_20M08],
	[rptCasinoTurnover_20M09],	[rptCasinoTurnover_20M10],	[rptCasinoTurnover_20M11],
	[rptCasinoTurnover_20M12],	[rptCasinoTurnover_21M01],	[rptCasinoTurnover_21M02],
	[rptCasinoTurnover_21M03],	[rptCasinoTurnover_21M04],	[rptCasinoTurnover_21M05],
	[rptCasinoTurnover_21M06],	[rptCasinoTurnover_21M07],	[rptCasinoTurnover_21M08],
	[rptCasinoTurnover_21M09],	[rptCasinoTurnover_21M10],	[rptCasinoTurnover_21M11],
	[rptCasinoTurnover_21M12],	[rptCasinoTurnover_22M01],	[rptCasinoTurnover_22M02],
	[rptCasinoTurnover_22M03],	[rptCasinoTurnover_22M04],	[rptCasinoTurnover_22M05],
	[rptCasinoTurnover_22M06],	[rptCasinoTurnover_22M07],	[rptCasinoTurnover_22M08],
	[rptCasinoTurnover_22M09],	[rptCasinoTurnover_22M10],	[rptCasinoTurnover_22M11],
	[rptCasinoTurnover_22M12],	[rptCasinoTurnover_MAX]
 )                
GO

--//Table table
CREATE TABLE [dbo].[rptCasinoTurnover](
	[WinlostDate] [Smalldatetime] NULL,
	[CustId] [int] NULL,
	[Recommend] [int] NULL,
	[ProductId] [int] NULL,
	[StatusId] [tinyint] NULL,
	[Currency] [tinyint] NULL,
	[BetCount] [int] NULL,
	[Turnover] [money] NULL,
	[Winlost] [money] NULL,
	[ValidBetAmount] [money] NULL
)  ON ps_rptCasinoTurnover_monthly (WinlostDate)
WITH (DATA_COMPRESSION = PAGE)
GO 

 