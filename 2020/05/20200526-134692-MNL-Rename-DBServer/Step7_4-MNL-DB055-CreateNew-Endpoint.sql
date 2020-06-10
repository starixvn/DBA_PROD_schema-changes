/*
	Creator:	20200526@vnBobby
	Task:		Replace DB053 to DB055 role - [Redmine: #134692]
	Server:		DB053[.msdb]
*/


--	BEGIN STEP :
--		Create new enpoint for service broker usage
----------------------------------------------------------------------------------------------------
---TODO:
-- Create new CERTIFICATE named to SSBS_DB055_Cert if not existing

USE [master]
GO

--refer to file: Step7_3-MNL-DB055-CreateNew-ServiceBroker.sql