/* 
	Task: Restore CustDB (norecovery) on secondary node AG
	Run on primary node DBGRP03N2
 */


RESTORE DATABASE [CustDB] FROM  DISK = N'G:\BACKUP_LOCAL\UM0713\DBGRP03N1.CustDB_20230713.bak' WITH  FILE = 1, REPLACE, NORECOVERY,
MOVE N'bodb02_Primary' TO N'G:\USER_DB\CustDB\bodb02_Primary.MDF',
MOVE N'bodb02_Log' TO N'G:\USER_DB\CustDB\bodb02_Log.LDF',
MOVE N'CustGameType_table_01' TO N'G:\USER_DB\CustDB\CustGameType_table_01.ndf',
MOVE N'CustGameType_table_02' TO N'G:\USER_DB\CustDB\CustGameType_table_02.ndf',
MOVE N'DATA(1)' TO N'G:\USER_DB\CustDB\DATA(1).NDF',
MOVE N'DATA(2)' TO N'G:\USER_DB\CustDB\DATA(2).NDF',
MOVE N'DATA(3)' TO N'G:\USER_DB\CustDB\DATA(3).NDF',
MOVE N'P2PSetting' TO N'G:\USER_DB\CustDB\P2PSetting.ndf',
MOVE N'CustGameType_table_03' TO N'G:\USER_DB\CustDB\CustGameType_table_03.ndf',
MOVE N'Dep_CustSettingGame_Table_01' TO N'G:\USER_DB\CustDB\Dep_CustSettingGame_Table_01.ndf',
MOVE N'CustSetting(1)' TO N'G:\USER_DB\CustDB\CustSetting(1).NDF',
MOVE N'CustSetting3rd(1)' TO N'G:\USER_DB\CustDB\CustSetting3rd(1).NDF',
MOVE N'table_customer(1)' TO N'G:\USER_DB\CustDB\table_customer(1).NDF',
MOVE N'virtualrate_table_01' TO N'G:\USER_DB\CustDB\virtualrate_table_01.ndf',
MOVE N'CustOverride3rd' TO N'G:\USER_DB\CustDB\CustOverride3rd.NDF',
MOVE N'CustSetting3rd(2)' TO N'G:\USER_DB\CustDB\CustSetting3rd(2).NDF',
MOVE N'CustSetting3rd(3)' TO N'G:\USER_DB\CustDB\CustSetting3rd(3).NDF',
MOVE N'CustSetting3rd(4)' TO N'G:\USER_DB\CustDB\CustSetting3rd(4).NDF',
MOVE N'CustSetting(2)' TO N'G:\USER_DB\CustDB\CustSetting(2).NDF',
MOVE N'table_customer(2)' TO N'G:\USER_DB\CustDB\table_customer(2).NDF',
MOVE N'table_customer(3)' TO N'G:\USER_DB\CustDB\table_customer(3).NDF',
MOVE N'table_customer(4)' TO N'G:\USER_DB\CustDB\table_customer(4).NDF',
MOVE N'CustSettingGame_table' TO N'G:\USER_DB\CustDB\CustSettingGame_table.ndf',
MOVE N'Dep_Custsetting_table_01' TO N'G:\USER_DB\CustDB\Dep_Custsetting_table_01.ndf',
MOVE N'Dep_CustSettingGame_table' TO N'G:\USER_DB\CustDB\Dep_CustSettingGame_table.ndf',
MOVE N'Dep_Custsetting_table_02' TO N'G:\USER_DB\CustDB\Dep_Custsetting_table_02.ndf',
MOVE N'Dep_Custsetting_table_03' TO N'G:\USER_DB\CustDB\Dep_Custsetting_table_03.ndf',
MOVE N'Event' TO N'G:\USER_DB\CustDB\Event.NDF',
MOVE N'Event_index' TO N'G:\USER_DB\CustDB\Event_index.NDF',
MOVE N'Dep_Custsetting3rd_table_01' TO N'G:\USER_DB\CustDB\Dep_Custsetting3rd_table_01.ndf',
MOVE N'Dep_Custsetting3rd_table_02' TO N'G:\USER_DB\CustDB\Dep_Custsetting3rd_table_02.ndf',
MOVE N'Dep_Custsetting3rd_table_03' TO N'G:\USER_DB\CustDB\Dep_Custsetting3rd_table_03.ndf',
MOVE N'CustSetting(3)' TO N'G:\USER_DB\CustDB\CustSetting(3).NDF',
MOVE N'CustSetting(4)' TO N'G:\USER_DB\CustDB\CustSetting(4).NDF',
MOVE N'CustOverride' TO N'G:\USER_DB\CustDB\CustOverride.NDF',
NOUNLOAD,  STATS = 5


RESTORE DATABASE [CustDB] FROM disk = 'G:\BACKUP_LOCAL\UM0713\DBGRP03N1.CustDB_20220713_Log.trn' WITH  FILE = 1, NOUNLOAD, REPLACE, NORECOVERY, STATS = 5

