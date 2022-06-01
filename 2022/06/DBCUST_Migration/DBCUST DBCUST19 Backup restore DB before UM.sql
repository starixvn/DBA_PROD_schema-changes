/*
	Task: Before UM 1h: Full backup @DBCUST, copy backup file to DBCUST19 and full restore with NORECOVERY to DBCUST19
	** ATTENTION!! Must follow comments to run correct potion of scripts on correct server/order
*/

-- 1. Run full backup DB on DBCUST before UM

BACKUP DATABASE [AUTHDB] TO DISK = 
	N'G:\BACKUP_LOCAL\Daniel_migrate\DBCUST.AUTHDB_20220609.bak'
WITH NOFORMAT, NOINIT, NAME = 
	N'AUTHDB-Full Database Backup', SKIP, NOREWIND, 
	NOUNLOAD, COMPRESSION, STATS = 10
GO
BACKUP DATABASE [bodb_CustomerLog] TO DISK = 
	N'G:\BACKUP_LOCAL\Daniel_migrate\DBCUST.bodb_CustomerLog_20220609.bak'
WITH NOFORMAT, NOINIT, NAME = 
	N'bodb_CustomerLog-Full Database Backup', SKIP, NOREWIND, 
	NOUNLOAD, COMPRESSION, STATS = 10
GO
BACKUP DATABASE [bodb_Licensee] TO DISK = 
	N'G:\BACKUP_LOCAL\Daniel_migrate\DBCUST.bodb_Licensee_20220609.bak'
WITH NOFORMAT, NOINIT, NAME = 
	N'bodb_Licensee-Full Database Backup', SKIP, NOREWIND, 
	NOUNLOAD, COMPRESSION, STATS = 10
GO
BACKUP DATABASE [CustDB] TO DISK = 
	N'G:\BACKUP_LOCAL\Daniel_migrate\DBCUST.CustDB_20220609.bak'
WITH NOFORMAT, NOINIT, NAME = 
	N'CustDB-Full Database Backup', SKIP, NOREWIND, 
	NOUNLOAD, COMPRESSION, STATS = 10
GO
BACKUP DATABASE [IPDB] TO DISK = 
	N'G:\BACKUP_LOCAL\Daniel_migrate\DBCUST.IPDB_20220609.bak'
WITH NOFORMAT, NOINIT, NAME = 
	N'IPDB-Full Database Backup', SKIP, NOREWIND, 
	NOUNLOAD, COMPRESSION, STATS = 10
GO
BACKUP DATABASE [MONDB] TO DISK = 
	N'G:\BACKUP_LOCAL\Daniel_migrate\DBCUST.MonDB_20220609.bak'
WITH NOFORMAT, NOINIT, NAME = 
	N'MONDB-Full Database Backup', SKIP, NOREWIND, 
	NOUNLOAD, COMPRESSION, STATS = 10
GO
BACKUP DATABASE [N88_UserControl] TO DISK = 
	N'G:\BACKUP_LOCAL\Daniel_migrate\DBCUST.N88_UserControl_20220609.bak'
WITH NOFORMAT, NOINIT, NAME = 
	N'N88_UserControl-Full Database Backup', SKIP, NOREWIND, 
	NOUNLOAD, COMPRESSION, STATS = 10
GO
BACKUP DATABASE [NAP_UserControl] TO DISK = 
	N'G:\BACKUP_LOCAL\Daniel_migrate\DBCUST.NAP_UserControl_20220609.bak'
WITH NOFORMAT, NOINIT, NAME = 
	N'NAP_UserControl-Full Database Backup', SKIP, NOREWIND, 
	NOUNLOAD, COMPRESSION, STATS = 10
GO
BACKUP DATABASE [SiteConfig] TO DISK = 
	N'G:\BACKUP_LOCAL\Daniel_migrate\DBCUST.SiteConfig_20220609.bak'
WITH NOFORMAT, NOINIT, NAME = 
	N'SiteConfig-Full Database Backup', SKIP, NOREWIND, 
	NOUNLOAD, COMPRESSION, STATS = 10
