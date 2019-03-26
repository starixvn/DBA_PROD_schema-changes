/*
	Task: Archive data for bodb_CustomerLog @ UserLog_Dep_CustSetting
*/

use bodb_CustomerLog_Archive
go

ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_18M09
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_18M10
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_18M11
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_18M12
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_19M01
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_19M02
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_19M03
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_19M04
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_19M05
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_19M06
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_19M07
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_19M08
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_19M09
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_19M10
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_19M11
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_19M12
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_20M01
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_20M02
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_20M03
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_20M04
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_20M05
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_20M06
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_20M07
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_20M08
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_20M09
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_20M10
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_20M11
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_20M12
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_21M01
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_21M02
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_21M03
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_21M04
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_21M05
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_21M06
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_21M07
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_21M08
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_21M09
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_21M10
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_21M11
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_21M12
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_22M01
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_22M02
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_22M03
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_22M04
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_22M05
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_22M06
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_22M07
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_22M08
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_22M09
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_22M10
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_22M11
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_22M12
ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP Dep_CustSetting_MAX

GO
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_18M09', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_18M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_18M09
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_18M10', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_18M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_18M10
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_18M11', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_18M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_18M11
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_18M12', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_18M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_18M12
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_19M01', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_19M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_19M01
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_19M02', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_19M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_19M02
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_19M03', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_19M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_19M03
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_19M04', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_19M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_19M04
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_19M05', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_19M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_19M05
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_19M06', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_19M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_19M06
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_19M07', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_19M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_19M07
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_19M08', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_19M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_19M08
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_19M09', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_19M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_19M09
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_19M10', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_19M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_19M10
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_19M11', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_19M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_19M11
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_19M12', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_19M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_19M12
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_20M01', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_20M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_20M01
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_20M02', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_20M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_20M02
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_20M03', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_20M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_20M03
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_20M04', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_20M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_20M04
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_20M05', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_20M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_20M05
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_20M06', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_20M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_20M06
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_20M07', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_20M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_20M07
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_20M08', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_20M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_20M08
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_20M09', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_20M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_20M09
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_20M10', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_20M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_20M10
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_20M11', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_20M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_20M11
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_20M12', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_20M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_20M12
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_21M01', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_21M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_21M01
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_21M02', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_21M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_21M02
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_21M03', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_21M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_21M03
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_21M04', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_21M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_21M04
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_21M05', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_21M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_21M05
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_21M06', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_21M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_21M06
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_21M07', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_21M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_21M07
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_21M08', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_21M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_21M08
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_21M09', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_21M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_21M09
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_21M10', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_21M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_21M10
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_21M11', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_21M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_21M11
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_21M12', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_21M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_21M12
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_22M01', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_22M01.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_22M01
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_22M02', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_22M02.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_22M02
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_22M03', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_22M03.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_22M03
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_22M04', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_22M04.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_22M04
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_22M05', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_22M05.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_22M05
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_22M06', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_22M06.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_22M06
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_22M07', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_22M07.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_22M07
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_22M08', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_22M08.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_22M08
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_22M09', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_22M09.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_22M09
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_22M10', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_22M10.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_22M10
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_22M11', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_22M11.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_22M11
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_22M12', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_22M12.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_22M12
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'Dep_CustSetting_MAX', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\Dep_CustSetting\Dep_CustSetting_MAX.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Dep_CustSetting_MAX

GO
CREATE PARTITION FUNCTION [pf_Dep_CustSetting_Monthly](datetime) AS RANGE LEFT FOR VALUES (N'2018-09-30T23:59:59.997', N'2018-10-31T23:59:59.997', N'2018-11-30T23:59:59.997', N'2018-12-31T23:59:59.997', N'2019-01-31T23:59:59.997', N'2019-02-28T23:59:59.997', N'2019-03-31T23:59:59.997', N'2019-04-30T23:59:59.997', N'2019-05-31T23:59:59.997', N'2019-06-30T23:59:59.997', N'2019-07-31T23:59:59.997', N'2019-08-31T23:59:59.997', N'2019-09-30T23:59:59.997', N'2019-10-31T23:59:59.997', N'2019-11-30T23:59:59.997', N'2019-12-31T23:59:59.997', N'2020-01-31T23:59:59.997', N'2020-02-29T23:59:59.997', N'2020-03-31T23:59:59.997', N'2020-04-30T23:59:59.997', N'2020-05-31T23:59:59.997', N'2020-06-30T23:59:59.997', N'2020-07-31T23:59:59.997', N'2020-08-31T23:59:59.997', N'2020-09-30T23:59:59.997', N'2020-10-31T23:59:59.997', N'2020-11-30T23:59:59.997', N'2020-12-31T23:59:59.997', N'2021-01-31T23:59:59.997', N'2021-02-28T23:59:59.997', N'2021-03-31T23:59:59.997', N'2021-04-30T23:59:59.997', N'2021-05-31T23:59:59.997', N'2021-06-30T23:59:59.997', N'2021-07-31T23:59:59.997', N'2021-08-31T23:59:59.997', N'2021-09-30T23:59:59.997', N'2021-10-31T23:59:59.997', N'2021-11-30T23:59:59.997', N'2021-12-31T23:59:59.997', N'2022-01-31T23:59:59.997', N'2022-02-28T23:59:59.997', N'2022-03-31T23:59:59.997', N'2022-04-30T23:59:59.997', N'2022-05-31T23:59:59.997', N'2022-06-30T23:59:59.997', N'2022-07-31T23:59:59.997', N'2022-08-31T23:59:59.997', N'2022-09-30T23:59:59.997', N'2022-10-31T23:59:59.997', N'2022-11-30T23:59:59.997', N'2022-12-31T23:59:59.997')
GO

