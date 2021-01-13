USE [master]
GO
/*
	Task - Setup new server DB052
		+ Enable service broker
	Run on DB052
*/

ALTER DATABASE bodb02 SET ENABLE_BROKER WITH ROLLBACK IMMEDIATE;