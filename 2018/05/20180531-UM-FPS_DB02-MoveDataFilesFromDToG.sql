/*
	Creator:	20180529@Billy
	Task:		Move data files on FPS_DB02 from $D to $G - [Redmine: #96022]
	Server:		FPS_DB02
*/


--	BEGIN STEP 1:	*** UM Time ***
--		Set database OFFLINE
----------------------------------------------------------------------------------------------------

USE	master;
GO

ALTER DATABASE	FPS_DeviceFingerprint SET OFFLINE;
GO


--	BEGIN STEP 2:	*** UM Time ***
--		COPY files from $D to $G
----------------------------------------------------------------------------------------------------

-- Source: D:\Data\FPS_DeviceFingerprint\
---- DF_TABLE_01.ndf
---- DF_TABLE_02.ndf
---- DF_TABLE_03.ndf
---- DF_TABLE_04.ndf

-- Destination: G:\Data\FPS_DeviceFingerprint\


--	BEGIN STEP 3:	*** UM Time ***
--		Update metadata
----------------------------------------------------------------------------------------------------

USE	master;
GO

ALTER DATABASE	FPS_DeviceFingerprint
MODIFY FILE (
	NAME		= DF_TABLE_01
,	FILENAME	= 'G:\Data\FPS_DeviceFingerprint\DF_TABLE_01.ndf'
);

ALTER DATABASE	FPS_DeviceFingerprint
MODIFY FILE (
	NAME		= DF_TABLE_02
,	FILENAME	= 'G:\Data\FPS_DeviceFingerprint\DF_TABLE_02.ndf'
);

ALTER DATABASE	FPS_DeviceFingerprint
MODIFY FILE (
	NAME		= DF_TABLE_03
,	FILENAME	= 'G:\Data\FPS_DeviceFingerprint\DF_TABLE_03.ndf'
);

ALTER DATABASE	FPS_DeviceFingerprint
MODIFY FILE (
	NAME		= DF_TABLE_04
,	FILENAME	= 'G:\Data\FPS_DeviceFingerprint\DF_TABLE_04.ndf'
);
GO

--	BEGIN STEP 4:	*** UM Time ***
--		Set database ONLINE
----------------------------------------------------------------------------------------------------

USE	master;
GO

ALTER DATABASE	FPS_DeviceFingerprint SET ONLINE;
GO


--	BEGIN STEP 5:	*** UM Time ***
--		Verify database
----------------------------------------------------------------------------------------------------


--	BEGIN STEP 6:
--		Delete files on $D
----------------------------------------------------------------------------------------------------


--	BEGIN STEP *ROLLBACK*:
--		Rollback to original state
----------------------------------------------------------------------------------------------------

/*
USE	master;
GO

ALTER DATABASE	FPS_DeviceFingerprint SET OFFLINE;

ALTER DATABASE	FPS_DeviceFingerprint
MODIFY FILE (
	NAME		= DF_TABLE_01
,	FILENAME	= 'D:\Data\FPS_DeviceFingerprint\DF_TABLE_01.ndf'
);

ALTER DATABASE	FPS_DeviceFingerprint
MODIFY FILE (
	NAME		= DF_TABLE_02
,	FILENAME	= 'D:\Data\FPS_DeviceFingerprint\DF_TABLE_02.ndf'
);

ALTER DATABASE	FPS_DeviceFingerprint
MODIFY FILE (
	NAME		= DF_TABLE_03
,	FILENAME	= 'D:\Data\FPS_DeviceFingerprint\DF_TABLE_03.ndf'
);

ALTER DATABASE	FPS_DeviceFingerprint
MODIFY FILE (
	NAME		= DF_TABLE_04
,	FILENAME	= 'D:\Data\FPS_DeviceFingerprint\DF_TABLE_04.ndf'
);
GO

ALTER DATABASE	FPS_DeviceFingerprint SET ONLINE;
GO
*/