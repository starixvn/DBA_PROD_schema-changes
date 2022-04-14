/*
	Task: Before UM 1h: Full backup @SITDBCUST, copy backup file to SITDBCUSTN and full restore with NORECOVERY to SITDBCUSTN
	** ATTENTION!! Must follow comments to run correct potion of scripts on correct server/order
*/

-- 1. Run full backup DB on SITDBCUST before UM

BACKUP DATABASE [AUTHDB] TO DISK = 
	N'G:\BACKUP_LOCAL\Daniel_migrate\SITDBCUST.AUTHDB_20220419.bak'
WITH NOFORMAT, NOINIT, NAME = 
	N'AUTHDB-Full Database Backup', SKIP, NOREWIND, 
	NOUNLOAD, COMPRESSION, STATS = 10
GO

BACKUP DATABASE [bodb_CustomerLog] TO DISK = 
	N'G:\BACKUP_LOCAL\Daniel_migrate\SITDBCUST.bodb_CustomerLog_20220419.bak'
WITH NOFORMAT, NOINIT, NAME = 
	N'bodb_CustomerLog-Full Database Backup', SKIP, NOREWIND, 
	NOUNLOAD, COMPRESSION, STATS = 10
GO

BACKUP DATABASE [bodb_Licensee] TO DISK = 
	N'G:\BACKUP_LOCAL\Daniel_migrate\SITDBCUST.bodb_Licensee_20220419.bak'
WITH NOFORMAT, NOINIT, NAME = 
	N'bodb_Licensee-Full Database Backup', SKIP, NOREWIND, 
	NOUNLOAD, COMPRESSION, STATS = 10
GO

BACKUP DATABASE [CustDB] TO DISK = 
	N'G:\BACKUP_LOCAL\Daniel_migrate\SITDBCUST.CustDB_20220419.bak'
WITH NOFORMAT, NOINIT, NAME = 
	N'CustDB-Full Database Backup', SKIP, NOREWIND, 
	NOUNLOAD, COMPRESSION, STATS = 10
GO

BACKUP DATABASE [IPDB] TO DISK = 
	N'G:\BACKUP_LOCAL\Daniel_migrate\SITDBCUST.IPDB_20220419.bak'
WITH NOFORMAT, NOINIT, NAME = 
	N'IPDB-Full Database Backup', SKIP, NOREWIND, 
	NOUNLOAD, COMPRESSION, STATS = 10
GO

BACKUP DATABASE [MONDB] TO DISK = 
	N'G:\BACKUP_LOCAL\Daniel_migrate\SITDBCUST.MonDB_20220419.bak'
WITH NOFORMAT, NOINIT, NAME = 
	N'MONDB-Full Database Backup', SKIP, NOREWIND, 
	NOUNLOAD, COMPRESSION, STATS = 10
GO

BACKUP DATABASE [NAP_UserControl] TO DISK = 
	N'G:\BACKUP_LOCAL\Daniel_migrate\SITDBCUST.NAP_UserControl_20220419.bak'
WITH NOFORMAT, NOINIT, NAME = 
	N'NAP_UserControl-Full Database Backup', SKIP, NOREWIND, 
	NOUNLOAD, COMPRESSION, STATS = 10
GO

BACKUP DATABASE [ReleaseToolDB] TO DISK = 
	N'G:\BACKUP_LOCAL\Daniel_migrate\SITDBCUST.ReleaseToolDB_20220419.bak'
WITH NOFORMAT, NOINIT, NAME = 
	N'ReleaseToolDB-Full Database Backup', SKIP, NOREWIND, 
	NOUNLOAD, COMPRESSION, STATS = 10
GO

BACKUP DATABASE [SiteConfig] TO DISK = 
	N'G:\BACKUP_LOCAL\Daniel_migrate\SITDBCUST.SiteConfig_20220419.bak'
WITH NOFORMAT, NOINIT, NAME = 
	N'SiteConfig-Full Database Backup', SKIP, NOREWIND, 
	NOUNLOAD, COMPRESSION, STATS = 10
GO


-- 2. Copy the full backup files on step 1 to SITDBCUSTN (before UM)


-- 3. Run on SITDBCUSTN: Restore full DB with NORECOVERY from the files copied in step 2 (before UM)
USE master

