/*<info serverAlias="DB062-SAS_adhocReport_UAT"></info>*/
/*
	Created: 20230719@Sol
	Task: move db SAS_adhocReport_UAT to disk F
	DB: DB062-SAS_adhocReport_UAT
*/

--checking
sp_helpdb 'SAS_adhocReport_UAT'

GO

--attach db 
IF NOT EXISTS (SELECT TOP 1 1 FROM sys.databases WHERE name = 'SAS_adhocReport_UAT')
BEGIN
	CREATE DATABASE SAS_adhocReport_UAT 
	ON  
		(FILENAME = 'F:\USER_DB\SAS_adhocReport\data.ndf'), 
		(FILENAME = 'F:\USER_DB\SAS_adhocReport\SAS_adhocReport.mdf'), 
		(FILENAME = 'F:\USER_DB\SAS_adhocReport\SAS_adhocReport_log.ldf') 
	FOR ATTACH;
END

GO