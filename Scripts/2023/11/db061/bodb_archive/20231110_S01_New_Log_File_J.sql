/*<info serverAlias="DB061-bodb_archive"></info>*/
/*
	Created: 20231110@Sol
	Task: Add new log file
	DB: DB061-bodb_archive
*/

USE [master]

GO

ALTER DATABASE bodb_archive ADD LOG FILE ( NAME = N'bodb_Archive_Log_A300_J', FILENAME = N'J:\User_DB\bodb_archive\bodb_Archive_Log_A300_J.ldf' , SIZE = 4194304KB , FILEGROWTH = 524288KB )

GO