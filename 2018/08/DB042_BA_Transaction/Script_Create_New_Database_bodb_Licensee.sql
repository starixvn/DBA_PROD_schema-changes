USE master
GO  
/*
	20180807@Patrick
	Task: Create new bodb_Licensee db on DB042
		+ Create database
		+ Create login user
*/
CREATE DATABASE bodb_Licensee
ON ( 
	NAME = bodb_Licensee_Data,  
    FILENAME = 'G:\IBC_DB\bodb_Licensee\bodb_Licensee_Data.mdf',  
    SIZE = 32768KB, --32MB
    MAXSIZE = UNLIMITED,  
    FILEGROWTH = 32768KB --32MB
) LOG ON (
	NAME = bodb_Licensee_Data_Log,  
    FILENAME = 'G:\IBC_DB\bodb_Licensee\bodb_Licensee_Data_Log.ldf',  
    SIZE = 10240000KB, --10GB
    MAXSIZE = 204800000KB,  --20GB
    FILEGROWTH = 262144KB --256MB
)

GO

USE bodb_Licensee
GO
CREATE USER [bodbAdminNet] FOR LOGIN [bodbAdminNet]
GO
CREATE USER [bodbExtAccNet] FOR LOGIN [bodbExtAccNet]
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