/*
    Task: Move DBFRAUD to new Server
		+ Change owner to 'sa'
    Server: DBFRAUD

	Full backup:
		FPS_DEV
		FPS_RPT
		IPDB_KBT
		FPS_RobotDetection
		FPS_DeviceFingerprint_UAT
		FPS_DEV_TEST
*/

EXEC FPS_DEV.dbo.sp_changedbowner @loginame= N'sa', @map =false
EXEC FPS_RPT.dbo.sp_changedbowner @loginame= N'sa', @map =false
EXEC IPDB_KBT.dbo.sp_changedbowner @loginame= N'sa', @map =false
EXEC FPS_RobotDetection.dbo.sp_changedbowner @loginame= N'sa', @map =false
EXEC FPS_DeviceFingerprint_UAT.dbo.sp_changedbowner @loginame= N'sa', @map =false
EXEC FPS_DEV_TEST.dbo.sp_changedbowner @loginame= N'sa', @map =false
