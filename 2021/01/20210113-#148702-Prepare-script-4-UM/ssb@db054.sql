USE [master]
GO

/*
	Task - Setup new server DB052
		+ Drop and create new ssb
	Run on DB054
*/
--//drop old certificate
DROP CERTIFICATE SSBS_LOG_Cert

--//restore ssb certificate ==> from DB052
-->> Need to copy file first
CREATE CERTIFICATE SSBS_DB052_Cert
   AUTHORIZATION dba_cert_User
   FROM FILE = N'G:\\SSBSQLCertificates\SSBS_DB052_Cert.cer'
GO