CREATE PARTITION SCHEME [ps_Dep_CustSetting_monthly] AS PARTITION [pf_Dep_CustSetting_Monthly] TO ([Dep_CustSetting_18M09], [Dep_CustSetting_18M10], [Dep_CustSetting_18M11], [Dep_CustSetting_18M12], [Dep_CustSetting_19M01], [Dep_CustSetting_19M02], [Dep_CustSetting_19M03], [Dep_CustSetting_19M04], [Dep_CustSetting_19M05], [Dep_CustSetting_19M06], [Dep_CustSetting_19M07], [Dep_CustSetting_19M08], [Dep_CustSetting_19M09], [Dep_CustSetting_19M10], [Dep_CustSetting_19M11], [Dep_CustSetting_19M12], [Dep_CustSetting_20M01], [Dep_CustSetting_20M02], [Dep_CustSetting_20M03], [Dep_CustSetting_20M04], [Dep_CustSetting_20M05], [Dep_CustSetting_20M06], [Dep_CustSetting_20M07], [Dep_CustSetting_20M08], [Dep_CustSetting_20M09], [Dep_CustSetting_20M10], [Dep_CustSetting_20M11], [Dep_CustSetting_20M12], [Dep_CustSetting_21M01], [Dep_CustSetting_21M02], [Dep_CustSetting_21M03], [Dep_CustSetting_21M04], [Dep_CustSetting_21M05], [Dep_CustSetting_21M06], [Dep_CustSetting_21M07], [Dep_CustSetting_21M08], [Dep_CustSetting_21M09], [Dep_CustSetting_21M10], [Dep_CustSetting_21M11], [Dep_CustSetting_21M12], [Dep_CustSetting_22M01], [Dep_CustSetting_22M02], [Dep_CustSetting_22M03], [Dep_CustSetting_22M04], [Dep_CustSetting_22M05], [Dep_CustSetting_22M06], [Dep_CustSetting_22M07], [Dep_CustSetting_22M08], [Dep_CustSetting_22M09], [Dep_CustSetting_22M10], [Dep_CustSetting_22M11], [Dep_CustSetting_22M12], [Dep_CustSetting_MAX])
GO


CREATE TABLE [dbo].[UserLog_Dep_CustSetting](
	[LogID] [bigint] NOT NULL,
	[UserID] [int] NULL,
	[CustID] [int] NULL,
	[logDate] [datetime] NULL,
	[ActionID] [int] NULL,
	[TrackingValue] [varchar](max) NULL,
	[TrackingValue2] [varchar](max) NULL,
	[Duration] [int] NULL,
	[Language] [varchar](3) NULL,
	[IP] [varchar](15) NULL
) ON [ps_Dep_CustSetting_monthly]([logDate])
WITH
(
DATA_COMPRESSION = PAGE
)

GO

GRANT INSERT ON [dbo].[UserLog_Dep_CustSetting] TO [bodbAdminNet] AS [dbo]
GO

GRANT SELECT ON [dbo].[UserLog_Dep_CustSetting] TO [bodbAdminNet] AS [dbo]
GO

GRANT INSERT ON [dbo].[UserLog_Dep_CustSetting] TO [bodbDownlineNet] AS [dbo]
GO

GRANT SELECT ON [dbo].[UserLog_Dep_CustSetting] TO [bodbDownlineNet] AS [dbo]
GO

GRANT INSERT ON [dbo].[UserLog_Dep_CustSetting] TO [bodbDownlineNetView] AS [dbo]
GO

GRANT SELECT ON [dbo].[UserLog_Dep_CustSetting] TO [bodbDownlineNetView] AS [dbo]
GO

GRANT INSERT ON [dbo].[UserLog_Dep_CustSetting] TO [bodbLicenseeNet] AS [dbo]
GO

GRANT SELECT ON [dbo].[UserLog_Dep_CustSetting] TO [bodbLicenseeNet] AS [dbo]
GO

GRANT INSERT ON [dbo].[UserLog_Dep_CustSetting] TO [Dot_Admin] AS [dbo]
GO

GRANT SELECT ON [dbo].[UserLog_Dep_CustSetting] TO [Dot_Admin] AS [dbo]
GO

GRANT INSERT ON [dbo].[UserLog_Dep_CustSetting] TO [Dot_Member] AS [dbo]
GO

GRANT SELECT ON [dbo].[UserLog_Dep_CustSetting] TO [Dot_Member] AS [dbo]
GO

CREATE CLUSTERED INDEX [IX_UserLog_Dep_CustSetting] ON [dbo].[UserLog_Dep_CustSetting]
(
	[CustID] ASC,
	[logDate] ASC
)WITH (DATA_COMPRESSION = PAGE) ON [ps_Dep_CustSetting_monthly]([logDate])
GO

CREATE NONCLUSTERED INDEX [IX_ActionID_Custid] ON [dbo].[UserLog_Dep_CustSetting]
(
	[ActionID] ASC,
	[CustID] ASC
)WITH (DATA_COMPRESSION = PAGE) ON [ps_Dep_CustSetting_monthly]([logDate])
GO

ALTER TABLE [dbo].[UserLog_Dep_CustSetting] ADD  CONSTRAINT [DF_UserLog_Dep_CustSetting2_logdate]  DEFAULT (getdate()) FOR [logDate]
GO


