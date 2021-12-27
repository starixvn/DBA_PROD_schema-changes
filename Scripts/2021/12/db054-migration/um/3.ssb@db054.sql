/*
	Task - Upgrade SQL Server DB054 to 2019
		+ Setup SSB ( certificate, endpoint)
	Run on db054
*/
USE master
GO
--//create master ket for ssb certtificate
CREATE MASTER KEY ENCRYPTION BY PASSWORD = N'!i@b#ssb#mlogin$9)';
GO

--Creating certificate that will be used for encrypting messages. 
CREATE CERTIFICATE [SSBS_DB054_Cert]
       WITH SUBJECT = N'Certificate For DB054',
       EXPIRY_DATE = N'12/31/2080';
GO

--//backup ssb certificate
BACKUP CERTIFICATE [SSBS_DB054_Cert]
       TO FILE = N'G:\SSBSQLCertificates\SSBS_DB054_Cert.cer';
GO

--//restore ssb certificate ==> from DB052
CREATE CERTIFICATE SSBS_DB052_Cert
   AUTHORIZATION dba_cert_User
   FROM FILE = N'G:\SSBSQLCertificates\SSBS_DB052_Cert.cer'
GO

--//restore ssb certificate ==> from DBCUST
CREATE CERTIFICATE SSBS_CUST_Cert
   AUTHORIZATION dba_cert_User
   FROM FILE = N'G:\SSBSQLCertificates\SSBS_CUST_Cert.cer'
GO

--//restore ssb certificate ==> from DBTRANS
CREATE CERTIFICATE SSBS_DBTXN_Cert
   AUTHORIZATION dba_cert_User
   FROM FILE = N'G:\SSBSQLCertificates\SSBS_DBTXN_Cert.cer'
GO

--//create endpoint
CREATE ENDPOINT [Endpoint_SSB_DB054] 
	STATE = STARTED
	AS TCP (LISTENER_PORT = 4742, LISTENER_IP = ALL)
	FOR SERVICE_BROKER (MESSAGE_FORWARDING = DISABLED
						, MESSAGE_FORWARD_SIZE = 10
						, AUTHENTICATION = CERTIFICATE [SSBS_DB054_Cert]
						, ENCRYPTION = REQUIRED ALGORITHM RC4)
GO

GRANT CONNECT ON ENDPOINT::[Endpoint_SSB_DB054] TO dba_cert_User
GO