GO


-- 2. Copy the full backup files on step 1 from DBCUST2 G:\BACKUP_LOCAL\Daniel_migrate\ to DBCUSTN1 G:\BACKUP_LOCAL\Daniel_migrate\ (before UM)


-- 3. Run on DBCUST19: Restore full DB with NORECOVERY from the files copied in step 2 (before UM)
USE master

ALTER DATABASE AUTHDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE
RESTORE DATABASE [AUTHDB]
FROM  DISK = N'G:\BACKUP_LOCAL\Daniel_migrate\DBCUST.AUTHDB_20220609.bak' WITH  FILE = 1, NORECOVERY,
MOVE N'AUTHDB' TO N'H:\User_DB\AUTHDB\AUTHDB.mdf',
MOVE N'AUTHDB_log' TO N'H:\User_DB\AUTHDB\AUTHDB_log.ldf',
MOVE N'ClientAuth' TO N'H:\User_DB\AUTHDB\ClientAuth.ndf',
MOVE N'ClientAuth_INDEX' TO N'H:\User_DB\AUTHDB\ClientAuth_INDEX.ndf',
MOVE N'DATA' TO N'H:\User_DB\AUTHDB\DATA.ndf',
MOVE N'DATA_INDEX' TO N'H:\User_DB\AUTHDB\DATA_INDEX.ndf',
MOVE N'Nonce' TO N'H:\User_DB\AUTHDB\Nonce.ndf',
MOVE N'Nonce_INDEX' TO N'H:\User_DB\AUTHDB\Nonce_INDEX.ndf',
NOUNLOAD, REPLACE,  STATS = 10

--------------------------------------------------------------------------------------------------------
ALTER DATABASE bodb_CustomerLog SET SINGLE_USER WITH ROLLBACK IMMEDIATE
RESTORE DATABASE [bodb_CustomerLog]
FROM  DISK = N'G:\BACKUP_LOCAL\Daniel_migrate\DBCUST.bodb_CustomerLog_20220609.bak' WITH  FILE = 1, NORECOVERY,
MOVE N'bodb_CustomerLog' TO N'H:\USER_DB\bodb_CustomerLog\bodb_CustomerLog.mdf',
MOVE N'bodb_CustomerLog_log' TO N'H:\USER_DB\bodb_CustomerLog\bodb_CustomerLog_log.ldf',
MOVE N'bodb_DATA-01' TO N'H:\USER_DB\bodb_CustomerLog\bodb_DATA-01.ndf',
MOVE N'bodb_Table-01' TO N'H:\USER_DB\bodb_CustomerLog\bodb_Table-01.ndf',
MOVE N'bodb_INDEX-01' TO N'H:\USER_DB\bodb_CustomerLog\bodb_INDEX-01.ndf',
MOVE N'serviceBroker_01' TO N'H:\USER_DB\bodb_CustomerLog\serviceBroker_01.ndf',
MOVE N'eaLogLogin-01' TO N'H:\USER_DB\bodb_CustomerLog\eaLogLogin-01.ndf',
MOVE N'eaLogUserCtrl-01' TO N'H:\USER_DB\bodb_CustomerLog\eaLogUserCtrl-01.ndf',
MOVE N'OWA_DATA' TO N'H:\USER_DB\bodb_CustomerLog\OWN_DATA.ndf',
NOUNLOAD, REPLACE,  STATS = 10

