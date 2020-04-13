USE [master]
GO

/*
	Task - Setup new server DB053
		+ Drop and create new ssb
	Run on DB055
*/
--//drop old certificate
DROP CERTIFICATE SSBS_BET_RUNNING_Cert

--//restore ssb certificate ==> from DB053
-->> 
CREATE CERTIFICATE SSBS_DB053_Cert
   AUTHORIZATION dba_cert_User
   FROM FILE = N'D:\\SSBSQLCertificates\SSBS_DB053_Cert.cer'
GO