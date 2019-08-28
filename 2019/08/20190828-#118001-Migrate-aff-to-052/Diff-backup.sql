/*
	Task: Migrate DBAFF to DB052/DB053
		+ Diff backup
*/


EXECUTE master.dbo.xp_create_subdir N'D:\Backup\Affiliate_Aoncash'
GO
EXECUTE master.dbo.xp_create_subdir N'D:\Backup\Affiliate_Athena000'
GO
EXECUTE master.dbo.xp_create_subdir N'D:\Backup\Affiliate_itcbet'
GO
EXECUTE master.dbo.xp_create_subdir N'D:\Backup\Affiliate_MacauBet'
GO
EXECUTE master.dbo.xp_create_subdir N'D:\Backup\Affiliate_Spondemo'
GO

--==Affiliate_Aoncash
BACKUP DATABASE [Affiliate_Aoncash] TO DISK = N'D:\Backup\Affiliate_Aoncash\Affiliate_Aoncashdif_diff_backup_migrate_2019_08_28.diff' WITH DIFFERENTIAL, NOFORMAT
	, NOINIT, NAME = N'Affiliate_Aoncashdif_diff_backup_migrate_2019_08_28', SKIP, REWIND, NOUNLOAD, COMPRESSION,  STATS = 10
GO

--==Affiliate_Athena000
BACKUP DATABASE [Affiliate_Athena000] TO  DISK = N'D:\Backup\Affiliate_Athena000\Affiliate_Athena000dif_diff_backup_migrate_2019_08_28.diff' WITH DIFFERENTIAL, NOFORMAT
	, NOINIT,  NAME = N'Affiliate_Athena000dif_diff_backup_migrate_2019_08_28', SKIP, REWIND, NOUNLOAD, COMPRESSION,  STATS = 10
GO

--==Affiliate_itcbet
BACKUP DATABASE [Affiliate_itcbet] TO  DISK = N'D:\Backup\Affiliate_itcbet\Affiliate_itcbetdif_diff_backup_migrate_2019_08_28.diff' WITH DIFFERENTIAL, NOFORMAT
	, NOINIT,  NAME = N'Affiliate_itcbetdif_diff_backup_migrate_2019_08_28', SKIP, REWIND, NOUNLOAD, COMPRESSION,  STATS = 10
GO

--==Affiliate_MacauBet
BACKUP DATABASE [Affiliate_MacauBet] TO  DISK = N'D:\Backup\Affiliate_MacauBet\Affiliate_MacauBetdif_diff_backup_migrate_2019_08_28.diff' WITH DIFFERENTIAL, NOFORMAT
	, NOINIT,  NAME = N'Affiliate_MacauBetdif_diff_backup_migrate_2019_08_28', SKIP, REWIND, NOUNLOAD, COMPRESSION,  STATS = 10
GO

--==Affiliate_Spondemo
BACKUP DATABASE [Affiliate_Spondemo] TO  DISK = N'D:\Backup\Affiliate_Spondemo\Affiliate_Spondemodif_diff_backup_migrate_2019_08_28.diff' WITH DIFFERENTIAL, NOFORMAT
	, NOINIT,  NAME = N'Affiliate_Spondemodif_diff_backup_migrate_2019_08_28', SKIP, REWIND, NOUNLOAD, COMPRESSION,  STATS = 10
GO