--------------------------------------------------------------------------------------------------------
ALTER DATABASE bodb_Licensee SET SINGLE_USER WITH ROLLBACK IMMEDIATE
RESTORE DATABASE [bodb_Licensee]
FROM  DISK = N'G:\BACKUP_LOCAL\Daniel_migrate\DBCUST.bodb_Licensee_20220609.bak' WITH  FILE = 1, NORECOVERY,
MOVE N'bodb_Licensee' TO N'H:\USER_DB\bodb_Licensee\bodb_Licensee.mdf',
MOVE N'bodb_Licensee_log' TO N'H:\USER_DB\bodb_Licensee\bodb_Licensee_log.ldf',
MOVE N'BA_Data_1' TO N'H:\USER_DB\bodb_Licensee\BA_Data_01.ndf',
MOVE N'BA_Index_1' TO N'H:\USER_DB\bodb_Licensee\BA_Index_01.ndf',
MOVE N'data01' TO N'H:\USER_DB\bodb_Licensee\data01.ndf',
MOVE N'data02' TO N'H:\USER_DB\bodb_licensee\data02.ndf',
MOVE N'licensee_index_2' TO N'H:\USER_DB\bodb_licensee\licensee_index_02.ndf',
MOVE N'licensee_table_02' TO N'H:\USER_DB\bodb_Licensee\licensee_table_02.ndf',
MOVE N'on_user_index_02' TO N'H:\USER_DB\bodb_Licensee\on_user_index_02.ndf',
MOVE N'on_user_table_02' TO N'H:\USER_DB\bodb_Licensee\on_user_table_02.ndf',
MOVE N'user_table_02' TO N'H:\USER_DB\bodb_Licensee\user_table_02.ndf',
MOVE N'OWA_DATA' TO N'H:\USER_DB\bodb_licensee\OWN_DATA.ndf',
MOVE N'OWA_INDEX' TO N'H:\USER_DB\bodb_licensee\OWA_INDEX.ndf',
MOVE N'LicenseeCustComm_History_table_01' TO N'H:\USER_DB\bodb_Licensee\LicenseeCustComm_History_table_01.ndf',
NOUNLOAD, REPLACE,  STATS = 10