ALTER DATABASE AUTHDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE

RESTORE DATABASE [AUTHDB]
FROM  DISK = N'G:\BACKUP_LOCAL\Daniel_migrate\SITDBCUST.AUTHDB_20220419.bak' WITH  FILE = 1, NORECOVERY,
MOVE N'AUTHDB' TO N'H:\USER_DB\AuthDB\AUTHDB.mdf',
MOVE N'AUTHDB_log' TO N'H:\USER_DB\AuthDB\AUTHDB_log.ldf',
MOVE N'ClientAuth' TO N'H:\USER_DB\AuthDB\ClientAuth.ndf',
MOVE N'ClientAuth_INDEX' TO N'H:\USER_DB\AuthDB\ClientAuth_INDEX.ndf',
MOVE N'DATA' TO N'H:\USER_DB\AuthDB\DATA.ndf',
MOVE N'DATA_INDEX' TO N'H:\USER_DB\AuthDB\DATA_INDEX.ndf',
MOVE N'Nonce' TO N'H:\USER_DB\AuthDB\Nonce.ndf',
MOVE N'Nonce_INDEX' TO N'H:\USER_DB\AuthDB\Nonce_INDEX.ndf',
NOUNLOAD,  STATS = 10

--------------------------------------------------------------------------------------------------------
ALTER DATABASE bodb_CustomerLog SET SINGLE_USER WITH ROLLBACK IMMEDIATE

RESTORE DATABASE [bodb_CustomerLog]
FROM  DISK = N'G:\BACKUP_LOCAL\Daniel_migrate\SITDBCUST.bodb_CustomerLog_20220419.bak' WITH  FILE = 1, NORECOVERY,
MOVE N'bodb_CustomerLog' TO N'H:\USER_DB\bodb_CustomerLog\bodb_CustomerLog.mdf',
MOVE N'bodb_CustomerLog_log' TO N'H:\USER_DB\bodb_CustomerLog\bodb_CustomerLog_4.ldf',
MOVE N'bodb_DATA-01' TO N'H:\USER_DB\bodb_CustomerLog\bodb_CustomerLog_1.ndf',
MOVE N'bodb_Table-01' TO N'H:\USER_DB\bodb_CustomerLog\bodb_CustomerLog_2.ndf',
MOVE N'bodb_INDEX-01' TO N'H:\USER_DB\bodb_CustomerLog\bodb_CustomerLog_3.ndf',
MOVE N'serviceBroker_01' TO N'H:\USER_DB\bodb_CustomerLog\serviceBroker_01.ndf',
NOUNLOAD,  STATS = 10

--------------------------------------------------------------------------------------------------------
ALTER DATABASE bodb_Licensee SET SINGLE_USER WITH ROLLBACK IMMEDIATE

RESTORE DATABASE [bodb_Licensee]
FROM  DISK = N'G:\BACKUP_LOCAL\Daniel_migrate\SITDBCUST.bodb_Licensee_20220419.bak' WITH  FILE = 1, NORECOVERY,
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
MOVE N'licensee_table' TO N'H:\USER_DB\bodb_licensee\licensee_table.ndf',
MOVE N'LicenseeCustComm_History_table_01' TO N'H:\USER_DB\bodb_Licensee\LicenseeCustComm_History_table_01.ndf',
NOUNLOAD,  STATS = 10

--------------------------------------------------------------------------------------------------------
ALTER DATABASE CustDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE

