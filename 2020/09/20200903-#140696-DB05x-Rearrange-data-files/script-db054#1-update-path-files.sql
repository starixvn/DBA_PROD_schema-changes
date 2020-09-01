/*
	Task - Rearrange data files

	 Steps:
		1- Update path files
		2- Stop sql service
		3- Copy data file to new location
		4- Start sql service
		5- Check result
*/
USE master
GO

ALTER DATABASE msdb MODIFY FILE (NAME = MSDBLog, FILENAME = N'I:\user_db\msdb\MSDBLog.ldf');
ALTER DATABASE msdb MODIFY FILE (NAME = MSDBData, FILENAME = N'I:\user_db\msdb\MSDBData.mdf');
