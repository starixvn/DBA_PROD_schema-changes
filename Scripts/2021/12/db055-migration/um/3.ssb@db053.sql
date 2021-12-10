/*
	Task - Upgrade SQL Server DB055 to 2019
		+ Setup SSB ( certificate, endpoint)
	Run on db053
*/

USE [master]
GO

IF EXISTS (
	SELECT TOP 1 1 FROM sys.certificates WHERE name = 'SSBS_DB055_Cert'
)
BEGIN
	--//drop old certificate
	DROP CERTIFICATE SSBS_DB055_Cert
END

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
       TO FILE = N'G:\SSBSQLCertificates\SSBS_DB053_Cert.cer';
GO

--//restore ssb certificate ==> from DB055
CREATE CERTIFICATE SSBS_DB055_Cert
   AUTHORIZATION dba_cert_User
   FROM FILE = N'G:\SSBSQLCertificates\SSBS_DB055_Cert.cer'
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