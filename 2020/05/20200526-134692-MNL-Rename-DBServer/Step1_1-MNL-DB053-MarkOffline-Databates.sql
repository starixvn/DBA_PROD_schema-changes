/*
	Creator:	20200526@vnBobby
	Task:		Replace DB053 to DB055 role - [Redmine: #134692]
	Server:		DB053[.master]
*/


--	BEGIN STEP :
--		Mark offline for unused databases
----------------------------------------------------------------------------------------------------
use master;
GO

SET NOCOUNT ON;
ALTER DATABASE bodb_Age SET offline;

ALTER DATABASE bodb_ChatBot SET offline;