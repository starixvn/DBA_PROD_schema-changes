USE [master]
GO

/*
	Task - Setup new server DB055
		+ Drop and create new ssb
	Run on DB053
*/
--//drop old certificate
DROP CERTIFICATE SSBS_BET_RUNNING_Cert

--//restore ssb certificate ==> from DB055
-->> 
CREATE CERTIFICATE SSBS_DB055_Cert
   AUTHORIZATION dba_cert_User
   FROM FILE = N'D:\\SSBSQLCertificates\SSBS_DB055_Cert.cer'
GO
