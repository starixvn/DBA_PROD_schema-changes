/*
	Task - Upgrade SQL Server DB054 to 2019
		1- Check & Map Orphaned UserName With LoginID 
	Run on db054
*/
-- 1.Sync Orphan USER
EXEC [MONDB].[dbo].[DBA_Sync_Orphan_USER]

-- 2.Check Orphaned USER
EXEC sp_MSForeachDB @commAND1='
 USE [?];
SELECT DB_NAME() [DBName],dp.name [USER_name]
    ,dp.type_desc [USER_type]
    ,isnull(sp.name,''Orhphaned!'') [login_name]
    ,sp.type_desc [login_type]
FROM sys.database_principals dp LEFT JOIN sys.server_principals sp
 ON (dp.sid = sp.sid)
WHERE dp.type in (''S'',''U'',''G'')
  AND dp.principal_id > 4
  AND dp.name not like ''##%''
ORDER BY sp.name;'
GO

-- 3.Gen Sync Script for Orphaned USER
USE tempdb;
CREATE TABLE #tmp_sync_cmd ([cmd] nvarchar(4000))
INSERT INTO #tmp_sync_cmd  
 EXEC sp_MSForeachDB @commAND1='
 USE [?];
 --IF DB_ID() > 4
 SELECT CMD = N'' USE [?];ALTER USER ['' + dp.name + N''] WITH LOGIN = ['' + dp.name + N''];''
 FROM sys.database_principals dp LEFT JOIN sys.server_principals sp
  ON (dp.sid = sp.sid)
 WHERE dp.type in (''S'',''U'',''G'')
   AND dp.principal_id > 4
   AND dp.name not like ''##%''
   AND dp.name not like ''MS_DataCollector%'' 
 ORDER BY sp.name;'
