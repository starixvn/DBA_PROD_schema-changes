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

/****** Object:  Endpoint [Endpoint_SSB_DB055]    Script Date: 5/26/2020 12:17:46 AM ******/
CREATE ENDPOINT [Endpoint_SSB_DB055] 
	STATE=STARTED
	AS TCP (LISTENER_PORT = 4743, LISTENER_IP = ALL)
	FOR SERVICE_BROKER (MESSAGE_FORWARDING = DISABLED
, MESSAGE_FORWARD_SIZE = 10
, AUTHENTICATION = CERTIFICATE [SSBS_DB055_Cert]
, ENCRYPTION = REQUIRED ALGORITHM RC4)
GO