RESTORE DATABASE [CustDB]
FROM  DISK = N'G:\BACKUP_LOCAL\Daniel_migrate\SITDBCUST.CustDB_20220419.bak' WITH  FILE = 1, NORECOVERY,
MOVE N'bodb02_Primary' TO N'H:\USER_DB\CustDB\CustDB.MDF',
MOVE N'bodb02_Log' TO N'H:\USER_DB\CustDB\CustDB_42.LDF',
MOVE N'CustGameType_table_01' TO N'H:\USER_DB\CustDB\CustDB_4.ndf',
MOVE N'CustGameType_table_02' TO N'H:\USER_DB\CustDB\CustDB_5.ndf',
MOVE N'DATA(1)' TO N'H:\USER_DB\CustDB\CustDB_1.NDF',
MOVE N'DATA(2)' TO N'H:\USER_DB\CustDB\CustDB_2.NDF',
MOVE N'DATA(3)' TO N'H:\USER_DB\CustDB\CustDB_3.NDF',
MOVE N'P2PSetting' TO N'H:\USER_DB\CustDB\CustDB_7.ndf',
MOVE N'CustGameType_table_03' TO N'H:\USER_DB\CustDB\CustDB_6.ndf',
MOVE N'Dep_CustSettingGame_Table_01' TO N'H:\USER_DB\CustDB\CustDB_8.ndf',
MOVE N'CustSetting(1)' TO N'H:\USER_DB\CustDB\CustDB_36.NDF',
MOVE N'CustSetting3rd(1)' TO N'H:\USER_DB\CustDB\CustDB_11.NDF',
MOVE N'table_customer(1)' TO N'H:\USER_DB\CustDB\CustDB_15.NDF',
MOVE N'virtualrate_table_01' TO N'H:\USER_DB\CustDB\CustDB_10.ndf',
MOVE N'CustOverride3rd' TO N'H:\USER_DB\CustDB\CustDB_40.NDF',
MOVE N'CustSetting3rd(2)' TO N'H:\USER_DB\CustDB\CustDB_12.NDF',
MOVE N'CustSetting3rd(3)' TO N'H:\USER_DB\CustDB\CustDB_13.NDF',
MOVE N'CustSetting3rd(4)' TO N'H:\USER_DB\CustDB\CustDB_14.NDF',
MOVE N'CustSetting(2)' TO N'H:\USER_DB\CustDB\CustDB_37.NDF',
MOVE N'table_customer(2)' TO N'H:\USER_DB\CustDB\CustDB_16.NDF',
MOVE N'table_customer(3)' TO N'H:\USER_DB\CustDB\CustDB_17.NDF',
MOVE N'table_customer(4)' TO N'H:\USER_DB\CustDB\CustDB_18.NDF',
MOVE N'CustSettingGame_table' TO N'H:\USER_DB\CustDB\CustDB_27.ndf',
MOVE N'Dep_Custsetting_table_01' TO N'H:\USER_DB\CustDB\CustDB_28.ndf',
MOVE N'Dep_CustSettingGame_table' TO N'H:\USER_DB\CustDB\CustDB_9.ndf',
MOVE N'CustPTSetting3rd_Member_table_01' TO N'H:\USER_DB\CustDB\CustDB_19.NDF',
MOVE N'CustPTSetting3rd_Agent_table_01' TO N'H:\USER_DB\CustDB\CustDB_20.NDF',
MOVE N'CustPTGroupSetting3rd_Member_table_01' TO N'H:\USER_DB\CustDB\CustDB_21.NDF',
MOVE N'CustSettingMode3rd_table_01' TO N'H:\USER_DB\CustDB\CustDB_22.NDF',
MOVE N'CustBetSetting3rd_Member_table_01' TO N'H:\USER_DB\CustDB\CustDB_23.NDF',
MOVE N'CustBetSetting3rd_Agent_table_01' TO N'H:\USER_DB\CustDB\CustDB_24.NDF',
MOVE N'CustDiscount3rd_Member_table_01' TO N'H:\USER_DB\CustDB\CustDB_25.NDF',
MOVE N'CustDiscount3rd_Agent_table_01' TO N'H:\USER_DB\CustDB\CustDB_26.NDF',
MOVE N'Intg_data' TO N'H:\USER_DB\CustDB\Intg_data.ndf',
MOVE N'Intg_index' TO N'H:\USER_DB\CustDB\Intg_index.ndf',
MOVE N'Intg_member_data' TO N'H:\USER_DB\CustDB\Intg_member_data.ndf',
MOVE N'Intg_member_index' TO N'H:\USER_DB\CustDB\Intg_member_index.ndf',
MOVE N'CustWinLossLimit_table' TO N'H:\USER_DB\CustDB\CustWinLossLimit_table.ndf',
MOVE N'Dep_Custsetting_table_02' TO N'H:\USER_DB\CustDB\CustDB_29.ndf',
MOVE N'Dep_Custsetting_table_03' TO N'H:\USER_DB\CustDB\CustDB_30.ndf',
MOVE N'Event' TO N'H:\USER_DB\CustDB\CustDB_31.NDF',
MOVE N'Event_index' TO N'H:\USER_DB\CustDB\CustDB_32.NDF',
MOVE N'Dep_Custsetting3rd_table_01' TO N'H:\USER_DB\CustDB\CustDB_33.ndf',
MOVE N'Dep_Custsetting3rd_table_02' TO N'H:\USER_DB\CustDB\CustDB_34.ndf',
MOVE N'Dep_Custsetting3rd_table_03' TO N'H:\USER_DB\CustDB\CustDB_35.ndf',
MOVE N'CustSetting(3)' TO N'H:\USER_DB\CustDB\CustDB_38.NDF',
MOVE N'CustSetting(4)' TO N'H:\USER_DB\CustDB\CustDB_39.NDF',
MOVE N'CustStakeLevel_table' TO N'H:\USER_DB\CustStakeLevel_table.ndf',
MOVE N'Dep_CustPTSetting_table_01' TO N'H:\USER_DB\CustDB\Dep_CustPTSetting_table_01.NDF',
MOVE N'Dep_CustStakeLevel_table_01' TO N'H:\USER_DB\CustDB\Dep_CustStakeLevel_table_01.NDF',
MOVE N'CustOverride' TO N'H:\USER_DB\CustDB\CustDB_41.NDF',
MOVE N'WinlimitSetting_Tables_01' TO N'H:\USER_DB\CustDB\WinlimitSetting_Tables_01.NDF',
MOVE N'CustPTGroupSetting3rd_Member_table_02' TO N'H:\USER_DB\CustPTGroupSetting3rd_Member_table_01.ndf',
MOVE N'filegroup_on_G_01' TO N'H:\USER_DB\CustDB\filegroup_on_G_01.ndf',
MOVE N'filegroup_on_G_log_01' TO N'H:\USER_DB\CustDB\filegroup_on_G_log_01.ldf',
MOVE N'PFCust_Data' TO N'H:\User_DB\CustDB\PFCust_Data.ndf',
MOVE N'PFCust_Index' TO N'H:\User_DB\CustDB\PFCust_Index.ndf',
MOVE N'TOControl_Setting_01' TO N'H:\USER_DB\CustDB\TOControl_Setting_01.ndf',
MOVE N'TOControl_Setting_02' TO N'H:\USER_DB\CustDB\TOControl_Setting_02.ndf',
MOVE N'TOControl_SettingIndex_01' TO N'H:\USER_DB\CustDB\TOControl_SettingIndex_01.ndf',
MOVE N'Dep_CustBetSetting_Member_table_01' TO N'H:\USER_DB\CustDB\Dep_CustBetSetting_Member_table_01.NDF',
MOVE N'Dep_CustBetSetting_Agent_table_01' TO N'H:\USER_DB\CustDB\Dep_CustBetSetting_Agent_table_01.NDF',
MOVE N'Dep_ProductBetSetting_table_01' TO N'H:\USER_DB\CustDB\Dep_ProductBetSetting_table_01.NDF',
MOVE N'LicBonus_index_01' TO N'H:\USER_DB\CustDB\LicBonus_index_01.ndf',
MOVE N'LicBonus_table_01' TO N'H:\USER_DB\CustDB\LicBonus_table_01.ndf',
MOVE N'LicBonusCustomer_index_01' TO N'H:\USER_DB\CustDB\LicBonusCustomer_index_01.ndf',
MOVE N'LicBonusCustomer_table_01' TO N'H:\USER_DB\CustDB\LicBonusCustomer_table_01.ndf',
MOVE N'Dep_CustDiscount_Member_Table_01' TO N'H:\USER_DB\CustDB\Dep_CustDiscount_Member_Table_01.ndf',
MOVE N'Dep_CustDiscountSetting_Agent_table_01' TO N'H:\USER_DB\CustDB\Dep_CustDiscountSetting_Agent_table_01.NDF',
MOVE N'deprecated_01' TO N'H:\USER_DB\CustDB\deprecated\deprecated_01.ndf',
MOVE N'custOTP_Data' TO N'H:\USER_DB\CustDB\custOTP_Data.ndf',
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
NOUNLOAD,  STATS = 10


