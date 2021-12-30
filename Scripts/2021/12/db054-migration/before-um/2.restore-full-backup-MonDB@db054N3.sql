/*
	Task - Upgrade SQL Server DB054 to 2019
		1- Restore FULL backup: MonDB
	Run on db054N3
*/

RESTORE DATABASE MonDB FROM DISK = N'path_file_here?' 	
WITH NORECOVERY, FILE = 1,	
MOVE N'MonDB'	 TO N'G:\USER_DB\MonDB\MonDB.mdf',
MOVE N'MonDB_log'	 TO N'G:\USER_DB\MonDB\MonDB_log.ldf',
  NOUNLOAD,  STATS = 10	