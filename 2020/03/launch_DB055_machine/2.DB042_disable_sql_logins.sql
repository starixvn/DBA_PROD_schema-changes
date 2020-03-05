
--- disable login

select 'ALTER LOGIN ['+name+'] DISABLE;' from sys.syslogins
where name not like '#%'
and name not like '%\%'
and name not like 'RD%'
and name not like 'vn%'
and name not in ('viet',  'thien','sa')
and name <>   'MonDB_User'



----ALTER LOGIN [CTO_Test] DISABLE;
ALTER LOGIN [bodbAdminNet] DISABLE;
ALTER LOGIN [bodbLicenseeNet] DISABLE;
ALTER LOGIN [SqlLink] DISABLE;
ALTER LOGIN [Dot_Admin] DISABLE;
ALTER LOGIN [Dot_Member] DISABLE;
ALTER LOGIN [Dot_Casino] DISABLE;
ALTER LOGIN [ibcrep] DISABLE;
ALTER LOGIN [bodbExtAccNet] DISABLE;
ALTER LOGIN [ANS_Member] DISABLE;
ALTER LOGIN [ServerMonitor] DISABLE;
ALTER LOGIN [RB_Member] DISABLE;
ALTER LOGIN [bodbDownlineNet] DISABLE;
ALTER LOGIN [bodbDownlineNetView] DISABLE;
ALTER LOGIN [dba_Cert_User] DISABLE;
ALTER LOGIN [repl_ap] DISABLE;