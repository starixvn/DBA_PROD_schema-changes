/* 
	Task: Restore dbs, set full recovery mode, change owner to sa
	Run on primary node DBGRP03N1

 */


RESTORE DATABASE [bodb_CustomerLog] FROM  DISK = N'G:\BACKUP_LOCAL\UM0713\DBTRANS.bodb_CustomerLog_20230713.bak' WITH  FILE = 1, REPLACE, RECOVERY,
MOVE N'bodb_CustomerLog' TO N'G:\USER_DB\bodb_CustomerLog\bodb_CustomerLog.mdf',
MOVE N'bodb_CustomerLog_log' TO N'G:\USER_DB\bodb_CustomerLog\bodb_CustomerLog_log.ldf',
MOVE N'bodb_DATA-01' TO N'G:\USER_DB\bodb_CustomerLog\bodb_DATA-01.ndf',
MOVE N'bodb_Table-01' TO N'G:\USER_DB\bodb_CustomerLog\bodb_Table-01.ndf',
MOVE N'bodb_INDEX-01' TO N'G:\USER_DB\bodb_CustomerLog\bodb_INDEX-01.ndf',
MOVE N'serviceBroker_01' TO N'G:\USER_DB\bodb_CustomerLog\serviceBroker_01.ndf',
MOVE N'Task_UserLog' TO N'G:\USER_DB\bodb_CustomerLog\Task_UserLog.ndf',
NOUNLOAD,  STATS = 5

USE [master]
GO
ALTER DATABASE [bodb_CustomerLog] SET RECOVERY FULL WITH ROLLBACK IMMEDIATE
GO

--------------------------------------------------------
RESTORE DATABASE [IntgTransDB] FROM  DISK = N'G:\BACKUP_LOCAL\UM0713\DBTRANS.IntgTransDB_20230713.bak' WITH  FILE = 1, REPLACE, RECOVERY,
MOVE N'IntgTransDB' TO N'G:\USER_DB\IntgTransDB\IntgTransDB.mdf',
MOVE N'IntgTransDB_log' TO N'G:\USER_DB\IntgTransDB\IntgTransDB_log.ldf',
MOVE N'BetTrans_index' TO N'G:\USER_DB\IntgTransDB\BetTrans_index.ndf',
MOVE N'BetTrans_table' TO N'G:\USER_DB\IntgTransDB\BetTrans_table.ndf',
NOUNLOAD,  STATS = 5

USE [master]
GO
ALTER DATABASE [IntgTransDB] SET RECOVERY FULL WITH ROLLBACK IMMEDIATE
GO

--------------------------------------------------------
RESTORE DATABASE [IPDB] FROM  DISK = N'G:\BACKUP_LOCAL\UM0713\DBTRANS.IPDB_20230713.bak' WITH  FILE = 1, REPLACE, RECOVERY,
MOVE N'ipdb_Data' TO N'G:\USER_DB\IPDB\IPDB_Primary.MDF',
MOVE N'ipdb_Log' TO N'G:\USER_DB\IPDB\IPDB_Log.LDF',
NOUNLOAD,  STATS = 5


--------------------------------------------------------
-- RESTORE DATABASE [LogDB] FROM  DISK = N'G:\BACKUP_LOCAL\UM0713\DBTRANS.LogDB_20230713.bak' WITH  FILE = 1, REPLACE, RECOVERY,
-- MOVE N'LogDB' TO N'G:\USER_DB\LogDB\LogDB.mdf',
-- MOVE N'LogDB_log' TO N'G:\USER_DB\LogDB\LogDB_log.ldf',
-- MOVE N'DATA' TO N'G:\USER_DB\LogDB\DATA.ndf',
-- MOVE N'userlog_T0_data1' TO N'G:\USER_DB\LogDB\userlog_T0_data1.ndf',
-- MOVE N'userlog_T0_data2' TO N'G:\USER_DB\LogDB\userlog_T0_data2.ndf',
-- MOVE N'userlog_T0_data3' TO N'G:\USER_DB\LogDB\userlog_T0_data3.ndf',
-- MOVE N'userlog_T0_data4' TO N'G:\USER_DB\LogDB\userlog_T0_data4.ndf',
-- MOVE N'userlog_T1_data1' TO N'G:\USER_DB\LogDB\userlog_T1_data1.ndf',
-- MOVE N'userlog_T1_data2' TO N'G:\USER_DB\LogDB\userlog_T1_data2.ndf',
-- MOVE N'userlog_T1_data3' TO N'G:\USER_DB\LogDB\userlog_T1_data3.ndf',
-- MOVE N'userlog_T1_data4' TO N'G:\USER_DB\LogDB\userlog_T1_data4.ndf',
-- MOVE N'userlog_T2_data1' TO N'G:\USER_DB\LogDB\userlog_T2_data1.ndf',
-- MOVE N'userlog_T2_data2' TO N'G:\USER_DB\LogDB\userlog_T2_data2.ndf',
-- MOVE N'userlog_T2_data3' TO N'G:\USER_DB\LogDB\userlog_T2_data3.ndf',
-- MOVE N'userlog_T2_data4' TO N'G:\USER_DB\LogDB\userlog_T2_data4.ndf',
-- MOVE N'userlog_T3_data1' TO N'G:\USER_DB\LogDB\userlog_T3_data1.ndf',
-- MOVE N'userlog_T3_data2' TO N'G:\USER_DB\LogDB\userlog_T3_data2.ndf',
-- MOVE N'userlog_T3_data3' TO N'G:\USER_DB\LogDB\userlog_T3_data3.ndf',
-- MOVE N'userlog_T3_data4' TO N'G:\USER_DB\LogDB\userlog_T3_data4.ndf',
-- MOVE N'userlog_T0_data5' TO N'G:\USER_DB\LogDB\userlog_T0_data5.ndf',
-- MOVE N'userlog_T0_data6' TO N'G:\USER_DB\LogDB\userlog_T0_data6.ndf',
-- MOVE N'userlog_T1_data5' TO N'G:\USER_DB\LogDB\userlog_T1_data5.ndf',
-- MOVE N'userlog_T1_data6' TO N'G:\USER_DB\LogDB\userlog_T1_data6.ndf',
-- MOVE N'userlog_T2_data5' TO N'G:\USER_DB\LogDB\userlog_T2_data5.ndf',
-- MOVE N'userlog_T2_data6' TO N'G:\USER_DB\LogDB\userlog_T2_data6.ndf',
-- MOVE N'userlog_T3_data5' TO N'G:\USER_DB\LogDB\userlog_T3_data5.ndf',
-- MOVE N'userlog_T3_data6' TO N'G:\USER_DB\LogDB\userlog_T3_data6.ndf',
-- NOUNLOAD,  STATS = 5

-- USE [master]
-- GO
-- ALTER DATABASE [LogDB] SET RECOVERY FULL WITH ROLLBACK IMMEDIATE
-- GO

------------------------------------------------------
USE [master]
GO
ALTER AUTHORIZATION ON DATABASE::[bodb_CustomerLog] TO [sa];
ALTER AUTHORIZATION ON DATABASE::[IPDB] TO [sa];
ALTER AUTHORIZATION ON DATABASE::[IntgTransDB] TO [sa];
--ALTER AUTHORIZATION ON DATABASE::[LogDB] TO [sa];
GO