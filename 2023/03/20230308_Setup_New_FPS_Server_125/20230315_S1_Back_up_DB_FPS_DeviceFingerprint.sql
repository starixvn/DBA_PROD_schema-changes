/*<info serverAlias="FPS_DB02-FPS_DeviceFingerprint"></info>*/
/*
	Created: 20230217@Sol
	Task: backup db FPS_DeviceFingerprint
	DB: FPS_DB02-FPS_DeviceFingerprint
*/

--Script gen from job: DBA - Full Backup with add one more param: BUFFERCOUNT = 100

USE master;

GO

BACKUP DATABASE [FPS_DeviceFingerprint] TO 
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_50.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_49.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_48.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_47.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_46.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_45.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_44.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_43.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_42.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_41.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_40.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_39.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_38.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_37.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_36.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_35.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_34.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_33.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_32.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_31.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_30.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_29.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_28.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_27.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_26.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_25.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_24.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_23.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_22.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_21.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_20.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_19.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_18.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_17.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_16.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_15.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_14.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_13.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_12.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_11.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_10.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_9.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_8.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_7.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_6.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_5.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_4.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_3.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_2.bak',
DISK = N'F:\Backup\FPS_DeviceFingerprint\FPS_DeviceFingerprint_Full_20230314_231109_1.bak'
WITH  

NOFORMAT, INIT
,  NAME = N'FPS_DeviceFingerprint-FullDatabase Backup'
, SKIP, NOREWIND, NOUNLOAD, BUFFERCOUNT = 100, STATS = 5

GO