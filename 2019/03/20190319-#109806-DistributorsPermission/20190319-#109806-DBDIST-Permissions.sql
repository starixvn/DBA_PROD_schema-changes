/*
	Creator:	20190319@Billy
	Task:		Grant permission for monitoring system - [Redmine: #109806]
	Server:		DBDIST
*/


--	BEGIN STEP 1:
--		Grant permission for [sqlLink]
----------------------------------------------------------------------------------------------------

USE master;
GO
GRANT VIEW SERVER STATE TO sqlLink;
GO