SELECT * FROM #tmp_sync_cmd;
DROP TABLE #tmp_sync_cmd;
GO

 USE [master];ALTER USER [dba_Cert_User] WITH LOGIN = [dba_Cert_User];
 USE [msdb];ALTER USER [sqlLink] WITH LOGIN = [sqlLink];
 USE [msdb];ALTER USER [vnteam] WITH LOGIN = [vnteam];
 USE [bodb_CustomerLog];ALTER USER [bodbAdminNet] WITH LOGIN = [bodbAdminNet];
 USE [bodb_CustomerLog];ALTER USER [bodbDownlineNet] WITH LOGIN = [bodbDownlineNet];
 USE [bodb_CustomerLog];ALTER USER [bodbDownlineNetView] WITH LOGIN = [bodbDownlineNetView];
 USE [bodb_CustomerLog];ALTER USER [bodbExtAccNet] WITH LOGIN = [bodbExtAccNet];
 USE [bodb_CustomerLog];ALTER USER [bodbLicenseeNet] WITH LOGIN = [bodbLicenseeNet];
 USE [bodb_CustomerLog];ALTER USER [bodbRMSNet] WITH LOGIN = [bodbRMSNet];
 USE [bodb_CustomerLog];ALTER USER [Dot_Admin] WITH LOGIN = [Dot_Admin];
 USE [bodb_CustomerLog];ALTER USER [Dot_Casino] WITH LOGIN = [Dot_Casino];
 USE [bodb_CustomerLog];ALTER USER [Dot_Member] WITH LOGIN = [Dot_Member];
 USE [bodb_CustomerLog];ALTER USER [RDCooper] WITH LOGIN = [RDCooper];
 USE [bodb_CustomerLog];ALTER USER [rdsvntrack] WITH LOGIN = [rdsvntrack];
 USE [bodb_CustomerLog];ALTER USER [RDVictor] WITH LOGIN = [RDVictor];
 USE [bodb_CustomerLog];ALTER USER [SqlLink] WITH LOGIN = [SqlLink];
 USE [bodb_CustomerLog];ALTER USER [vnBilly] WITH LOGIN = [vnBilly];
 USE [bodb_CustomerLog];ALTER USER [vnDBA] WITH LOGIN = [vnDBA];
 USE [bodb_CustomerLog];ALTER USER [vnHelen] WITH LOGIN = [vnHelen];
 USE [bodb_CustomerLog];ALTER USER [vnteam] WITH LOGIN = [vnteam];
 USE [bodb_Licensee];ALTER USER [VnAffiliate] WITH LOGIN = [VnAffiliate];
 USE [bodb_Licensee];ALTER USER [RDJoy] WITH LOGIN = [RDJoy];
 USE [bodb_Licensee];ALTER USER [vnSAS] WITH LOGIN = [vnSAS];
 USE [bodb_Licensee];ALTER USER [dwrs2] WITH LOGIN = [dwrs2];
 USE [bodb_Licensee];ALTER USER [bodbAdminNet] WITH LOGIN = [bodbAdminNet];
 USE [bodb_Licensee];ALTER USER [bodbDownlineNet] WITH LOGIN = [bodbDownlineNet];
 USE [bodb_Licensee];ALTER USER [bodbExtAccNet] WITH LOGIN = [bodbExtAccNet];
 USE [bodb_Licensee];ALTER USER [bodbLicenseeNet] WITH LOGIN = [bodbLicenseeNet];
 USE [bodb_Licensee];ALTER USER [DataSync] WITH LOGIN = [DataSync];
 USE [bodb_Licensee];ALTER USER [Dot_Admin] WITH LOGIN = [Dot_Admin];
 USE [bodb_Licensee];ALTER USER [Dot_Casino] WITH LOGIN = [Dot_Casino];
 USE [bodb_Licensee];ALTER USER [Dot_Member] WITH LOGIN = [Dot_Member];
 USE [bodb_Licensee];ALTER USER [RDCooper] WITH LOGIN = [RDCooper];
 USE [bodb_Licensee];ALTER USER [rdsvntrack] WITH LOGIN = [rdsvntrack];
 USE [bodb_Licensee];ALTER USER [RDVictor] WITH LOGIN = [RDVictor];
 USE [bodb_Licensee];ALTER USER [SqlLink] WITH LOGIN = [SqlLink];
 USE [bodb_Licensee];ALTER USER [vnBilly] WITH LOGIN = [vnBilly];
 USE [bodb_Licensee];ALTER USER [vnBobby] WITH LOGIN = [vnBobby];
 USE [bodb_Licensee];ALTER USER [vndba] WITH LOGIN = [vndba];
 USE [bodb_Licensee];ALTER USER [vnHelen] WITH LOGIN = [vnHelen];
 USE [bodb_Licensee];ALTER USER [vnRD] WITH LOGIN = [vnRD];
 USE [bodb_Licensee];ALTER USER [vnteam] WITH LOGIN = [vnteam];
 USE [bodb_N88Log];ALTER USER [bodbAdminNet] WITH LOGIN = [bodbAdminNet];
 USE [bodb_N88Log];ALTER USER [bodbLicenseeNet] WITH LOGIN = [bodbLicenseeNet];
 USE [bodb_N88Log];ALTER USER [rdsvntrack] WITH LOGIN = [rdsvntrack];
 USE [bodb_N88Log];ALTER USER [SqlLink] WITH LOGIN = [SqlLink];
 USE [bodb_N88Log];ALTER USER [vnBilly] WITH LOGIN = [vnBilly];
 USE [bodb_N88Log];ALTER USER [vnteam] WITH LOGIN = [vnteam];
 USE [bodb_NAPLog];ALTER USER [bodbAdminNet] WITH LOGIN = [bodbAdminNet];
 USE [bodb_NAPLog];ALTER USER [rdsvntrack] WITH LOGIN = [rdsvntrack];
 USE [bodb_NAPLog];ALTER USER [RDVictor] WITH LOGIN = [RDVictor];
 USE [bodb_NAPLog];ALTER USER [SqlLink] WITH LOGIN = [SqlLink];
 USE [bodb_NAPLog];ALTER USER [vnBilly] WITH LOGIN = [vnBilly];
 USE [bodb_NAPLog];ALTER USER [vnDBA] WITH LOGIN = [vnDBA];
 USE [bodb_NAPLog];ALTER USER [vnHelen] WITH LOGIN = [vnHelen];
 USE [bodb_NAPLog];ALTER USER [vnTeam] WITH LOGIN = [vnTeam];
 USE [bodb_ost];ALTER USER [bodbDownlineNet] WITH LOGIN = [bodbDownlineNet];
 USE [bodb_ost];ALTER USER [bodbDownlineNetView] WITH LOGIN = [bodbDownlineNetView];
 USE [bodb_ost];ALTER USER [rdsvntrack] WITH LOGIN = [rdsvntrack];
 USE [bodb_ost];ALTER USER [repl_ap] WITH LOGIN = [repl_ap];
 USE [bodb_ost];ALTER USER [SqlLink] WITH LOGIN = [SqlLink];
 USE [bodb_ost];ALTER USER [vnBilly] WITH LOGIN = [vnBilly];
 USE [bodb_ost];ALTER USER [vnBobby] WITH LOGIN = [vnBobby];
 USE [bodb_ost];ALTER USER [vnteam] WITH LOGIN = [vnteam];
 USE [bodb02];ALTER USER [Dot_GV] WITH LOGIN = [Dot_GV];
 USE [bodb02];ALTER USER [DB02B\RDtim] WITH LOGIN = [DB02B\RDtim];
 USE [bodb02];ALTER USER [dot_infosite] WITH LOGIN = [dot_infosite];
 USE [bodb02];ALTER USER [bodbAdminNet] WITH LOGIN = [bodbAdminNet];
 USE [bodb02];ALTER USER [bodbDownlineNet] WITH LOGIN = [bodbDownlineNet];
 USE [bodb02];ALTER USER [bodbDownlineNetView] WITH LOGIN = [bodbDownlineNetView];
 USE [bodb02];ALTER USER [bodbExtAccNet] WITH LOGIN = [bodbExtAccNet];
 USE [bodb02];ALTER USER [bodbLicenseeNet] WITH LOGIN = [bodbLicenseeNet];
 USE [bodb02];ALTER USER [bodbRMSNet] WITH LOGIN = [bodbRMSNet];
 USE [bodb02];ALTER USER [Dot_Admin] WITH LOGIN = [Dot_Admin];
 USE [bodb02];ALTER USER [Dot_Casino] WITH LOGIN = [Dot_Casino];
 USE [bodb02];ALTER USER [Dot_Member] WITH LOGIN = [Dot_Member];
 USE [bodb02];ALTER USER [ibcrep] WITH LOGIN = [ibcrep];
 USE [bodb02];ALTER USER [RDCharlie] WITH LOGIN = [RDCharlie];
 USE [bodb02];ALTER USER [rdsvntrack] WITH LOGIN = [rdsvntrack];
 USE [bodb02];ALTER USER [SqlLink] WITH LOGIN = [SqlLink];
 USE [bodb02];ALTER USER [vnBobby] WITH LOGIN = [vnBobby];
 USE [bodb02];ALTER USER [vnBrice] WITH LOGIN = [vnBrice];
 USE [bodb02];ALTER USER [vnDBA] WITH LOGIN = [vnDBA];
 USE [bodb02];ALTER USER [vnHelen] WITH LOGIN = [vnHelen];
 USE [bodb02];ALTER USER [vnteam] WITH LOGIN = [vnteam];
 USE [MonDB];ALTER USER [RDJoy] WITH LOGIN = [RDJoy];
 USE [MonDB];ALTER USER [RDBenLin] WITH LOGIN = [RDBenLin];
 USE [MonDB];ALTER USER [DB054\DBA_Scheduler] WITH LOGIN = [DB054\DBA_Scheduler];
 USE [MonDB];ALTER USER [bodbAdminNet] WITH LOGIN = [bodbAdminNet];
 USE [MonDB];ALTER USER [MonDB_User] WITH LOGIN = [MonDB_User];
 USE [MonDB];ALTER USER [RDCharlie] WITH LOGIN = [RDCharlie];
 USE [MonDB];ALTER USER [rdsvntrack] WITH LOGIN = [rdsvntrack];
 USE [MonDB];ALTER USER [SqlLink] WITH LOGIN = [SqlLink];
 USE [MonDB];ALTER USER [vnBilly] WITH LOGIN = [vnBilly];
 USE [MonDB];ALTER USER [vnBobby] WITH LOGIN = [vnBobby];
 USE [MonDB];ALTER USER [vnBrice] WITH LOGIN = [vnBrice];
 USE [MonDB];ALTER USER [vnDBA] WITH LOGIN = [vnDBA];
 USE [MonDB];ALTER USER [vnHelen] WITH LOGIN = [vnHelen];
 USE [MonDB];ALTER USER [vnSPU] WITH LOGIN = [vnSPU];
 USE [MonDB];ALTER USER [vnTeam] WITH LOGIN = [vnTeam];
 USE [ServiceBrokerDB];ALTER USER [rdsvntrack] WITH LOGIN = [rdsvntrack];
 USE [ServiceBrokerDB];ALTER USER [vnDBA] WITH LOGIN = [vnDBA];
 USE [ServiceBrokerDB];ALTER USER [vnHelen] WITH LOGIN = [vnHelen];
 USE [ServiceBrokerDB];ALTER USER [vnteam] WITH LOGIN = [vnteam];
 USE [bodb_CustomerLog_Archive];ALTER USER [bodbAdminNet] WITH LOGIN = [bodbAdminNet];
 USE [bodb_CustomerLog_Archive];ALTER USER [bodbDownlineNet] WITH LOGIN = [bodbDownlineNet];
 USE [bodb_CustomerLog_Archive];ALTER USER [bodbDownlineNetView] WITH LOGIN = [bodbDownlineNetView];
 USE [bodb_CustomerLog_Archive];ALTER USER [bodbExtAccNet] WITH LOGIN = [bodbExtAccNet];
 USE [bodb_CustomerLog_Archive];ALTER USER [bodbLicenseeNet] WITH LOGIN = [bodbLicenseeNet];
 USE [bodb_CustomerLog_Archive];ALTER USER [Dot_Admin] WITH LOGIN = [Dot_Admin];
 USE [bodb_CustomerLog_Archive];ALTER USER [Dot_Casino] WITH LOGIN = [Dot_Casino];
 USE [bodb_CustomerLog_Archive];ALTER USER [Dot_Member] WITH LOGIN = [Dot_Member];
 USE [bodb_CustomerLog_Archive];ALTER USER [rdsvntrack] WITH LOGIN = [rdsvntrack];
 USE [bodb_CustomerLog_Archive];ALTER USER [SqlLink] WITH LOGIN = [SqlLink];
 USE [bodb_CustomerLog_Archive];ALTER USER [vnBilly] WITH LOGIN = [vnBilly];
 USE [bodb_CustomerLog_Archive];ALTER USER [vnteam] WITH LOGIN = [vnteam];