

/*
	Move data file on DB05, from I to t
	step 1: change database state to read_only
	step 2: copy data files to new location [bodb_Customer] & [Bodb_Archive_Customer_Licensee]
	step 3: copying data file
		bodb_OWP database: 
		bodb_licensee
	step 4: reboot windows server (regular UM)
	
	notes: bodb_ost on I can be removed later (non UM time)
*/


USE [master]
GO
ALTER DATABASE bodb_Customer SET READ_ONLY WITH NO_WAIT
GO

---- [bodb_Customer]
 IF NOT EXISTS (SELECT TOP 1 1 FROM sys.databases WHERE name = 'bodb_Customer')
BEGIN
 CREATE DATABASE [bodb_Customer] ON 
      (FILENAME = N'T:\USER_DB\bodb_Customer\bodb_Customer.mdf')
        , (FILENAME = N'T:\USER_DB\bodb_Customer\bodb_Customer_log.ldf')
        , (FILENAME = N'T:\USER_DB\bodb_Customer\CustSetting_table_01.ndf')
        , (FILENAME = N'T:\USER_DB\bodb_Customer\bodb_Customer_DATA.ndf')
        , (FILENAME = N'T:\USER_DB\bodb_Customer\P2PSetting_table.ndf')
        , (FILENAME = N'T:\USER_DB\bodb_Customer\CustSettingGame_table.ndf')
        , (FILENAME = N'T:\USER_DB\bodb_Customer\CustSetting_table_02.ndf')
        , (FILENAME = N'T:\USER_DB\bodb_Customer\CustSetting_table_03.ndf')
        , (FILENAME = N'T:\USER_DB\bodb_Customer\CustSetting_table_04.ndf')
        , (FILENAME = N'T:\USER_DB\bodb_Customer\CustSetting_table_05.ndf')
        , (FILENAME = N'T:\USER_DB\bodb_Customer\CustSetting_table_06.ndf')
        , (FILENAME = N'T:\USER_DB\bodb_Customer\bodb_Customer_DATA_02.ndf')
        , (FILENAME = N'T:\USER_DB\bodb_Customer\bodb_Customer_DATA_03.ndf')
        , (FILENAME = N'T:\USER_DB\bodb_Customer\bodb_Customer_DATA_04.ndf')
        , (FILENAME = N'T:\USER_DB\bodb_Customer\bodb_Customer_DATA_05.ndf')
        , (FILENAME = N'T:\USER_DB\bodb_Customer\CustSetting_table_07.ndf')
        , (FILENAME = N'T:\USER_DB\bodb_Customer\CustSetting_table_08.ndf')
        , (FILENAME = N'T:\USER_DB\bodb_Customer\CustSetting_table_09.ndf')
        , (FILENAME = N'T:\USER_DB\bodb_Customer\CustSetting_table_10.ndf')
        , (FILENAME = N'T:\USER_DB\bodb_Customer\CustSetting3rd_table_01.ndf')
        , (FILENAME = N'T:\USER_DB\bodb_Customer\CustSetting3rd_table_02.ndf')
        , (FILENAME = N'T:\USER_DB\bodb_Customer\CustSetting3rd_table_03.ndf')
        , (FILENAME = N'T:\USER_DB\bodb_Customer\CustSetting3rd_table_04.ndf')
        , (FILENAME = N'T:\USER_DB\bodb_Customer\CustSetting3rd_table_05.ndf')
        , (FILENAME = N'T:\USER_DB\bodb_Customer\CustSetting3rd_table_06.ndf')
        , (FILENAME = N'T:\USER_DB\bodb_Customer\CustSetting3rd_table_07.ndf')
        , (FILENAME = N'T:\USER_DB\bodb_Customer\CustSetting3rd_table_08.ndf')
        , (FILENAME = N'T:\USER_DB\bodb_Customer\CustBetSetting_table_01.NDF')
        , (FILENAME = N'T:\USER_DB\bodb_Customer\CustBetSetting_table_02.NDF')
     FOR ATTACH;
END
GO


----- Bodb_Archive_Customer_Licensee


USE [master]
GO
ALTER DATABASE Bodb_Archive_Customer_Licensee SET READ_ONLY WITH NO_WAIT
GO


