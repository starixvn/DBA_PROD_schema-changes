/*
	Task - Upgrade SQL Server DB055 to 2019
		+ Setup SSB ( certificate, endpoint)
	Run on dbtrans
*/

USE [master]
GO

--//drop old certificate
DROP CERTIFICATE SSBS_DB055_Cert

--//restore ssb certificate ==> from DB055
-->> Need to copy file first
CREATE CERTIFICATE SSBS_DB055_Cert
   AUTHORIZATION dba_cert_User
   FROM FILE = N'G:\SSBSQLCertificates\SSBS_DB055_Cert.cer'
GO