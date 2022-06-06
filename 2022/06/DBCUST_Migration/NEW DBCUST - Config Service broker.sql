/*
	Task - Upgrade SQL Server DBCust to 2019: Config certificate, endpoint for DBCUST
	Run on DBCUST
*/

--==============================================================================================================
--1. Create certificate and endpoint for DBCUST
USE master
GO

CREATE USER [dba_cert_User] FOR LOGIN [dba_cert_User]
GO

--//create master ket for ssb certtificate
CREATE MASTER KEY ENCRYPTION BY PASSWORD = N'!i@b#ssb#mlogin$9)';
GO

--Creating certificate that will be used for encrypting messages. 
CREATE CERTIFICATE [SSBS_DBCust_Cert]
       WITH SUBJECT = N'Certificate For DBCust',
       EXPIRY_DATE = N'12/31/2080';
GO

--Backup ssb certificate
BACKUP CERTIFICATE [SSBS_DBCust_Cert]
       TO FILE = N'G:\SSBSQLCertificates\SSBS_DBCust_Cert.cer';
GO

--Create SB endpoint for DBCUST
CREATE ENDPOINT [Endpoint_SSB_DBCust]
	AUTHORIZATION [sa]
	STATE = STARTED
	AS TCP (LISTENER_PORT = 4740, LISTENER_IP = ALL)
	FOR SERVICE_BROKER (MESSAGE_FORWARDING = DISABLED
						, MESSAGE_FORWARD_SIZE = 10
						, AUTHENTICATION = CERTIFICATE [SSBS_DBCust_Cert]
						, ENCRYPTION = REQUIRED ALGORITHM RC4)
GO
GRANT CONNECT ON ENDPOINT::[Endpoint_SSB_DBCust] TO dba_cert_User
GO




--================================================================================================================
--2. Create certificate to connect DBLOG (DB054, DB055)

--2.1. Copy cer file "SSBS_DB054_Cert.cer" from DB054 \\db054\g$\SSBSQLCertificates to DBCUST G:\SSBSQLCertificates\

--2.2. Copy cer file "SSBS_DB055_Cert.cer" from DB055 \\db055\g$\SSBSQLCertificates to DBCUST G:\SSBSQLCertificates\

--2.3 Create certificate SSBS_DB054_Cert from the cert file copied
CREATE CERTIFICATE SSBS_DB054_Cert
   AUTHORIZATION dba_cert_User
   FROM FILE = N'G:\SSBSQLCertificates\SSBS_DB054_Cert.cer'
GO

--2.4 Create certificate SSBS_DB055_Cert from the cert file copied
CREATE CERTIFICATE SSBS_DB055_Cert
   AUTHORIZATION dba_cert_User
   FROM FILE = N'G:\SSBSQLCertificates\SSBS_DB055_Cert.cer'
GO





