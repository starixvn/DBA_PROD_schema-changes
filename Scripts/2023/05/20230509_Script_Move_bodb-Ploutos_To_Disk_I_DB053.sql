/*<info serverAlias="DB053-bodb_Ploutos"></info>*/
/*
	Created: 20230509@Sol
	Task: move db file to new location
	DB: DB053-bodb_Ploutos
*/

---### Disable jobs related to bodb_Ploutos

use msdb;

GO

EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Ploutos: BetTicket Filtering and VC - Sportbook', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Ploutus: Check Data Consistency', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Ploutos: Get New Data', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Ploutos: Archive Data', @enabled = 0;
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_bodb_Ploutos', @enabled = 0;

GO

---### check current location

use master;

GO

select * 
from sys.sysaltfiles
where dbid = DB_ID('bodb_Ploutos')

select * from sys.master_files where database_id = db_id('bodb_Ploutos')

select * from bodb_Ploutos.sys.database_files

GO

---### Run script to change to new location DISK I - 71 files

use master;

GO

ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = bodb_Ploutos, FILENAME = 'I:\user_db\bodb_Ploutos\bodb_Ploutos.mdf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = bodb_Ploutos_log, FILENAME = 'I:\user_db\bodb_Ploutos\bodb_Ploutos_log.ldf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = API_Logs01, FILENAME = 'I:\user_db\bodb_Ploutos\API_Logs01.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = API_Logs02, FILENAME = 'I:\user_db\bodb_Ploutos\API_Logs02.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = bodb_Ploutos_DATA, FILENAME = 'I:\user_db\bodb_Ploutos\bodb_Ploutos_DATA.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = PlayerProfile, FILENAME = 'I:\user_db\bodb_Ploutos\PlayerProfile.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_2018, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_2018.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_2019, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_2019.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_2020, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_2020.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_21M01, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_21M01.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_21M02, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_21M02.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_21M03, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_21M03.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_21M04, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_21M04.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_21M05, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_21M05.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_21M06, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_21M06.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_21M07, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_21M07.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_21M08, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_21M08.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_21M09, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_21M09.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_21M10, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_21M10.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_21M11, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_21M11.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_21M12, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_21M12.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_22M01, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_22M01.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_22M02, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_22M02.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_22M03, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_22M03.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_22M04, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_22M04.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_22M05, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_22M05.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_22M06, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_22M06.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_22M07, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_22M07.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_22M08, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_22M08.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_22M09, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_22M09.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_22M10, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_22M10.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_22M11, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_22M11.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_22M12, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_22M12.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_23M01, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_23M01.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_23M02, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_23M02.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_23M03, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_23M03.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_23M04, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_23M04.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_23M05, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_23M05.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_23M06, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_23M06.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_23M07, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_23M07.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_23M08, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_23M08.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_23M09, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_23M09.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_23M10, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_23M10.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_23M11, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_23M11.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_23M12, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_23M12.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_MAX, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_MAX.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_24M01, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_24M01.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_24M02, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_24M02.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_24M03, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_24M03.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_24M04, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_24M04.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_24M05, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_24M05.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_24M06, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_24M06.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_24M07, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_24M07.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_24M08, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_24M08.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_24M09, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_24M09.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_24M10, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_24M10.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_24M11, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_24M11.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_24M12, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_24M12.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_25M01, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_25M01.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_25M02, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_25M02.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_25M03, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_25M03.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_25M04, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_25M04.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_25M05, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_25M05.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_25M06, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_25M06.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_25M07, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_25M07.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_25M08, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_25M08.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_25M09, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_25M09.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_25M10, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_25M10.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_25M11, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_25M11.ndf')
ALTER DATABASE bodb_Ploutos MODIFY FILE ( NAME = BetTicket_BK_25M12, FILENAME = 'I:\user_db\bodb_Ploutos\BetTicket_BK_25M12.ndf')

GO

---### Take db OFFLINE to prepare moving physical files

use master;

GO

ALTER DATABASE bodb_Ploutos SET OFFLINE WITH ROLLBACK IMMEDIATE;

GO

---###Move files to new location: From disk F to disk I
---###Move files to new location: From disk F to disk I
---###Move files to new location: From disk F to disk I
---###Move files to new location: From disk F to disk I

GO

---### when done - Take db ONLINE

use master;

GO

ALTER DATABASE bodb_Ploutos SET ONLINE;

GO

---### check current location

use master;

GO

select * 
from sys.sysaltfiles
where dbid = DB_ID('bodb_Ploutos')

select * from sys.master_files where database_id = db_id('bodb_Ploutos')

select * from bodb_Ploutos.sys.database_files

GO

---### Enable jobs related to bodb_Ploutos

use msdb;

GO

EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Ploutos: BetTicket Filtering and VC - Sportbook', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Ploutus: Check Data Consistency', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Ploutos: Get New Data', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'bodb_Ploutos: Archive Data', @enabled = 1;
EXEC msdb.dbo.sp_update_job @job_name = N'LSBackup_bodb_Ploutos', @enabled = 1;

GO