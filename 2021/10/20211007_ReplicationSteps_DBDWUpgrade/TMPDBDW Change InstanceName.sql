/*
	Task: Check and change Servername if mismatched with others
	Run on TMPDBDW
*/

--Check server properties 
SELECT  HOST_NAME() AS 'host_name()',
@@servername AS 'ServerName\InstanceName',
SERVERPROPERTY('servername') AS 'ServerName',
SERVERPROPERTY('machinename') AS 'Windows_Name',
SERVERPROPERTY('ComputerNamePhysicalNetBIOS') AS 'NetBIOS_Name',
SERVERPROPERTY('instanceName') AS 'InstanceName',
SERVERPROPERTY('IsClustered') AS 'IsClustered'


--Execute below to drop the current server name
EXEC sp_DROPSERVER 'TMPDBDW'

--Execute below to add a new server name. Make sure local is specified.
EXEC sp_ADDSERVER 'DBDW', 'local'

--Change OS Servername then Reboot server.

--Verify the new name using:
SELECT @@SERVERNAME
SELECT * FROM sys.servers WHERE server_id = 0