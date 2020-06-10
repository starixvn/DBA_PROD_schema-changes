USE [master]
GO

/*
	Task - Setup new server DB055
		+ Drop and create new ssb
	Run on DB052
*/
--//drop old certificate
DROP CERTIFICATE SSBS_BET_RUNNING_Cert

--//restore ssb certificate ==> from DB055
-->> 
CREATE CERTIFICATE SSBS_DB055_Cert
   AUTHORIZATION dba_cert_User
   FROM FILE = N'D:\\SSBSQLCertificates\SSBS_DB055_Cert.cer'
GO

USE [bodb02]
GO

DROP ROUTE [Route_Settled_Ticket_DBAGE]
GO

CREATE ROUTE [Route_Settled_Ticket_DBAGE]   WITH  SERVICE_NAME  = N'Service_Settled_Ticket_BETRUNNING' ,  ADDRESS  = N'TCP://DB055:4743' 
GO