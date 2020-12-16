/*
	Task: Move some dbs from G$ to F$
		+ Detach and attach MonDB database
    Server: DB052

	Databases:
		MonDB
*/
--detech mondb
EXEC sp_detach_db 'MonDB', 'true'; 

--copy files from G$ to F$

--attach mondb with new location
CREATE DATABASE [MonDB] ON 
( FILENAME = N'F:\IBC_DB\MonDB\MonDB.mdf'),
( FILENAME = N'F:\IBC_DB\MonDB\MonDB_log.ldf')
FOR ATTACH