--------------------------------------------------------------------------------------------------------
ALTER DATABASE IPDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE

RESTORE DATABASE [IPDB]
FROM  DISK = N'G:\BACKUP_LOCAL\Daniel_migrate\SITDBCUST.IPDB_20220419.bak' WITH  FILE = 1, NORECOVERY,
MOVE N'ipdb_Data' TO N'H:\USER_DB\IPDB\IPDB.MDF',
MOVE N'ipdb_Log' TO N'H:\USER_DB\IPDB\IPDB_1.LDF',
NOUNLOAD,  STATS = 10

--------------------------------------------------------------------------------------------------------
ALTER DATABASE MonDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE

RESTORE DATABASE [MonDB]
FROM  DISK = N'G:\BACKUP_LOCAL\Daniel_migrate\SITDBCUST.MonDB_20220419.bak' WITH  FILE = 1, NORECOVERY,
MOVE N'MonDB' TO N'G:\USER_DB\MonDB\MonDB.mdf',
MOVE N'MonDB_log' TO N'G:\USER_DB\MonDB\MonDB_log.ldf',
NOUNLOAD,  STATS = 10


--------------------------------------------------------------------------------------------------------
ALTER DATABASE NAP_UserControl SET SINGLE_USER WITH ROLLBACK IMMEDIATE

