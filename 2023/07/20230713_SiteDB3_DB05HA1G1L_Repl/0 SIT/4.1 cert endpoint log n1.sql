/*
	Task - scale out dbtrans - create DBGRP03N1/DBGRP03N2
		+ Setup SSB ( certificate, endpoint)
	Run on SITDBGRP03N1
*/
USE master
GO

CREATE USER [dba_cert_User] FOR LOGIN [dba_cert_User]
GO

--//create master ket for ssb certtificate
CREATE MASTER KEY ENCRYPTION BY PASSWORD = N'!i@b#ssb#mlogin$9)';
GO

--Creating certificate that will be used for encrypting messages. 
CREATE CERTIFICATE [SSBS_DBGRP03N1_Cert]
       WITH SUBJECT = N'Certificate For DBGRP03L',
       EXPIRY_DATE = N'12/31/2080';
GO

--//backup ssb certificate
BACKUP CERTIFICATE [SSBS_DBGRP03N1_Cert]
       TO FILE = N'G:\SSBSQLCertificates\SSBS_DBGRP03N1_Cert.cer';
GO

--restore certificate from db055
CREATE CERTIFICATE SSBS_DB055_Cert
   AUTHORIZATION dba_cert_User
   FROM FILE = N'G:\SSBSQLCertificates\SSBS_DB055_Cert.cer'
GO


--//create endpoint
CREATE ENDPOINT [Endpoint_SSB_DBGRP03N1] 
	STATE = STARTED
	AS TCP (LISTENER_PORT = 4741, LISTENER_IP = ALL)
	FOR SERVICE_BROKER (MESSAGE_FORWARDING = DISABLED
						, MESSAGE_FORWARD_SIZE = 10
						, AUTHENTICATION = CERTIFICATE [SSBS_DBGRP03N1_Cert]
						, ENCRYPTION = REQUIRED ALGORITHM RC4)
GO

GRANT CONNECT ON ENDPOINT::[Endpoint_SSB_DBGRP03N1] TO dba_cert_User
GO
