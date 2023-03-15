/*<info serverAlias="FPS_DB02-FPS_DeviceFingerprint"></info>*/
/*
	Created: 20230217@Sol
	Task: set db FPS_DeviceFingerprint to multiple user mode
	DB: FPS_DB02-FPS_DeviceFingerprint
*/

USE [master]

GO

ALTER DATABASE [FPS_DeviceFingerprint] SET MULTI_USER WITH NO_WAIT --failed if the requested database state or option change can't complete immediately

GO
