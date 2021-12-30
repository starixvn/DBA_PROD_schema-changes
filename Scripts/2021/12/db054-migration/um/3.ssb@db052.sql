/*
	Task - Upgrade SQL Server DB054 to 2019
		+ Setup SSB ( certificate, endpoint)
	Run on db052
*/

USE [master]
GO

IF EXISTS (
	SELECT TOP 1 1 FROM sys.certificates WHERE name = 'SSBS_DB054_Cert'
)
BEGIN
	--//drop old certificate
	DROP CERTIFICATE SSBS_DB054_Cert
END

--//create master ket for ssb certtificate
CREATE MASTER KEY ENCRYPTION BY PASSWORD = N'!i@b#ssb#mlogin$9)';
GO

--Creating certificate that will be used for encrypting messages. 
CREATE CERTIFICATE [SSBS_DB052_Cert]
       WITH SUBJECT = N'Certificate For DB052',
       EXPIRY_DATE = N'12/31/2080';
GO

--//backup ssb certificate
BACKUP CERTIFICATE [SSBS_DB052_Cert]
       TO FILE = N'G:\SSBSQLCertificates\SSBS_DB052_Cert.cer';
GO

--//restore ssb certificate ==> from DB054
CREATE CERTIFICATE SSBS_DB054_Cert
   AUTHORIZATION dba_cert_User
   FROM FILE = N'G:\SSBSQLCertificates\SSBS_DB054_Cert.cer'
GO

--//create endpoint
CREATE ENDPOINT [Endpoint_SSB_DB052]
	STATE = STARTED
	AS TCP (LISTENER_PORT = 4741, LISTENER_IP = ALL)
	FOR SERVICE_BROKER (MESSAGE_FORWARDING = DISABLED
						, MESSAGE_FORWARD_SIZE = 10
						, AUTHENTICATION = CERTIFICATE [SSBS_DB052_Cert]
						, ENCRYPTION = REQUIRED ALGORITHM RC4)
GO

GRANT CONNECT ON ENDPOINT::[Endpoint_SSB_DB052] TO dba_cert_User
GO