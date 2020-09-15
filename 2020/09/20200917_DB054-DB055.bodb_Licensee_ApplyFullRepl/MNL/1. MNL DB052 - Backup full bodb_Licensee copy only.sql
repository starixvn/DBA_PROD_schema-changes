/*
	Task: MNL - Backup DB052.bodb_Licensee for applying full replication to DB055 (Copy only mode)
	Run on MNL DB052
*/

USE master
GO

BACKUP DATABASE [bodb_Licensee] TO DISK = 
	N'G:\Backup\for_DB055\DB052.bodb_Licensee_20200917.bak'
WITH COPY_ONLY, NOFORMAT, NOINIT, NAME = 
	N'bodb_Licensee-Full Database Backup', SKIP, 
	NOREWIND, NOUNLOAD, COMPRESSION, STATS = 10
GO


