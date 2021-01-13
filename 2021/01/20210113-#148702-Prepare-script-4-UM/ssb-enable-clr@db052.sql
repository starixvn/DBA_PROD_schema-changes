/*
	Task - Setup new server DB052
		+ Enable CLR
	Run on DB052
*/

EXEC sp_configure 'clr enabled'
 
EXEC sp_configure 'clr enabled', 1
RECONFIGURE
 
EXEC sp_configure 'clr enabled'