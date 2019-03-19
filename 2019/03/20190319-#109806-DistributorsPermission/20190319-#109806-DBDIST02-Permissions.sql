/*
	Creator:	20190319@Billy
	Task:		Grant permission for monitoring system - [Redmine: #109806]
	Server:		DBDIST02
*/


--	BEGIN STEP 1:
--		Create login [sqlLink] & grant permission
----------------------------------------------------------------------------------------------------

USE master;
GO
IF	SUSER_SID('sqlLink') IS NULL
	CREATE LOGIN sqlLink WITH PASSWORD = 0x01003CD7A834600C31357307420EF59E96B9805C9D4633219907 HASHED, SID = 0x24A39890B9685041BD3A8C1119107FBC, DEFAULT_DATABASE = [master], CHECK_POLICY = OFF, CHECK_EXPIRATION = OFF;
GO
GRANT VIEW SERVER STATE TO sqlLink;
GO

--	BEGIN STEP :
--		Description
----------------------------------------------------------------------------------------------------

USE MonDB;
GO
CREATE USER sqlLink FOR LOGIN sqlLink;
GO
GRANT EXECUTE ON dbo.vnDBA_sp_Wait_CaptureInfo TO sqlLink;
GO