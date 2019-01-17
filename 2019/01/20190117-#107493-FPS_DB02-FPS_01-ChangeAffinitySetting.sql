/*
	Creator:	20190117@Billy
	Task:		Change affinity setting - [Redmine: #107493]
	Server:		FPS_DB02\FPS_01
*/


USE	master;
GO

--	BEGIN STEP 1:
--		Check status
----------------------------------------------------------------------------------------------------

SELECT	*
FROM	sys.dm_os_nodes AS don WITH (NOLOCK);

SELECT	*
FROM	sys.dm_os_memory_nodes AS domn WITH (NOLOCK);


--	BEGIN STEP 2:
--		Change server configuration
----------------------------------------------------------------------------------------------------

ALTER SERVER CONFIGURATION SET PROCESS AFFINITY NUMANODE=2,3;


--	BEGIN STEP 3:
--		Check status, again
----------------------------------------------------------------------------------------------------

SELECT	*
FROM	sys.dm_os_nodes AS don WITH (NOLOCK);

SELECT	*
FROM	sys.dm_os_memory_nodes AS domn WITH (NOLOCK);


--	BEGIN STEP 4:
--		Check SQL Server Log
----------------------------------------------------------------------------------------------------


--	BEGIN STEP R1:
--		Rollback - Change affinity back to AUTO
----------------------------------------------------------------------------------------------------

--ALTER SERVER CONFIGURATION SET PROCESS AFFINITY CPU = AUTO;