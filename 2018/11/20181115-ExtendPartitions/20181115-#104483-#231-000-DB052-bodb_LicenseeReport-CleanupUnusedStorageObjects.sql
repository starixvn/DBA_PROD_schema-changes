/*
	Creator:	20181114@Billy
	Task:		Cleanup unused storage objects (File, Filegroup, Partition Scheme, Partition Function) - [Redmine: #104483]
	Server:		DB052.bodb_LicenseeReport
	WBS:		#231-000
*/

USE	bodb_LicenseeReport;
GO

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [KPI_Data];
RAISERROR('Done DF - KPI_Data', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [KPI_Data];
RAISERROR('Done FG - KPI_Data', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [KPI_Index];
RAISERROR('Done DF - KPI_Index', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [KPI_Index];
RAISERROR('Done FG - KPI_Index', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [LicenseeData];
RAISERROR('Done DF - LicenseeData', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [LicenseeData];
RAISERROR('Done FG - LicenseeData', 0, 0) WITH NOWAIT;

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

DROP PARTITION SCHEME	[ps_rptKPI_MTD_3rdProducts_yearly];
RAISERROR('Done PS - ps_rptKPI_MTD_3rdProducts_yearly', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptKPI_MTD_3rdProducts_12M12];
RAISERROR('Done DF - rptKPI_MTD_3rdProducts_12M12', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptKPI_MTD_3rdProducts_12M12];
RAISERROR('Done FG - rptKPI_MTD_3rdProducts_12M12', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptKPI_MTD_3rdProducts_13M12];
RAISERROR('Done DF - rptKPI_MTD_3rdProducts_13M12', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptKPI_MTD_3rdProducts_13M12];
RAISERROR('Done FG - rptKPI_MTD_3rdProducts_13M12', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptKPI_MTD_3rdProducts_14M12];
RAISERROR('Done DF - rptKPI_MTD_3rdProducts_14M12', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptKPI_MTD_3rdProducts_14M12];
RAISERROR('Done FG - rptKPI_MTD_3rdProducts_14M12', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptKPI_MTD_3rdProducts_15M12];
RAISERROR('Done DF - rptKPI_MTD_3rdProducts_15M12', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptKPI_MTD_3rdProducts_15M12];
RAISERROR('Done FG - rptKPI_MTD_3rdProducts_15M12', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptKPI_MTD_3rdProducts_16M12];
RAISERROR('Done DF - rptKPI_MTD_3rdProducts_16M12', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptKPI_MTD_3rdProducts_16M12];
RAISERROR('Done FG - rptKPI_MTD_3rdProducts_16M12', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptKPI_MTD_3rdProducts_17M12];
RAISERROR('Done DF - rptKPI_MTD_3rdProducts_17M12', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptKPI_MTD_3rdProducts_17M12];
RAISERROR('Done FG - rptKPI_MTD_3rdProducts_17M12', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptKPI_MTD_3rdProducts_18M12];
RAISERROR('Done DF - rptKPI_MTD_3rdProducts_18M12', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptKPI_MTD_3rdProducts_18M12];
RAISERROR('Done FG - rptKPI_MTD_3rdProducts_18M12', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptKPI_MTD_3rdProducts_MAX];
RAISERROR('Done DF - rptKPI_MTD_3rdProducts_MAX', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptKPI_MTD_3rdProducts_MAX];
RAISERROR('Done FG - rptKPI_MTD_3rdProducts_MAX', 0, 0) WITH NOWAIT;

DROP PARTITION FUNCTION	[pf_rptKPI_MTD_3rdProducts_yearly];
RAISERROR('Done PF - pf_rptKPI_MTD_3rdProducts_yearly', 0, 0) WITH NOWAIT;

DROP PARTITION SCHEME	[ps_rptLicIPBetting_monthly];
RAISERROR('Done PS - ps_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_10M01];
RAISERROR('Done DF - rptLicIPBetting_10M01', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_10M01];
RAISERROR('Done FG - rptLicIPBetting_10M01', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_10M02];
RAISERROR('Done DF - rptLicIPBetting_10M02', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_10M02];
RAISERROR('Done FG - rptLicIPBetting_10M02', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_10M03];
RAISERROR('Done DF - rptLicIPBetting_10M03', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_10M03];
RAISERROR('Done FG - rptLicIPBetting_10M03', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_10M04];
RAISERROR('Done DF - rptLicIPBetting_10M04', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_10M04];
RAISERROR('Done FG - rptLicIPBetting_10M04', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_10M05];
RAISERROR('Done DF - rptLicIPBetting_10M05', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_10M05];
RAISERROR('Done FG - rptLicIPBetting_10M05', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_10M06];
RAISERROR('Done DF - rptLicIPBetting_10M06', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_10M06];
RAISERROR('Done FG - rptLicIPBetting_10M06', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_10M07];
RAISERROR('Done DF - rptLicIPBetting_10M07', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_10M07];
RAISERROR('Done FG - rptLicIPBetting_10M07', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_10M08];
RAISERROR('Done DF - rptLicIPBetting_10M08', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_10M08];
RAISERROR('Done FG - rptLicIPBetting_10M08', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_10M09];
RAISERROR('Done DF - rptLicIPBetting_10M09', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_10M09];
RAISERROR('Done FG - rptLicIPBetting_10M09', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_10M10];
RAISERROR('Done DF - rptLicIPBetting_10M10', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_10M10];
RAISERROR('Done FG - rptLicIPBetting_10M10', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_10M11];
RAISERROR('Done DF - rptLicIPBetting_10M11', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_10M11];
RAISERROR('Done FG - rptLicIPBetting_10M11', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_10M12];
RAISERROR('Done DF - rptLicIPBetting_10M12', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_10M12];
RAISERROR('Done FG - rptLicIPBetting_10M12', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_11M01];
RAISERROR('Done DF - rptLicIPBetting_11M01', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_11M01];
RAISERROR('Done FG - rptLicIPBetting_11M01', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_11M02];
RAISERROR('Done DF - rptLicIPBetting_11M02', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_11M02];
RAISERROR('Done FG - rptLicIPBetting_11M02', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_11M03];
RAISERROR('Done DF - rptLicIPBetting_11M03', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_11M03];
RAISERROR('Done FG - rptLicIPBetting_11M03', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_11M04];
RAISERROR('Done DF - rptLicIPBetting_11M04', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_11M04];
RAISERROR('Done FG - rptLicIPBetting_11M04', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_11M05];
RAISERROR('Done DF - rptLicIPBetting_11M05', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_11M05];
RAISERROR('Done FG - rptLicIPBetting_11M05', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_11M06];
RAISERROR('Done DF - rptLicIPBetting_11M06', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_11M06];
RAISERROR('Done FG - rptLicIPBetting_11M06', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_11M07];
RAISERROR('Done DF - rptLicIPBetting_11M07', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_11M07];
RAISERROR('Done FG - rptLicIPBetting_11M07', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_11M08];
RAISERROR('Done DF - rptLicIPBetting_11M08', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_11M08];
RAISERROR('Done FG - rptLicIPBetting_11M08', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_11M09];
RAISERROR('Done DF - rptLicIPBetting_11M09', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_11M09];
RAISERROR('Done FG - rptLicIPBetting_11M09', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_11M10];
RAISERROR('Done DF - rptLicIPBetting_11M10', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_11M10];
RAISERROR('Done FG - rptLicIPBetting_11M10', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_11M11];
RAISERROR('Done DF - rptLicIPBetting_11M11', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_11M11];
RAISERROR('Done FG - rptLicIPBetting_11M11', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_11M12];
RAISERROR('Done DF - rptLicIPBetting_11M12', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_11M12];
RAISERROR('Done FG - rptLicIPBetting_11M12', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_12M01];
RAISERROR('Done DF - rptLicIPBetting_12M01', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_12M01];
RAISERROR('Done FG - rptLicIPBetting_12M01', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_12M02];
RAISERROR('Done DF - rptLicIPBetting_12M02', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_12M02];
RAISERROR('Done FG - rptLicIPBetting_12M02', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_12M03];
RAISERROR('Done DF - rptLicIPBetting_12M03', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_12M03];
RAISERROR('Done FG - rptLicIPBetting_12M03', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_12M04];
RAISERROR('Done DF - rptLicIPBetting_12M04', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_12M04];
RAISERROR('Done FG - rptLicIPBetting_12M04', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_12M05];
RAISERROR('Done DF - rptLicIPBetting_12M05', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_12M05];
RAISERROR('Done FG - rptLicIPBetting_12M05', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_12M06];
RAISERROR('Done DF - rptLicIPBetting_12M06', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_12M06];
RAISERROR('Done FG - rptLicIPBetting_12M06', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_12M07];
RAISERROR('Done DF - rptLicIPBetting_12M07', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_12M07];
RAISERROR('Done FG - rptLicIPBetting_12M07', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_12M08];
RAISERROR('Done DF - rptLicIPBetting_12M08', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_12M08];
RAISERROR('Done FG - rptLicIPBetting_12M08', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_12M09];
RAISERROR('Done DF - rptLicIPBetting_12M09', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_12M09];
RAISERROR('Done FG - rptLicIPBetting_12M09', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_12M10];
RAISERROR('Done DF - rptLicIPBetting_12M10', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_12M10];
RAISERROR('Done FG - rptLicIPBetting_12M10', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_12M11];
RAISERROR('Done DF - rptLicIPBetting_12M11', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_12M11];
RAISERROR('Done FG - rptLicIPBetting_12M11', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_12M12];
RAISERROR('Done DF - rptLicIPBetting_12M12', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_12M12];
RAISERROR('Done FG - rptLicIPBetting_12M12', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_13M01];
RAISERROR('Done DF - rptLicIPBetting_13M01', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_13M01];
RAISERROR('Done FG - rptLicIPBetting_13M01', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_13M02];
RAISERROR('Done DF - rptLicIPBetting_13M02', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_13M02];
RAISERROR('Done FG - rptLicIPBetting_13M02', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_13M03];
RAISERROR('Done DF - rptLicIPBetting_13M03', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_13M03];
RAISERROR('Done FG - rptLicIPBetting_13M03', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_13M04];
RAISERROR('Done DF - rptLicIPBetting_13M04', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_13M04];
RAISERROR('Done FG - rptLicIPBetting_13M04', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_13M05];
RAISERROR('Done DF - rptLicIPBetting_13M05', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_13M05];
RAISERROR('Done FG - rptLicIPBetting_13M05', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_13M06];
RAISERROR('Done DF - rptLicIPBetting_13M06', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_13M06];
RAISERROR('Done FG - rptLicIPBetting_13M06', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_13M07];
RAISERROR('Done DF - rptLicIPBetting_13M07', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_13M07];
RAISERROR('Done FG - rptLicIPBetting_13M07', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_13M08];
RAISERROR('Done DF - rptLicIPBetting_13M08', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_13M08];
RAISERROR('Done FG - rptLicIPBetting_13M08', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_13M09];
RAISERROR('Done DF - rptLicIPBetting_13M09', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_13M09];
RAISERROR('Done FG - rptLicIPBetting_13M09', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_13M10];
RAISERROR('Done DF - rptLicIPBetting_13M10', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_13M10];
RAISERROR('Done FG - rptLicIPBetting_13M10', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_13M11];
RAISERROR('Done DF - rptLicIPBetting_13M11', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_13M11];
RAISERROR('Done FG - rptLicIPBetting_13M11', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_13M12];
RAISERROR('Done DF - rptLicIPBetting_13M12', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_13M12];
RAISERROR('Done FG - rptLicIPBetting_13M12', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_14M01];
RAISERROR('Done DF - rptLicIPBetting_14M01', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_14M01];
RAISERROR('Done FG - rptLicIPBetting_14M01', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_14M02];
RAISERROR('Done DF - rptLicIPBetting_14M02', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_14M02];
RAISERROR('Done FG - rptLicIPBetting_14M02', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_14M03];
RAISERROR('Done DF - rptLicIPBetting_14M03', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_14M03];
RAISERROR('Done FG - rptLicIPBetting_14M03', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_14M04];
RAISERROR('Done DF - rptLicIPBetting_14M04', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_14M04];
RAISERROR('Done FG - rptLicIPBetting_14M04', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_14M05];
RAISERROR('Done DF - rptLicIPBetting_14M05', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_14M05];
RAISERROR('Done FG - rptLicIPBetting_14M05', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_14M06];
RAISERROR('Done DF - rptLicIPBetting_14M06', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_14M06];
RAISERROR('Done FG - rptLicIPBetting_14M06', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_14M07];
RAISERROR('Done DF - rptLicIPBetting_14M07', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_14M07];
RAISERROR('Done FG - rptLicIPBetting_14M07', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_14M08];
RAISERROR('Done DF - rptLicIPBetting_14M08', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_14M08];
RAISERROR('Done FG - rptLicIPBetting_14M08', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_14M09];
RAISERROR('Done DF - rptLicIPBetting_14M09', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_14M09];
RAISERROR('Done FG - rptLicIPBetting_14M09', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_14M10];
RAISERROR('Done DF - rptLicIPBetting_14M10', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_14M10];
RAISERROR('Done FG - rptLicIPBetting_14M10', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_14M11];
RAISERROR('Done DF - rptLicIPBetting_14M11', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_14M11];
RAISERROR('Done FG - rptLicIPBetting_14M11', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_14M12];
RAISERROR('Done DF - rptLicIPBetting_14M12', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_14M12];
RAISERROR('Done FG - rptLicIPBetting_14M12', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_15M01];
RAISERROR('Done DF - rptLicIPBetting_15M01', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_15M01];
RAISERROR('Done FG - rptLicIPBetting_15M01', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_15M02];
RAISERROR('Done DF - rptLicIPBetting_15M02', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_15M02];
RAISERROR('Done FG - rptLicIPBetting_15M02', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_15M03];
RAISERROR('Done DF - rptLicIPBetting_15M03', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_15M03];
RAISERROR('Done FG - rptLicIPBetting_15M03', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_15M04];
RAISERROR('Done DF - rptLicIPBetting_15M04', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_15M04];
RAISERROR('Done FG - rptLicIPBetting_15M04', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_15M05];
RAISERROR('Done DF - rptLicIPBetting_15M05', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_15M05];
RAISERROR('Done FG - rptLicIPBetting_15M05', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_15M06];
RAISERROR('Done DF - rptLicIPBetting_15M06', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_15M06];
RAISERROR('Done FG - rptLicIPBetting_15M06', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_15M07];
RAISERROR('Done DF - rptLicIPBetting_15M07', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_15M07];
RAISERROR('Done FG - rptLicIPBetting_15M07', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_15M08];
RAISERROR('Done DF - rptLicIPBetting_15M08', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_15M08];
RAISERROR('Done FG - rptLicIPBetting_15M08', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_15M09];
RAISERROR('Done DF - rptLicIPBetting_15M09', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_15M09];
RAISERROR('Done FG - rptLicIPBetting_15M09', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_15M10];
RAISERROR('Done DF - rptLicIPBetting_15M10', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_15M10];
RAISERROR('Done FG - rptLicIPBetting_15M10', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_15M11];
RAISERROR('Done DF - rptLicIPBetting_15M11', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_15M11];
RAISERROR('Done FG - rptLicIPBetting_15M11', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_15M12];
RAISERROR('Done DF - rptLicIPBetting_15M12', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_15M12];
RAISERROR('Done FG - rptLicIPBetting_15M12', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_16M01];
RAISERROR('Done DF - rptLicIPBetting_16M01', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_16M01];
RAISERROR('Done FG - rptLicIPBetting_16M01', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_16M02];
RAISERROR('Done DF - rptLicIPBetting_16M02', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_16M02];
RAISERROR('Done FG - rptLicIPBetting_16M02', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_16M03];
RAISERROR('Done DF - rptLicIPBetting_16M03', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_16M03];
RAISERROR('Done FG - rptLicIPBetting_16M03', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_16M04];
RAISERROR('Done DF - rptLicIPBetting_16M04', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_16M04];
RAISERROR('Done FG - rptLicIPBetting_16M04', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_16M05];
RAISERROR('Done DF - rptLicIPBetting_16M05', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_16M05];
RAISERROR('Done FG - rptLicIPBetting_16M05', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_16M06];
RAISERROR('Done DF - rptLicIPBetting_16M06', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_16M06];
RAISERROR('Done FG - rptLicIPBetting_16M06', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_16M07];
RAISERROR('Done DF - rptLicIPBetting_16M07', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_16M07];
RAISERROR('Done FG - rptLicIPBetting_16M07', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_16M08];
RAISERROR('Done DF - rptLicIPBetting_16M08', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_16M08];
RAISERROR('Done FG - rptLicIPBetting_16M08', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_16M09];
RAISERROR('Done DF - rptLicIPBetting_16M09', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_16M09];
RAISERROR('Done FG - rptLicIPBetting_16M09', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_16M10];
RAISERROR('Done DF - rptLicIPBetting_16M10', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_16M10];
RAISERROR('Done FG - rptLicIPBetting_16M10', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_16M11];
RAISERROR('Done DF - rptLicIPBetting_16M11', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_16M11];
RAISERROR('Done FG - rptLicIPBetting_16M11', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_16M12];
RAISERROR('Done DF - rptLicIPBetting_16M12', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_16M12];
RAISERROR('Done FG - rptLicIPBetting_16M12', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_17M01];
RAISERROR('Done DF - rptLicIPBetting_17M01', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_17M01];
RAISERROR('Done FG - rptLicIPBetting_17M01', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_17M02];
RAISERROR('Done DF - rptLicIPBetting_17M02', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_17M02];
RAISERROR('Done FG - rptLicIPBetting_17M02', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_17M03];
RAISERROR('Done DF - rptLicIPBetting_17M03', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_17M03];
RAISERROR('Done FG - rptLicIPBetting_17M03', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_17M04];
RAISERROR('Done DF - rptLicIPBetting_17M04', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_17M04];
RAISERROR('Done FG - rptLicIPBetting_17M04', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_17M05];
RAISERROR('Done DF - rptLicIPBetting_17M05', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_17M05];
RAISERROR('Done FG - rptLicIPBetting_17M05', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_17M06];
RAISERROR('Done DF - rptLicIPBetting_17M06', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_17M06];
RAISERROR('Done FG - rptLicIPBetting_17M06', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_17M07];
RAISERROR('Done DF - rptLicIPBetting_17M07', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_17M07];
RAISERROR('Done FG - rptLicIPBetting_17M07', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_17M08];
RAISERROR('Done DF - rptLicIPBetting_17M08', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_17M08];
RAISERROR('Done FG - rptLicIPBetting_17M08', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_17M09];
RAISERROR('Done DF - rptLicIPBetting_17M09', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_17M09];
RAISERROR('Done FG - rptLicIPBetting_17M09', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_17M10];
RAISERROR('Done DF - rptLicIPBetting_17M10', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_17M10];
RAISERROR('Done FG - rptLicIPBetting_17M10', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_17M11];
RAISERROR('Done DF - rptLicIPBetting_17M11', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_17M11];
RAISERROR('Done FG - rptLicIPBetting_17M11', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_17M12];
RAISERROR('Done DF - rptLicIPBetting_17M12', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_17M12];
RAISERROR('Done FG - rptLicIPBetting_17M12', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_18M01];
RAISERROR('Done DF - rptLicIPBetting_18M01', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_18M01];
RAISERROR('Done FG - rptLicIPBetting_18M01', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_18M02];
RAISERROR('Done DF - rptLicIPBetting_18M02', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_18M02];
RAISERROR('Done FG - rptLicIPBetting_18M02', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_18M03];
RAISERROR('Done DF - rptLicIPBetting_18M03', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_18M03];
RAISERROR('Done FG - rptLicIPBetting_18M03', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_18M04];
RAISERROR('Done DF - rptLicIPBetting_18M04', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_18M04];
RAISERROR('Done FG - rptLicIPBetting_18M04', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_18M05];
RAISERROR('Done DF - rptLicIPBetting_18M05', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_18M05];
RAISERROR('Done FG - rptLicIPBetting_18M05', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_18M06];
RAISERROR('Done DF - rptLicIPBetting_18M06', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_18M06];
RAISERROR('Done FG - rptLicIPBetting_18M06', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_18M07];
RAISERROR('Done DF - rptLicIPBetting_18M07', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_18M07];
RAISERROR('Done FG - rptLicIPBetting_18M07', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_18M08];
RAISERROR('Done DF - rptLicIPBetting_18M08', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_18M08];
RAISERROR('Done FG - rptLicIPBetting_18M08', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_18M09];
RAISERROR('Done DF - rptLicIPBetting_18M09', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_18M09];
RAISERROR('Done FG - rptLicIPBetting_18M09', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_18M10];
RAISERROR('Done DF - rptLicIPBetting_18M10', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_18M10];
RAISERROR('Done FG - rptLicIPBetting_18M10', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_18M11];
RAISERROR('Done DF - rptLicIPBetting_18M11', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_18M11];
RAISERROR('Done FG - rptLicIPBetting_18M11', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_18M12];
RAISERROR('Done DF - rptLicIPBetting_18M12', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_18M12];
RAISERROR('Done FG - rptLicIPBetting_18M12', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILE [rptLicIPBetting_MAX];
RAISERROR('Done DF - rptLicIPBetting_MAX', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_LicenseeReport] REMOVE FILEGROUP [rptLicIPBetting_MAX];
RAISERROR('Done FG - rptLicIPBetting_MAX', 0, 0) WITH NOWAIT;

DROP PARTITION FUNCTION	[pf_rptLicIPBetting_monthly];
RAISERROR('Done PF - pf_rptLicIPBetting_monthly', 0, 0) WITH NOWAIT;
