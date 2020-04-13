USE [master]
GO
/*
	Task - Setup new server DB053
	Run on DB053
*/
ALTER DATABASE bodb02 SET ENABLE_BROKER WITH ROLLBACK IMMEDIATE;
--//renew ssb
ALTER DATABASE bodb02 SET NEW_BROKER;
GO

use master
GO
--//create master ket for ssb certtificate
CREATE MASTER KEY ENCRYPTION BY PASSWORD = N'!i@b#ssb#mlogin$9)';
GO

--Creating certificate that will be used for encrypting messages. 
CREATE CERTIFICATE [SSBS_DB053_Cert]
       WITH SUBJECT = N'Certificate For DB053',
       EXPIRY_DATE = N'12/31/2080';
GO

--//backup ssb certificate
BACKUP CERTIFICATE [SSBS_DB053_Cert]
       TO FILE = N'D:\\SSBSQLCertificates\SSBS_DB053_Cert.cer';
GO

--//restore ssb certificate ==> from DB055
CREATE CERTIFICATE SSBS_DB055_Cert
   AUTHORIZATION dba_cert_User
   FROM FILE = N'D:\\SSBSQLCertificates\SSBS_DB055_Cert.cer'
GO

--//create endpoint
CREATE ENDPOINT [Endpoint_SSB_DB053] 
	STATE = STARTED
	AS TCP (LISTENER_PORT = 4742, LISTENER_IP = ALL)
	FOR SERVICE_BROKER (MESSAGE_FORWARDING = DISABLED
						, MESSAGE_FORWARD_SIZE = 10
						, AUTHENTICATION = CERTIFICATE [SSBS_DB053_Cert]
						, ENCRYPTION = REQUIRED ALGORITHM RC4)
GO

GRANT CONNECT ON ENDPOINT::[Endpoint_SSB_DB053] TO dba_cert_User
GO