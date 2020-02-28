USE [master]
GO

/*
	Run on DB052
*/
--//drop old certificate
DROP CERTIFICATE SSBS_LOG_BK_Cert

--//restore ssb certificate ==> from DB054
-->> 
CREATE CERTIFICATE SSBS_DB054_Cert
   AUTHORIZATION dba_cert_User
   FROM FILE = N'D:\\SSBSQLCertificates\SSBS_DB054_Cert.cer'
GO
