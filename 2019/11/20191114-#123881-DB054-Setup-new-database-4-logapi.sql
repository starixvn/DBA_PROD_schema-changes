
/*
	Task - Create new data for loging data login from API
	Run DB054
*/

--//create database
CREATE DATABASE [bodb_APILog] ON  PRIMARY 
( NAME = N'bodb_APILog', FILENAME = N'M:\IBC_DB\bodb_APILog\bodb_APILog.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB ), 
 FILEGROUP [UserLog_APILog_Data] 
( NAME = N'UserLog_APILog_Data', FILENAME = N'M:\IBC_DB\bodb_APILog\UserLog_APILog_Data.ndf' , SIZE = 512KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB )
 LOG ON 
( NAME = N'bodb_APILog_log', FILENAME = N'M:\IBC_DB\bodb_APILog\bodb_APILog_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

--//create file group and data file
ALTER DATABASE bodb_APILog ADD FILEGROUP UserLog_APILog_Data
ALTER DATABASE bodb_APILog 
	ADD FILE (NAME = N'UserLog_APILog_Data', FILENAME = N'M:\IBC_DB\bodb_APILog\UserLog_APILog_Data.ndf'
	, SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP UserLog_APILog_Data

--//create table
CREATE TABLE UserLog_APILog( LogId BIGINT IDENTITY(1,1) 
	, UserName NVARCHAR(50)
	, LoginIP VARCHAR(50)
	, BrowserName VARCHAR(200)
	, Platform VARCHAR(200)
	, CountryCode VARCHAR(10)
	, ActionName VARCHAR(50)
	, RequesTime DATETIME
	, LogDate DATETIME DEFAULT(GETDATE()))

ALTER TABLE [dbo].[UserLog_APILog] ADD  CONSTRAINT [PK_UserLog_APILog] PRIMARY KEY NONCLUSTERED 
(
	[LogId] ASC
) ON UserLog_APILog_Data
GO

CREATE CLUSTERED INDEX CIX_UserLog_APILog ON UserLog_APILog (LogDate, UserName) ON UserLog_APILog_Data