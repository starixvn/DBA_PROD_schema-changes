USE [master]
GO

/*
	Task - Setup new server DB054
		+ Restore certificate from DB054
	Run on DBCUST
*/
--//drop old certificate
DROP CERTIFICATE SSBS_DB054_Cert

--//restore ssb certificate ==> from DB054
-->> Need to copy file first
CREATE CERTIFICATE SSBS_DB054_Cert
   AUTHORIZATION dba_cert_User
   FROM FILE = N'G:\\SSBSQLCertificates\SSBS_DB054_Cert.cer'
GO