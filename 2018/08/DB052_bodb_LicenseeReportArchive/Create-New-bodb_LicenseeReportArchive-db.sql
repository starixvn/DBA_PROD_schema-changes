﻿USE master
GO  
/*
	20180828@Patrick
	Task: Create new bodb_LicenseeReportArchive db on DB052
		+ Create database
		+ Create login user
*/
CREATE DATABASE bodb_LicenseeReportArchive
ON ( 
	NAME = bodb_LicenseeReportArchive_Data,  
    FILENAME = 'M:\IBC_DB\bodb_LicenseeReportArchive\bodb_LicenseeReportArchive_Data.mdf',  
    SIZE = 32768KB, --32MB
    MAXSIZE = UNLIMITED,  
    FILEGROWTH = 32768KB --32MB
) LOG ON (
	NAME = bodb_LicenseeReportArchive_Log,  
    FILENAME = 'M:\IBC_DB\bodb_LicenseeReportArchive\bodb_LicenseeReportArchive_Data_Log.ldf',  
    SIZE = 10240000KB, --10GB
    MAXSIZE = 204800000KB,  --20GB
    FILEGROWTH = 262144KB --256MB
)

GO

USE bodb_LicenseeReportArchive
GO

CREATE USER [bodbLicenseeNet] FOR LOGIN [bodbLicenseeNet]
GO
CREATE USER [sqllink] FOR LOGIN [sqllink]
GO
CREATE USER [Dot_Admin] FOR LOGIN [Dot_Admin]
GO
CREATE USER [Dot_Casino] FOR LOGIN [Dot_Casino]
GO
CREATE USER [Dot_Member] FOR LOGIN [Dot_Member]
GO
CREATE USER [vnteam] FOR LOGIN [vnteam]
GO
CREATE USER [vndba] FOR LOGIN [vndba]
GO

--++add role
EXEC sp_addrolemember N'db_owner', N'SqlLink'
GO
EXEC sp_addrolemember N'db_owner', N'vndba'
GO
EXEC sp_addrolemember N'db_datareader', N'vnteam'
GO

--//create file group/file data for 
ALTER DATABASE bodb_LicenseeReportArchive ADD FILEGROUP Audit_Data
ALTER DATABASE bodb_LicenseeReportArchive ADD FILE (NAME = N'BATrans_Data', FILENAME = 'G:\IBC_DB\bodb_LicenseeReportArchive\Audit_Data.ndf'
			, SIZE = 32768KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Audit_Data

ALTER DATABASE bodb_LicenseeReportArchive ADD FILEGROUP Audit_Data_Index
ALTER DATABASE bodb_LicenseeReportArchive ADD FILE (NAME = N'BATrans_Index', FILENAME = 'G:\IBC_DB\bodb_LicenseeReportArchive\Audit_Data_Index.ndf'
			, SIZE = 32768KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP Audit_Data_Index