--------------------------------------------------------------------------------------------------------
ALTER DATABASE CustDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE
RESTORE DATABASE [CustDB]
FROM  DISK = N'G:\BACKUP_LOCAL\Daniel_migrate\DBCUST.CustDB_20220609.bak' WITH  FILE = 1, NORECOVERY,
MOVE N'bodb02_Primary' TO N'H:\USER_DB\CustDB\bodb02_Primary.MDF',
MOVE N'bodb02_Log' TO N'H:\USER_DB\CustDB\bodb02_Log.LDF',
MOVE N'CustGameType_table_01' TO N'H:\USER_DB\CustDB\CustGameType_table_01.ndf',
MOVE N'CustGameType_table_02' TO N'H:\USER_DB\CustDB\CustGameType_table_02.ndf',
MOVE N'DATA(1)' TO N'H:\USER_DB\CustDB\DATA(1).NDF',
MOVE N'DATA(2)' TO N'H:\USER_DB\CustDB\DATA(2).NDF',
MOVE N'DATA(3)' TO N'H:\USER_DB\CustDB\DATA(3).NDF',
MOVE N'P2PSetting' TO N'H:\USER_DB\CustDB\P2PSetting.ndf',
MOVE N'CustGameType_table_03' TO N'H:\USER_DB\CustDB\CustGameType_table_03.ndf',
MOVE N'Dep_CustSettingGame_Table_01' TO N'H:\USER_DB\CustDB\Dep_CustSettingGame_Table_01.ndf',
MOVE N'CustSetting(1)' TO N'H:\USER_DB\CustDB\CustSetting(1).NDF',
MOVE N'CustSetting3rd(1)' TO N'H:\USER_DB\CustDB\CustSetting3rd(1).NDF',
MOVE N'table_customer(1)' TO N'H:\USER_DB\CustDB\table_customer(1).NDF',
MOVE N'virtualrate_table_01' TO N'H:\USER_DB\CustDB\virtualrate_table_01.ndf',
MOVE N'CustOverride3rd' TO N'H:\USER_DB\CustDB\CustOverride3rd.NDF',
MOVE N'CustSetting3rd(2)' TO N'H:\USER_DB\CustDB\CustSetting3rd(2).NDF',
MOVE N'CustSetting3rd(3)' TO N'H:\USER_DB\CustDB\CustSetting3rd(3).NDF',
MOVE N'CustSetting3rd(4)' TO N'H:\USER_DB\CustDB\CustSetting3rd(4).NDF',
MOVE N'CustSetting(2)' TO N'H:\USER_DB\CustDB\CustSetting(2).NDF',
MOVE N'table_customer(2)' TO N'H:\USER_DB\CustDB\table_customer(2).NDF',
MOVE N'table_customer(3)' TO N'H:\USER_DB\CustDB\table_customer(3).NDF',
MOVE N'table_customer(4)' TO N'H:\USER_DB\CustDB\table_customer(4).NDF',
MOVE N'CustSettingGame_table' TO N'H:\USER_DB\CustDB\CustSettingGame_table.ndf',
MOVE N'Dep_Custsetting_table_01' TO N'H:\USER_DB\CustDB\Dep_Custsetting_table_01.ndf',
MOVE N'Dep_CustSettingGame_table' TO N'H:\USER_DB\CustDB\Dep_CustSettingGame_table.ndf',
MOVE N'CustPTSetting3rd_Member_table_01' TO N'H:\USER_DB\CustDB\CustPTSetting3rd_Member_table_01.NDF',
MOVE N'CustPTSetting3rd_Agent_table_01' TO N'H:\USER_DB\CustDB\CustPTSetting3rd_Agent_table_01.NDF',
MOVE N'CustPTGroupSetting3rd_Member_table_01' TO N'H:\USER_DB\CustDB\CustPTGroupSetting3rd_Member_table_01.NDF',
MOVE N'CustSettingMode3rd_table_01' TO N'H:\USER_DB\CustDB\CustSettingMode3rd_table_01.NDF',
MOVE N'CustBetSetting3rd_Member_table_01' TO N'H:\USER_DB\CustDB\CustBetSetting3rd_Member_table_01.NDF',
MOVE N'CustBetSetting3rd_Agent_table_01' TO N'H:\USER_DB\CustDB\CustBetSetting3rd_Agent_table_01.NDF',
MOVE N'CustDiscount3rd_Member_table_01' TO N'H:\USER_DB\CustDB\CustDiscount3rd_Member_table_01.NDF',
MOVE N'CustDiscount3rd_Agent_table_01' TO N'H:\USER_DB\CustDB\CustDiscount3rd_Agent_table_01.NDF',
MOVE N'Intg_Data' TO N'H:\USER_DB\CustDB\Intg_Data.ndf',
MOVE N'Intg_Index' TO N'H:\USER_DB\CustDB\Intg_Index.ndf',
MOVE N'Intg_Member_Data' TO N'H:\USER_DB\CustDB\Intg_Member_Data.ndf',
MOVE N'Intg_Member_Index' TO N'H:\USER_DB\CustDB\Intg_Member_Index.ndf',
MOVE N'CustWinLossLimit_table_01' TO N'H:\USER_DB\CustDB\CustWinLossLimit_table_01.NDF',
MOVE N'Dep_Custsetting_table_02' TO N'H:\USER_DB\CustDB\Dep_Custsetting_table_02.ndf',
MOVE N'Dep_Custsetting_table_03' TO N'H:\USER_DB\CustDB\Dep_Custsetting_table_03.ndf',
MOVE N'Event' TO N'H:\USER_DB\CustDB\Event.NDF',
MOVE N'Event_index' TO N'H:\USER_DB\CustDB\Event_index.NDF',
MOVE N'Dep_Custsetting3rd_table_01' TO N'H:\USER_DB\CustDB\Dep_Custsetting3rd_table_01.ndf',
MOVE N'Dep_Custsetting3rd_table_02' TO N'H:\USER_DB\CustDB\Dep_Custsetting3rd_table_02.ndf',
MOVE N'Dep_Custsetting3rd_table_03' TO N'H:\USER_DB\CustDB\Dep_Custsetting3rd_table_03.ndf',
MOVE N'CustSetting(3)' TO N'H:\USER_DB\CustDB\CustSetting(3).NDF',
MOVE N'CustSetting(4)' TO N'H:\USER_DB\CustDB\CustSetting(4).NDF',
MOVE N'CustWinLossLimit_table_02' TO N'H:\USER_DB\CustDB\CustWinLossLimit_table_02.NDF',
MOVE N'CustStakeLevel_table_01' TO N'H:\USER_DB\CustDB\CustStakeLevel_table_01.NDF',
MOVE N'CustStakeLevel_table_02' TO N'H:\USER_DB\CustDB\CustStakeLevel_table_02.NDF',
MOVE N'CustOverride' TO N'H:\USER_DB\CustDB\CustOverride.NDF',
MOVE N'Dep_CustPTSetting_table_01' TO N'H:\USER_DB\CUSTDB\Dep_CustPTSetting_table_01.NDF',
MOVE N'Dep_CustStakeLevel_table_01' TO N'H:\USER_DB\CustDB\Dep_CustStakeLevel_table_01.NDF',
MOVE N'WinlimitSetting_Tables_01' TO N'H:\USER_DB\CustDB\WinlimitSetting_Tables_01.NDF',
MOVE N'custOTP' TO N'H:\USER_DB\CustDB\custOTP.NDF',
MOVE N'PFCust_Data' TO N'H:\User_DB\CustDB\PFCust_Data.ndf',
MOVE N'PFCust_Index' TO N'H:\User_DB\CustDB\PFCust_Index.ndf',
MOVE N'Dep_CustDiscount_Member_Table_01' TO N'H:\USER_DB\CustDB\Dep_CustDiscount_Member_Table_01.ndf',
MOVE N'Dep_CustDiscountSetting_Agent_table_01' TO N'H:\USER_DB\CustDB\Dep_CustDiscountSetting_Agent_table_01.NDF',
MOVE N'LicBonus_Table' TO N'H:\USER_DB\CustDB\LicBonus_Table.ndf',
MOVE N'LicBonus_Index' TO N'H:\USER_DB\CustDB\LicBonus_Index.ndf',
MOVE N'LicBonusCustomer_Table' TO N'H:\USER_DB\CustDB\LicBonusCustomer_Table.ndf',
MOVE N'LicBonusCustomer_Index' TO N'H:\USER_DB\CustDB\LicBonusCustomer_Index.ndf',
MOVE N'CS_CustPTSetting_Agent_table_01' TO N'H:\USER_DB\CustDB\CS_CustPTSetting_Agent_table_01.ndf',
MOVE N'CS_CustPTSetting_Member_table_01' TO N'H:\USER_DB\CustDB\CS_CustPTSetting_Member_table_01.ndf',
MOVE N'CS_CustSettingMode_table_01' TO N'H:\USER_DB\CustDB\CS_CustSettingMode_table_01.ndf',
MOVE N'CS_CustBetSetting_Agent_table_01' TO N'H:\USER_DB\CustDB\CS_CustBetSetting_Agent_table_01.ndf',
MOVE N'CS_CustBetSetting_Member_table_01' TO N'H:\USER_DB\CustDB\CS_CustBetSetting_Member_table_01.ndf',
MOVE N'CS_CustDiscount_Agent_table_01' TO N'H:\USER_DB\CustDB\CS_CustDiscount_Agent_table_01.ndf',
MOVE N'CS_CustDiscount_Member_table_01' TO N'H:\USER_DB\CustDB\CS_CustDiscount_Member_table_01.ndf',
MOVE N'CS_CustGroupDiscount_Member_table_01' TO N'H:\USER_DB\CustDB\CS_CustGroupDiscount_Member_table_01.ndf',
MOVE N'BetRestriction_01' TO N'H:\USER_DB\CustDB\BetRestriction_01.ndf',
MOVE N'Loyalty' TO N'H:\USER_DB\CustDB\Loyalty.ndf',
NOUNLOAD, REPLACE,  STATS = 10

