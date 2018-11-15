/*
	Creator:	20181113@Billy
	Task:		Cleanup unused storage objects (File, Filegroup, Partition Scheme, Partition Function) - [Redmine: #104483]
	Server:		DB054.bodb_LicenseeReport
	WBS:		#421-000
*/

USE	bodb_LicenseeReport;
GO

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [KPI_Index];
RAISERROR('Done DF - KPI_Index', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [KPI_Index];
RAISERROR('Done FG - KPI_Index', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [LicWinloss2_DATA];
RAISERROR('Done DF - LicWinloss2_DATA', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [LicWinloss2_DATA];
RAISERROR('Done FG - LicWinloss2_DATA', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rpt_BettingParlayIndex];
RAISERROR('Done DF - rpt_BettingParlayIndex', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rpt_BettingParlayIndex];
RAISERROR('Done FG - rpt_BettingParlayIndex', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptBettingByProductIndex];
RAISERROR('Done DF - rptBettingByProductIndex', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptBettingByProductIndex];
RAISERROR('Done FG - rptBettingByProductIndex', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptCustomerActiveData_01];
RAISERROR('Done DF - rptCustomerActiveData_01', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptCustomerActiveData];
RAISERROR('Done FG - rptCustomerActiveData', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptCustomerMatchData];
RAISERROR('Done DF - rptCustomerMatchData', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptCustomerMatchData];
RAISERROR('Done FG - rptCustomerMatchData', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptCustomerMatchIndex];
RAISERROR('Done DF - rptCustomerMatchIndex', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptCustomerMatchIndex];
RAISERROR('Done FG - rptCustomerMatchIndex', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptCustomerTurnOverData];
RAISERROR('Done DF - rptCustomerTurnOverData', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptCustomerTurnOverData];
RAISERROR('Done FG - rptCustomerTurnOverData', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptCustomerTurnOverIndex];
RAISERROR('Done DF - rptCustomerTurnOverIndex', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptCustomerTurnOverIndex];
RAISERROR('Done FG - rptCustomerTurnOverIndex', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptWinlostbyLeagueData];
RAISERROR('Done DF - rptWinlostbyLeagueData', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptWinlostbyLeagueData];
RAISERROR('Done FG - rptWinlostbyLeagueData', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptWinlostbyLeagueIndex];
RAISERROR('Done DF - rptWinlostbyLeagueIndex', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptWinlostbyLeagueIndex];
RAISERROR('Done FG - rptWinlostbyLeagueIndex', 0, 0) WITH NOWAIT;
