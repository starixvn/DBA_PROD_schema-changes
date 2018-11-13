/*
	Creator:	20181113@Billy
	Task:		Cleanup unused storage objects (File, Filegroup, Partition Scheme, Partition Function) - [Redmine: #104483]
	Server:		DBTP.bodb_Report
	WBS:		#921-000
*/

USE	bodb_Report;
GO

ALTER DATABASE [bodb_Report] REMOVE FILE [m88_01];
RAISERROR('Done DF - m88_01', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_Report] REMOVE FILE [m88_02];
RAISERROR('Done DF - m88_02', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_Report] REMOVE FILE [m88_03];
RAISERROR('Done DF - m88_03', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_Report] REMOVE FILE [m88_04];
RAISERROR('Done DF - m88_04', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_Report] REMOVE FILEGROUP [m88];
RAISERROR('Done FG - m88', 0, 0) WITH NOWAIT;
