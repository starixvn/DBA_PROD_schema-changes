/*<info serverAlias="FPS_DB02-FPS_DeviceFingerprint"></info>*/
/*
	Created: 20230217@Sol
	Task: switch db FPS_DeviceFingerprint to full recovery mode
	DB: FPS_DB02-FPS_DeviceFingerprint
*/

USE [master]

GO

--switch to full recovery (pseudo-Simple)
ALTER DATABASE [FPS_DeviceFingerprint] SET RECOVERY FULL WITH NO_WAIT

GO