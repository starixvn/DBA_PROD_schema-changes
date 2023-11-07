/* 
	Task: KL Restore dbs, change owner to sa, enable broker
	Run on primary node KL DBCUST

 */
USE master
GO
RESTORE DATABASE [bodb_CustomerLog]  FROM DISK = N'G:\BACKUP_LOCAL\Daniel for KL\DBCUST.bodb_CustomerLog_20231102.bak' WITH FILE = 1, RECOVERY,  MOVE N'bodb_CustomerLog' TO N'H:\USER_DB\bodb_CustomerLog\bodb_CustomerLog.mdf',  MOVE N'bodb_CustomerLog_log' TO N'H:\USER_DB\bodb_CustomerLog\bodb_CustomerLog_log.ldf',  MOVE N'bodb_DATA-01' TO N'H:\USER_DB\bodb_CustomerLog\bodb_DATA-01.ndf',  MOVE N'bodb_Table-01' TO N'H:\USER_DB\bodb_CustomerLog\bodb_Table-01.ndf',  MOVE N'bodb_INDEX-01' TO N'H:\USER_DB\bodb_CustomerLog\bodb_INDEX-01.ndf',  MOVE N'serviceBroker_01' TO N'H:\USER_DB\bodb_CustomerLog\serviceBroker_01.ndf',  MOVE N'eaLogLogin-01' TO N'H:\USER_DB\bodb_CustomerLog\eaLogLogin-01.ndf',  MOVE N'eaLogUserCtrl-01' TO N'H:\USER_DB\bodb_CustomerLog\eaLogUserCtrl-01.ndf',  MOVE N'OWA_DATA' TO N'H:\USER_DB\bodb_CustomerLog\OWN_DATA.ndf',  NOUNLOAD, STATS = 10
GO
RESTORE DATABASE [IPDB]  FROM DISK = N'G:\BACKUP_LOCAL\Daniel for KL\DBCUST.IPDB_20231102.bak' WITH FILE = 1, RECOVERY,  MOVE N'ipdb_Data' TO N'H:\USER_DB\IPDB\IPDB_Primary.MDF',  MOVE N'ipdb_Log' TO N'H:\USER_DB\IPDB\IPDB_Log.LDF',  NOUNLOAD, STATS = 10
GO

------------------------------------------------------
USE [master]
GO
ALTER AUTHORIZATION ON DATABASE::[bodb_CustomerLog] TO [sa];
GO
ALTER AUTHORIZATION ON DATABASE::[IPDB] TO [sa];
GO
------------
USE [master]
GO
ALTER DATABASE [bodb_CustomerLog] SET NEW_BROKER WITH ROLLBACK IMMEDIATE; 
ALTER DATABASE [bodb_CustomerLog] SET ENABLE_BROKER WITH ROLLBACK IMMEDIATE; 
GO