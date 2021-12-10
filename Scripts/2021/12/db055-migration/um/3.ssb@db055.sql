/*
	Task - Upgrade SQL Server DB055 to 2019
		+ Setup SSB before UM part ( certificate, endpoint)
	Run on db055
*/
USE master
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
       TO FILE = N'G:\SSBSQLCertificates\SSBS_DB055_Cert.cer';
GO

--//restore ssb certificate ==> from DB053
CREATE CERTIFICATE SSBS_DB053_Cert
   AUTHORIZATION dba_cert_User
   FROM FILE = N'G:\SSBSQLCertificates\SSBS_DB053_Cert.cer'
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
