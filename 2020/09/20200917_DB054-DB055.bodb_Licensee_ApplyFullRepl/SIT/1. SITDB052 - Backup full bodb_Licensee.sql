/*
	Task: Backup SITDB052.bodb_Licensee for applying full replication to SITDB055 (Copy only mode)
	Run on SIT Env - SITDB052
*/

USE master
GO

BACKUP DATABASE [bodb_Licensee] TO DISK = 
	N'G:\BACKUP\SITDB052.bodb_Licensee_20200914.bak'
WITH COPY_ONLY, NOFORMAT, NOINIT, NAME = 
	N'bodb_Licensee-Full Database Backup', SKIP, 
	NOREWIND, NOUNLOAD, COMPRESSION, STATS = 10
GO


