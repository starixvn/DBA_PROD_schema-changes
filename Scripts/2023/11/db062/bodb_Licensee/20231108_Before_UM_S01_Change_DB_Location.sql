/*<info serverAlias="DB061-bodb_Licensee"></info>*/
/*
	Created: 20231108@Sol
	Task: alter location of bodb_Licensee to new location
	DB: DB061-bodb_Licensee
*/

GO

---check current location
SELECT * 
FROM SYS.SYSALTFILES F WITH(NOLOCK)
WHERE DB_NAME(DBID) = 'BODB_LICENSEE'
	AND FILENAME LIKE '%I:\%'
ORDER BY FILENAME

GO

USE master;

GO
---15 files
ALTER DATABASE bodb_Licensee MODIFY FILE ( NAME = BA_Data_1, FILENAME = 'J:\USER_DB\bodb_licensee\BA_Data_01.ndf')
ALTER DATABASE bodb_Licensee MODIFY FILE ( NAME = BA_Index_1, FILENAME = 'J:\USER_DB\bodb_licensee\BA_Index_01.ndf')
ALTER DATABASE bodb_Licensee MODIFY FILE ( NAME = BATrans_BK, FILENAME = 'J:\USER_DB\bodb_licensee\BATrans_BK.ndf')
ALTER DATABASE bodb_Licensee MODIFY FILE ( NAME = bodb_Licensee, FILENAME = 'J:\USER_DB\bodb_licensee\bodb_Licensee.mdf')
ALTER DATABASE bodb_Licensee MODIFY FILE ( NAME = bodb_Licensee_log, FILENAME = 'J:\USER_DB\bodb_licensee\bodb_Licensee_log.ldf')
ALTER DATABASE bodb_Licensee MODIFY FILE ( NAME = data01, FILENAME = 'J:\USER_DB\bodb_licensee\data01.ndf')
ALTER DATABASE bodb_Licensee MODIFY FILE ( NAME = data02, FILENAME = 'J:\USER_DB\bodb_licensee\data02.ndf')
ALTER DATABASE bodb_Licensee MODIFY FILE ( NAME = licensee_index_2, FILENAME = 'J:\USER_DB\bodb_licensee\licensee_index_02.ndf')
ALTER DATABASE bodb_Licensee MODIFY FILE ( NAME = licensee_table_02, FILENAME = 'J:\USER_DB\bodb_licensee\licensee_table_02.ndf')
ALTER DATABASE bodb_Licensee MODIFY FILE ( NAME = LicenseeCustComm_History_table_01, FILENAME = 'J:\USER_DB\bodb_licensee\LicenseeCustComm_History_table_01.ndf')
ALTER DATABASE bodb_Licensee MODIFY FILE ( NAME = on_user_index_02, FILENAME = 'J:\USER_DB\bodb_licensee\on_user_index_02.ndf')
ALTER DATABASE bodb_Licensee MODIFY FILE ( NAME = on_user_table_02, FILENAME = 'J:\USER_DB\bodb_licensee\on_user_table_02.ndf')
ALTER DATABASE bodb_Licensee MODIFY FILE ( NAME = OWA_INDEX, FILENAME = 'J:\USER_DB\bodb_licensee\OWA_INDEX.ndf')
ALTER DATABASE bodb_Licensee MODIFY FILE ( NAME = OWA_DATA, FILENAME = 'J:\USER_DB\bodb_licensee\OWN_DATA.ndf')
ALTER DATABASE bodb_Licensee MODIFY FILE ( NAME = user_table_02, FILENAME = 'J:\USER_DB\bodb_licensee\user_table_02.ndf')

GO