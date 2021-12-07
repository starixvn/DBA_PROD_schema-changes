/*
	Task - Upgrade SQL Server DB055 to 2019
		1- Restore DIFF backup: MonDB
	Run on db055N1
*/

RESTORE DATABASE MonDB FROM DISK = N'path_file_here?' 	
WITH RECOVERY, FILE = 1,	
MOVE N'MonDB'	 TO N'G:\USER_DB\MonDB\MonDB.mdf',
MOVE N'MonDB_log'	 TO N'G:\USER_DB\MonDB\MonDB_log.ldf',
  NOUNLOAD,  STATS = 10	