/*<info serverAlias="DBSIC-master"></info>*/
/*
	Task - scale out dbtrans - create DBGRP03N2/DBGRP03N2
		+ add bodb_customerlog to AG
	Run on DBGRP03N1/DBGRP03N2
*/

--Run on DBGRP03N1

BACKUP DATABASE [bodb_CustomerLog] TO  DISK = N'\\dbbackup\MidTerm\tmp_bodb_customerLog\DBGRP03N1.bodb_CustomerLog_20230712.bak' WITH NOFORMAT, NOINIT,  NAME = N'bodb_CustomerLog-Full Database Backup', SKIP, NOREWIND, NOUNLOAD, COMPRESSION,  STATS = 10
GO
--//Run on DBGRP03N1

--Run on DBGRP03N2
USE [master]
RESTORE DATABASE [bodb_CustomerLog] FROM  DISK = N'\\dbbackup\MidTerm\tmp_bodb_customerLog\DBGRP03N1.bodb_CustomerLog_20230712.bak' 
WITH  FILE = 1,  
MOVE N'bodb_CustomerLog' TO N'G:\USER_DB\bodb_CustomerLog.mdf',  
MOVE N'bodb_DATA-01' TO N'G:\USER_DB\bodb_DATA-01.ndf',  
MOVE N'bodb_Table-01' TO N'G:\USER_DB\bodb_Table-01.ndf',  
MOVE N'bodb_INDEX-01' TO N'G:\USER_DB\bodb_INDEX-01.ndf',  
MOVE N'serviceBroker_01' TO N'G:\USER_DB\serviceBroker_01.ndf',  
MOVE N'Task_UserLog' TO N'G:\USER_DB\Task_UserLog.ndf',  
MOVE N'bodb_CustomerLog_log' TO N'G:\USER_DB\bodb_CustomerLog_log.ldf',  
NORECOVERY,  NOUNLOAD,  STATS = 5

GO

ALTER DATABASE [bodb_CustomerLog] SET HADR AVAILABILITY GROUP = [DBGRP03L];
--//Run on DBGRP03N2

