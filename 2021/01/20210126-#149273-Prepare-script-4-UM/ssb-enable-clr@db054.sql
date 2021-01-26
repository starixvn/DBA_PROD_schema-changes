/*
	Task - Setup new server DB054
		+ Enable CLR
	Run on DB054
*/

EXEC sp_configure 'clr enabled'
 
EXEC sp_configure 'clr enabled', 1
RECONFIGURE
 
EXEC sp_configure 'clr enabled'