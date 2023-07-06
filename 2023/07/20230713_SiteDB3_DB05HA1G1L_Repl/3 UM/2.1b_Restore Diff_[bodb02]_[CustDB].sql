/* 
	Task: Restore diff bodb02, custdb in UM
	Run on primary node DBGRP03N1
 */

--est 1min
RESTORE DATABASE [bodb02] FROM disk = 'G:\BACKUP_LOCAL\UM0713\DBTrans.bodb02_20230713.dif' WITH  FILE = 1, NOUNLOAD, RECOVERY, STATS = 5

--est 5s
RESTORE DATABASE [CustDB] FROM disk = 'G:\BACKUP_LOCAL\UM0713\DBTrans.CustDB_20230713.dif' WITH  FILE = 1, NOUNLOAD, RECOVERY, STATS = 5