--------------------------------------------------------------------------------------------------------
ALTER DATABASE IPDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE
RESTORE DATABASE [IPDB]
FROM  DISK = N'G:\BACKUP_LOCAL\Daniel_migrate\DBCUST.IPDB_20220609.bak' WITH  FILE = 1, NORECOVERY,
MOVE N'ipdb_Data' TO N'H:\USER_DB\IPDB\IPDB_Primary.MDF',
MOVE N'ipdb_Log' TO N'H:\USER_DB\IPDB\IPDB_Log.LDF',
NOUNLOAD, REPLACE,  STATS = 10

--------------------------------------------------------------------------------------------------------
ALTER DATABASE MonDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE
RESTORE DATABASE [MonDB]
FROM  DISK = N'G:\BACKUP_LOCAL\Daniel_migrate\DBCUST.MonDB_20220609.bak' WITH  FILE = 1, NORECOVERY,
MOVE N'MonDB' TO N'H:\USER_DB\MonDB\MonDB.mdf',
MOVE N'MonDB_log' TO N'H:\USER_DB\MonDB\MonDB_log.ldf',
NOUNLOAD, REPLACE,  STATS = 10

--------------------------------------------------------------------------------------------------------
ALTER DATABASE N88_UserControl SET SINGLE_USER WITH ROLLBACK IMMEDIATE
RESTORE DATABASE [N88_UserControl]
FROM  DISK = N'G:\BACKUP_LOCAL\Daniel_migrate\DBCUST.N88_UserControl_20220609.bak' WITH  FILE = 1, NORECOVERY,
MOVE N'N88_UserControl_Primary' TO N'H:\USER_DB\N88_UserControl\Primary.MDF',
MOVE N'N88_UserControl_log' TO N'H:\USER_DB\N88_UserControl\NAP_UserControl_log.LDF',
MOVE N'N88_UserControl_table_01' TO N'H:\USER_DB\N88_UserControl\N88_UserControl_table_01.NDF',
NOUNLOAD, REPLACE,  STATS = 10