IF NOT EXISTS (SELECT TOP 1 1 FROM sys.databases WHERE name = 'Bodb_Archive_Customer_Licensee')
BEGIN
 CREATE DATABASE [Bodb_Archive_Customer_Licensee] ON 
      (FILENAME = N'T:\User_DB\bodb_Archive_Customer_Licensee\Bodb_Archive_Customer_Licensee.mdf')
        , (FILENAME = N'T:\User_DB\bodb_Archive_Customer_Licensee\Bodb_Archive_Customer_Licensee.ldf')
        , (FILENAME = N'T:\User_DB\bodb_Archive_Customer_Licensee\Customer_Table_01.ndf')
        , (FILENAME = N'T:\User_DB\bodb_Archive_Customer_Licensee\Customer_Table_02.ndf')
        , (FILENAME = N'T:\User_DB\bodb_Archive_Customer_Licensee\Customer_Table_03.ndf')
        , (FILENAME = N'T:\User_DB\bodb_Archive_Customer_Licensee\CustVirtualSetting_Table_01.ndf')
        , (FILENAME = N'T:\User_DB\bodb_Archive_Customer_Licensee\CustVirtualSetting_Table_02.ndf')
        , (FILENAME = N'T:\User_DB\bodb_Archive_Customer_Licensee\Dep_Custsetting_Table_01.ndf')
        , (FILENAME = N'T:\User_DB\bodb_Archive_Customer_Licensee\Dep_Custsetting_Table_02.ndf')
        , (FILENAME = N'T:\User_DB\bodb_Archive_Customer_Licensee\Dep_Custsetting_Table_03.ndf')
        , (FILENAME = N'T:\User_DB\bodb_Archive_Customer_Licensee\Dep_Custsetting_Table_04.ndf')
        , (FILENAME = N'T:\User_DB\bodb_Archive_Customer_Licensee\Dep_CustBetSetting_Table_01.ndf')
        , (FILENAME = N'T:\User_DB\bodb_Archive_Customer_Licensee\Dep_CustBetSetting_Table_02.ndf')
        , (FILENAME = N'T:\User_DB\bodb_Archive_Customer_Licensee\Dep_Custsetting3rd_Table_01.ndf')
        , (FILENAME = N'T:\User_DB\bodb_Archive_Customer_Licensee\Dep_Custsetting3rd_Table_02.ndf')
        , (FILENAME = N'T:\User_DB\bodb_Archive_Customer_Licensee\Dep_Custsetting3rd_Table_03.ndf')
        , (FILENAME = N'T:\User_DB\bodb_Archive_Customer_Licensee\Dep_CustSettingGame_Table_01.ndf')
        , (FILENAME = N'T:\User_DB\bodb_Archive_Customer_Licensee\Dep_CustSettingGame_Table_02.ndf')
        , (FILENAME = N'T:\User_DB\bodb_Archive_Customer_Licensee\CustSettingGame_Table_01.ndf')
        , (FILENAME = N'T:\User_DB\bodb_Archive_Customer_Licensee\CustSettingGame_Table_02.ndf')
        , (FILENAME = N'T:\User_DB\bodb_Archive_Customer_Licensee\Dep_CustPTSetting_Table_01.ndf')
        , (FILENAME = N'T:\User_DB\bodb_Archive_Customer_Licensee\Dep_CustPTSetting_Table_02.ndf')
        , (FILENAME = N'T:\User_DB\bodb_Archive_Customer_Licensee\Dep_CustStakeLevel_Table_01.ndf')
        , (FILENAME = N'T:\User_DB\bodb_Archive_Customer_Licensee\Dep_CustStakeLevel_Table_02.ndf')
        , (FILENAME = N'T:\User_DB\bodb_Archive_Customer_Licensee\Dep_CustDiscount_Member_Table_01.ndf')
        , (FILENAME = N'T:\User_DB\bodb_Archive_Customer_Licensee\Dep_CustDiscount_Member_Table_02.ndf')
        , (FILENAME = N'T:\User_DB\bodb_Archive_Customer_Licensee\CustGameType_Table_01.ndf')
        , (FILENAME = N'T:\User_DB\bodb_Archive_Customer_Licensee\CustGameType_Table_02.ndf')
        , (FILENAME = N'T:\User_DB\bodb_Archive_Customer_Licensee\Bodb_Archive_Customer_Licensee_DATA_01.ndf')
        , (FILENAME = N'T:\User_DB\bodb_Archive_Customer_Licensee\Bodb_Archive_Customer_Licensee_DATA_02.ndf')
     FOR ATTACH;
END
GO
