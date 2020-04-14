
--- DB053 disable login

select 'ALTER LOGIN ['+name+'] DISABLE;' from sys.syslogins
where name not like '#%'
and name not like '%\%'
and name not like 'RD%'
and name not like 'vn%'
and name not in ('viet',  'thien','sa')
and name <>   'MonDB_User'


ALTER LOGIN [bodbAdminNet] DISABLE;
ALTER LOGIN [bodbDownlineNet] DISABLE;
ALTER LOGIN [bodbDownlineNetView] DISABLE;
ALTER LOGIN [Dot_Admin] DISABLE;
ALTER LOGIN [bodbExtAccNet] DISABLE;
ALTER LOGIN [Dot_3rdparty] DISABLE;
ALTER LOGIN [Dot_Casino] DISABLE;
ALTER LOGIN [Dot_Member] DISABLE;
ALTER LOGIN [bodbLicenseeNet] DISABLE;
ALTER LOGIN [portal] DISABLE;
ALTER LOGIN [bodbinternalNet] DISABLE;
ALTER LOGIN [SqlLink] DISABLE;
ALTER LOGIN [ServerMonitor] DISABLE;
ALTER LOGIN [DataSync] DISABLE;
ALTER LOGIN [dbacert_user] DISABLE;
ALTER LOGIN [dba_Cert_User] DISABLE;
ALTER LOGIN [bodbRMSNet] DISABLE;
ALTER LOGIN [dwrs2] DISABLE;
ALTER LOGIN [bodbSPUNet] DISABLE;
ALTER LOGIN [bodbPloutosNet] DISABLE;