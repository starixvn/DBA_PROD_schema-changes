


-- enable linked-servers


--select 'EXEC master.dbo.sp_serveroption @server=N'''+name+''', @optname=N''data access'', @optvalue=N''true''' from sys.servers where server_id >0
 
go
go

EXEC master.dbo.sp_serveroption @server=N'DB05', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'DB054', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'DBAGE', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'DBARC', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'DBEXT', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'DBMONDW', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'DBNOTI', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'DBSPARE', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'DBTP', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'DBTRANS', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'DBTXN', @optname=N'data access', @optvalue=N'true'

go

--select 'ALTER LOGIN ['+name+'] ENABLE;' from sys.syslogins
--where name not like '#%'
--and name not like '%\%'
--and name not like 'RD%'
--and name not like 'vn%'
--and name not in ('viet',  'thien','sa')
--and name <>   'MonDB_User'

ALTER LOGIN [CTO_Test] ENABLE;
ALTER LOGIN [bodbAdminNet] ENABLE;
ALTER LOGIN [bodbLicenseeNet] ENABLE;
ALTER LOGIN [SqlLink] ENABLE;
ALTER LOGIN [Dot_Admin] ENABLE;
ALTER LOGIN [Dot_Member] ENABLE;
ALTER LOGIN [Dot_Casino] ENABLE;
ALTER LOGIN [ibcrep] ENABLE;
ALTER LOGIN [bodbExtAccNet] ENABLE;
ALTER LOGIN [ANS_Member] ENABLE;
ALTER LOGIN [ServerMonitor] ENABLE;
ALTER LOGIN [RB_Member] ENABLE;
ALTER LOGIN [bodbDownlineNet] ENABLE;
ALTER LOGIN [bodbDownlineNetView] ENABLE;
ALTER LOGIN [dba_Cert_User] ENABLE;
ALTER LOGIN [repl_ap] ENABLE;

 