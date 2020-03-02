USE [master]
GO
/*
	Task - Setup new server DB055
	Run on DB055
*/
ALTER DATABASE bodb02 SET ENABLE_BROKER WITH ROLLBACK IMMEDIATE;
ALTER DATABASE ServiceBrokerDB SET ENABLE_BROKER WITH ROLLBACK IMMEDIATE;

ALTER DATABASE ServiceBrokerDB SET TRUSTWORTHY ON;
go

--//renew ssb
ALTER DATABASE bodb02 SET NEW_BROKER;
GO
ALTER DATABASE ServiceBrokerDB SET NEW_BROKER;
GO

use master
GO
--//create master ket for ssb certtificate
CREATE MASTER KEY ENCRYPTION BY PASSWORD = N'!i@b#ssb#mlogin$9)';
GO

--Creating certificate that will be used for encrypting messages. 
CREATE CERTIFICATE [SSBS_DB055_Cert]
       WITH SUBJECT = N'Certificate For DB055',
       EXPIRY_DATE = N'12/31/2080';
GO

--//backup ssb certificate
BACKUP CERTIFICATE [SSBS_DB055_Cert]
       TO FILE = N'D:\\SSBSQLCertificates\SSBS_DB055_Cert.cer';
GO

--//restore ssb certificate ==> from DB053
CREATE CERTIFICATE SSBS_AGE_Cert
   AUTHORIZATION dba_cert_User
   FROM FILE = N'D:\\SSBSQLCertificates\SSBS_AGE_Cert.cer'
GO

--//create endpoint
CREATE ENDPOINT [Endpoint_SSB_DB055] 
	STATE = STARTED
	AS TCP (LISTENER_PORT = 4743, LISTENER_IP = ALL)
	FOR SERVICE_BROKER (MESSAGE_FORWARDING = DISABLED
						, MESSAGE_FORWARD_SIZE = 10
						, AUTHENTICATION = CERTIFICATE [SSBS_DB055_Cert]
						, ENCRYPTION = REQUIRED ALGORITHM RC4)
GO

GRANT CONNECT ON ENDPOINT::[Endpoint_SSB_DB055] TO dba_cert_User
GO