RESTORE DATABASE [NAP_UserControl]
FROM  DISK = N'G:\BACKUP_LOCAL\Daniel_migrate\SITDBCUST.NAP_UserControl_20220419.bak' WITH  FILE = 1, NORECOVERY,
MOVE N'NAP_UserControl_Primary' TO N'H:\USER_DB\NAP_UserControl\NAP_UserControl_Primary.MDF',
MOVE N'NAP_UserControl_Log' TO N'H:\USER_DB\NAP_UserControl\NAP_UserControl_Log.LDF',
MOVE N'NAP_UserControl_table_01' TO N'H:\USER_DB\NAP_UserControl\NAP_UserControl_table_01.NDF',
NOUNLOAD,  STATS = 10


--------------------------------------------------------------------------------------------------------
ALTER DATABASE ReleaseToolDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE

RESTORE DATABASE [ReleaseToolDB]
FROM  DISK = N'G:\BACKUP_LOCAL\Daniel_migrate\SITDBCUST.ReleaseToolDB_20220419.bak' WITH  FILE = 1, NORECOVERY,
MOVE N'ReleaseToolDB_mst' TO N'H:\USER_DB\ReleaseToolDB\ReleaseToolDB_mst.mdf',
MOVE N'ReleaseToolDB_log' TO N'H:\USER_DB\ReleaseToolDB\ReleaseToolDB_log.ldf',
NOUNLOAD,  STATS = 10


--------------------------------------------------------------------------------------------------------
ALTER DATABASE SiteConfig SET SINGLE_USER WITH ROLLBACK IMMEDIATE

RESTORE DATABASE [SiteConfig]
FROM  DISK = N'G:\BACKUP_LOCAL\Daniel_migrate\SITDBCUST.SiteConfig_20220419.bak' WITH  FILE = 1, NORECOVERY,
MOVE N'Primary' TO N'H:\USER_DB\SiteConfig\Primary.MDF',
MOVE N'SiteConfig_log' TO N'H:\USER_DB\SiteConfig\SiteConfig_log.ldf',
MOVE N'Index' TO N'H:\USER_DB\SiteConfig\Index.NDF',
MOVE N'Data' TO N'H:\USER_DB\SiteConfig\Data.NDF',
MOVE N'LIC_Data' TO N'H:\USER_DB\Siteconfig\LIC_Data.NDF',
MOVE N'LIC_index' TO N'H:\USER_DB\Siteconfig\LIC_index.NDF',
MOVE N'DomainLists_data' TO N'H:\USER_DB\SiteConfig\DomainLists_data.ndf',
MOVE N'DomainLists_index' TO N'H:\USER_DB\SiteConfig\DomainLists_index.ndf',
NOUNLOAD,  STATS = 10