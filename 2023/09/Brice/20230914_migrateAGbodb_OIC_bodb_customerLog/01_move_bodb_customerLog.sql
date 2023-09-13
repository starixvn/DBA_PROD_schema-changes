USE [master]
go

-- Return the logical file name.  
SELECT name, physical_name AS CurrentLocation, state_desc  
FROM sys.master_files  
WHERE database_id = DB_ID(N'bodb_CustomerLog')  
    AND type_desc = N'LOG';  
GO  
ALTER DATABASE [bodb_CustomerLog] SET OFFLINE;  
GO  
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'bodb_CustomerLog',FILENAME = N'H:\USER_DB\bodb_CustomerLog\bodb_CustomerLog.mdf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'bodb_PRIMARY-01',FILENAME = N'H:\USER_DB\bodb_CustomerLog\bodb_PRIMARY-01.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'bodb_PRIMARY-02',FILENAME = N'H:\USER_DB\bodb_CustomerLog\bodb_PRIMARY-02.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'CustCategoryHistory',FILENAME = N'H:\USER_DB\bodb_CustomerLog\CustCategoryHistory_1.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'bodb_UserControl_Log-01',FILENAME = N'H:\USER_DB\bodb_CustomerLog\bodb_UserControl_Log-01.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'bodb_UserControl_Log-02',FILENAME = N'H:\USER_DB\bodb_CustomerLog\bodb_UserControl_Log-02.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'Task_UserLog',FILENAME = N'H:\USER_DB\bodb_CustomerLog\Task_UserLog.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'bodb_DATA-01',FILENAME = N'H:\USER_DB\bodb_CustomerLog\bodb_DATA-01.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'bodb_DATA-02',FILENAME = N'H:\USER_DB\bodb_CustomerLog\bodb_DATA-02.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'bodb_INDEX-01',FILENAME = N'H:\USER_DB\bodb_CustomerLog\bodb_INDEX-01.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'bodb_INDEX-02',FILENAME = N'H:\USER_DB\bodb_CustomerLog\bodb_INDEX-02.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'bodb_INDEX-03',FILENAME = N'H:\USER_DB\bodb_CustomerLog\bodb_INDEX-03.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'bodb_INDEX-04',FILENAME = N'H:\USER_DB\bodb_CustomerLog\bodb_INDEX-04.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'bodb_MATCH-01',FILENAME = N'H:\USER_DB\bodb_CustomerLog\bodb_MATCH-01.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'bodb_MATCH-02',FILENAME = N'H:\USER_DB\bodb_CustomerLog\bodb_MATCH-02.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'INDEX_FILTERED_01',FILENAME = N'H:\USER_DB\bodb_CustomerLog\INDEX_FILTERED_01.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'INDEX_FILTERED_02',FILENAME = N'H:\USER_DB\bodb_CustomerLog\INDEX_FILTERED_02.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'OWA_DATA',FILENAME = N'H:\USER_DB\bodb_CustomerLog\OWN_DATA.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'RUNSPM',FILENAME = N'H:\USER_DB\bodb_CustomerLog\RUNSPM.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'UserLog_CasinoAPI',FILENAME = N'H:\USER_DB\bodb_CustomerLog\UserLog_CasinoAPI.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'UserLog_Credit',FILENAME = N'H:\USER_DB\bodb_CustomerLog\UserLog_Credit.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'CS_CREDIT',FILENAME = N'H:\USER_DB\bodb_CustomerLog\CS_CREDIT.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'CS_LOGIN',FILENAME = N'H:\USER_DB\bodb_CustomerLog\CS_LOGIN.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'CS_RUNSP',FILENAME = N'H:\USER_DB\bodb_CustomerLog\CS_RUNSP.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'UserLog_Dep_CustSetting',FILENAME = N'H:\USER_DB\bodb_CustomerLog\UserLog_Dep_CustSetting.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'UserLog_Login',FILENAME = N'H:\USER_DB\bodb_CustomerLog\UserLog_Login.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'UserLog_RunSP',FILENAME = N'H:\USER_DB\bodb_CustomerLog\UserLog_RunSP.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'UserLog_Settle',FILENAME = N'H:\USER_DB\bodb_CustomerLog\UserLog_Settle.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'UserLog_Transaction',FILENAME = N'H:\USER_DB\bodb_CustomerLog\UserLog_Transaction.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'UserLog_Transfer',FILENAME = N'H:\USER_DB\bodb_CustomerLog\UserLog_Transfer.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'RUNSP2_13M01',FILENAME = N'H:\USER_DB\bodb_CustomerLog\RUNSP2_13M01.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'bodb_CasinoAPI-01',FILENAME = N'H:\USER_DB\bodb_CustomerLog\bodb_CasinoAPI-01.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'bodb_CasinoAPI-02',FILENAME = N'H:\USER_DB\bodb_CustomerLog\bodb_CasinoAPI-02.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'bodb_AppLog_03',FILENAME = N'H:\USER_DB\bodb_CustomerLog\bodb_AppLog_03.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'bodb_AppLog_04',FILENAME = N'H:\USER_DB\bodb_CustomerLog\bodb_AppLog_04.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'bodb_AppLog-01',FILENAME = N'H:\USER_DB\bodb_CustomerLog\bodb_AppLog-01.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'bodb_AppLog-02',FILENAME = N'H:\USER_DB\bodb_CustomerLog\bodb_AppLog-02.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'rmLogLogin_01',FILENAME = N'H:\USER_DB\bodb_CustomerLog\rmLogLogin_01.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'rmLogUserCtrl_01',FILENAME = N'H:\USER_DB\bodb_CustomerLog\rmLogUserCtrl_01.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'DBALog_Archive_Cust_Table_01',FILENAME = N'H:\USER_DB\bodb_CustomerLog\DBALog_Archive_Cust_Table_01.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'DBALog_Archive_Cust_Table_02',FILENAME = N'H:\USER_DB\bodb_CustomerLog\DBALog_Archive_Cust_Table_02.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'eaLogLogin-01',FILENAME = N'H:\USER_DB\bodb_CustomerLog\eaLogLogin-01.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'eaLogUserCtrl-01',FILENAME = N'H:\USER_DB\bodb_CustomerLog\eaLogUserCtrl-01.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'serviceBroker_01',FILENAME = N'H:\USER_DB\bodb_CustomerLog\serviceBroker_01.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'data2_01',FILENAME = N'H:\USER_DB\bodb_CustomerLog\data2_01.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'bodb_appLog01',FILENAME = N'H:\USER_DB\bodb_CustomerLog\bodb_appLog01.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'bodb_appLog02',FILENAME = N'H:\USER_DB\bodb_CustomerLog\bodb_appLog02.ndf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'bodb_CustomerLog_log',FILENAME = N'H:\USER_DB\bodb_CustomerLog\bodb_CustomerLog_log.ldf');
--ALTER DATABASE [bodb_CustomerLog] 
 --MOVE N'bodb_CustomerLog_H2',FILENAME = N'H:\USER_DB\bodb_CustomerLog\bodb_CustomerLog_H3.ldf');
ALTER DATABASE [bodb_CustomerLog] MODIFY FILE ( NAME = N'bodb_CustomerLog_log_H',FILENAME = N'H:\USER_DB\bodb_CustomerLog\bodb_CustomerLog_log_H.ldf');
GO







--COPY FILES PHYSICAL FROM I$ AND G$ TO H$
--G:\USER_DB\bodb_CustomerLog					H:\USER_DB\bodb_CustomerLog\
--I:\user_db\bodb_CustomerLog					H:\USER_DB\bodb_CustomerLog\









ALTER DATABASE [bodb_CustomerLog] SET ONLINE;  
GO 
SELECT name, physical_name AS CurrentLocation, state_desc  
FROM sys.master_files  
WHERE database_id = DB_ID(N'bodb_CustomerLog')  
    AND type_desc = N'LOG';  
GO  
