/*
	Task - Upgrade SQL Server DB055 to 2019
		1- Restore FULL backup: bodb_ost
	Run on db055N1
*/

RESTORE DATABASE bodb_ost FROM DISK = N'path_file_here?' 	
WITH NORECOVERY, FILE = 1,	
MOVE N'bodb_ost'	 TO N'H:\USER_DB\bodb_ost\bodb_ost.mdf',
MOVE N'bettrans_index1'	 TO N'H:\USER_DB\bodb_ost\bettrans_index1.ndf',
MOVE N'bettrans_index2'	 TO N'H:\USER_DB\bodb_ost\bettrans_index2.ndf',
MOVE N'bettrans_table1'	 TO N'H:\USER_DB\bodb_ost\bettrans_table1.ndf',
MOVE N'bettrans_table2'	 TO N'H:\USER_DB\bodb_ost\bettrans_table2.ndf',
MOVE N'Data_table'	 TO N'H:\USER_DB\bodb_ost\Data_table.ndf',
MOVE N'bodb_ost_log'	 TO N'H:\USER_DB\bodb_ost\bodb_ost_log.ldf',
  NOUNLOAD,  STATS = 10	