--------------------------------------------------------------------------------------------------------
ALTER DATABASE NAP_UserControl SET SINGLE_USER WITH ROLLBACK IMMEDIATE
RESTORE DATABASE [NAP_UserControl]
FROM  DISK = N'G:\BACKUP_LOCAL\Daniel_migrate\DBCUST.NAP_UserControl_20220609.bak' WITH  FILE = 1, NORECOVERY,
MOVE N'NAP_UserControl_Primary' TO N'H:\USER_DB\NAP_UserControl\Primary.MDF',
MOVE N'NAP_UserControl_log' TO N'H:\USER_DB\NAP_UserControl\NAP_UserControl_log.LDF',
MOVE N'NAP_UserControl_table_01' TO N'H:\USER_DB\NAP_UserControl\NAP_UserControl_table_01.NDF',
NOUNLOAD, REPLACE,  STATS = 10

--------------------------------------------------------------------------------------------------------
ALTER DATABASE SiteConfig SET SINGLE_USER WITH ROLLBACK IMMEDIATE
RESTORE DATABASE [SiteConfig]
FROM  DISK = N'G:\BACKUP_LOCAL\Daniel_migrate\DBCUST.SiteConfig_20220609.bak' WITH  FILE = 1, NORECOVERY,
MOVE N'Primary' TO N'H:\USER_DB\SiteConfig\Primary.MDF',
MOVE N'SiteConfig_log' TO N'H:\USER_DB\SiteConfig\SiteConfig_log.ldf',
MOVE N'Index' TO N'H:\USER_DB\SiteConfig\Index.NDF',
MOVE N'Data' TO N'H:\USER_DB\SiteConfig\Data.NDF',
MOVE N'LIC_Data' TO N'H:\USER_DB\Siteconfig\LIC_Data.NDF',
MOVE N'LIC_index' TO N'H:\USER_DB\Siteconfig\LIC_index.NDF',
MOVE N'DomainLists_data' TO N'H:\USER_DB\SiteConfig\DomainLists_data.ndf',
MOVE N'DomainLists_index' TO N'H:\USER_DB\SiteConfig\DomainLists_index.ndf',
NOUNLOAD, REPLACE,  STATS = 10