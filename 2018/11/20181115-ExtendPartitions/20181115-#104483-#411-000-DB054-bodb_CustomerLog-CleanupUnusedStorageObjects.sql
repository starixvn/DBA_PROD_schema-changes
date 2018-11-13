/*
	Creator:	20181113@Billy
	Task:		Cleanup unused storage objects (File, Filegroup, Partition Scheme, Partition Function) - [Redmine: #104483]
	Server:		DB054.bodb_CustomerLog
	WBS:		#411-000
*/

USE	bodb_CustomerLog;
GO

ALTER DATABASE [bodb_CustomerLog] REMOVE FILE [bodb_Credit-01];
RAISERROR('Done DF - bodb_Credit-01', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILE [bodb_Credit-02];
RAISERROR('Done DF - bodb_Credit-02', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILEGROUP [Credit];
RAISERROR('Done FG - Credit', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILE [bodb_CustInfo-01];
RAISERROR('Done DF - bodb_CustInfo-01', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILE [bodb_CustInfo-02];
RAISERROR('Done DF - bodb_CustInfo-02', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILE [bodb_CustInfo-03];
RAISERROR('Done DF - bodb_CustInfo-03', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILE [bodb_CustInfo-04];
RAISERROR('Done DF - bodb_CustInfo-04', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILEGROUP [CustInfo];
RAISERROR('Done FG - CustInfo', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILE [bodb_CustOverride-01];
RAISERROR('Done DF - bodb_CustOverride-01', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILE [bodb_CustOverride-02];
RAISERROR('Done DF - bodb_CustOverride-02', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILEGROUP [CustOverride];
RAISERROR('Done FG - CustOverride', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILE [bodb_CustSetting-01];
RAISERROR('Done DF - bodb_CustSetting-01', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILE [bodb_CustSetting-02];
RAISERROR('Done DF - bodb_CustSetting-02', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILE [bodb_CustSetting-03];
RAISERROR('Done DF - bodb_CustSetting-03', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILE [bodb_CustSetting-04];
RAISERROR('Done DF - bodb_CustSetting-04', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILEGROUP [CustSetting];
RAISERROR('Done FG - CustSetting', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILE [bodb_CustSettingGame-01];
RAISERROR('Done DF - bodb_CustSettingGame-01', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILE [bodb_CustSettingGame-02];
RAISERROR('Done DF - bodb_CustSettingGame-02', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILEGROUP [CustSettingGame];
RAISERROR('Done FG - CustSettingGame', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILE [bodb_Dep_CustSetting-01];
RAISERROR('Done DF - bodb_Dep_CustSetting-01', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILE [bodb_Dep_CustSetting-02];
RAISERROR('Done DF - bodb_Dep_CustSetting-02', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILE [bodb_Dep_CustSetting-03];
RAISERROR('Done DF - bodb_Dep_CustSetting-03', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILE [bodb_Dep_CustSetting-04];
RAISERROR('Done DF - bodb_Dep_CustSetting-04', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILEGROUP [Dep_CustSetting];
RAISERROR('Done FG - Dep_CustSetting', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILE [bodb_Dep_CustSetting3rd-01];
RAISERROR('Done DF - bodb_Dep_CustSetting3rd-01', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILE [bodb_Dep_CustSetting3rd-02];
RAISERROR('Done DF - bodb_Dep_CustSetting3rd-02', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILE [bodb_Dep_CustSetting3rd-03];
RAISERROR('Done DF - bodb_Dep_CustSetting3rd-03', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILE [bodb_Dep_CustSetting3rd-04];
RAISERROR('Done DF - bodb_Dep_CustSetting3rd-04', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILEGROUP [Dep_CustSetting3rd];
RAISERROR('Done FG - Dep_CustSetting3rd', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILE [bodb_INDEX-01];
RAISERROR('Done DF - bodb_INDEX-01', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILE [bodb_INDEX-02];
RAISERROR('Done DF - bodb_INDEX-02', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILE [bodb_INDEX-03];
RAISERROR('Done DF - bodb_INDEX-03', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILE [bodb_INDEX-04];
RAISERROR('Done DF - bodb_INDEX-04', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILEGROUP [INDEX];
RAISERROR('Done FG - INDEX', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILE [bodb_P2PGameSetting-01];
RAISERROR('Done DF - bodb_P2PGameSetting-01', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILE [bodb_P2PGameSetting-02];
RAISERROR('Done DF - bodb_P2PGameSetting-02', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILEGROUP [P2PGameSetting];
RAISERROR('Done FG - P2PGameSetting', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILE [bodb_P2PGroupComm-01];
RAISERROR('Done DF - bodb_P2PGroupComm-01', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILE [bodb_P2PGroupComm-02];
RAISERROR('Done DF - bodb_P2PGroupComm-02', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILEGROUP [P2PGroupComm];
RAISERROR('Done FG - P2PGroupComm', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILE [bodb_Transaction-01];
RAISERROR('Done DF - bodb_Transaction-01', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILE [bodb_Transaction-02];
RAISERROR('Done DF - bodb_Transaction-02', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILEGROUP [Transaction];
RAISERROR('Done FG - Transaction', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILE [bodb_Transfer-01];
RAISERROR('Done DF - bodb_Transfer-01', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILE [bodb_Transfer-02];
RAISERROR('Done DF - bodb_Transfer-02', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILE [bodb_Transfer-03];
RAISERROR('Done DF - bodb_Transfer-03', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILE [bodb_Transfer-04];
RAISERROR('Done DF - bodb_Transfer-04', 0, 0) WITH NOWAIT;

ALTER DATABASE [bodb_CustomerLog] REMOVE FILEGROUP [Transfer];
RAISERROR('Done FG - Transfer', 0, 0) WITH NOWAIT;
