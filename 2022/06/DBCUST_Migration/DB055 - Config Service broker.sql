/*
	Task - Upgrade SQL Server DBCUST to 2019: Task - Upgrade SQL Server DBCust to 2019: Config certificate, endpoint for DB055
	Run on db055
*/

USE [master]
GO

-- 1. Drop existing certificate
DROP CERTIFICATE SSBS_CUST_Cert

--2. Copy cer file "SSBS_DBCUST_Cert.cer" from DBCUST \\DBCUST\g$\SSBSQLCertificates to DB055 G:\SSBSQLCertificates\ 

--3. Create certificate SSBS_CUST_Cert from the cert file copied
CREATE CERTIFICATE SSBS_CUST_Cert
   AUTHORIZATION dba_cert_User
   FROM FILE = N'G:\SSBSQLCertificates\SSBS_DBCUST_Cert.cer'
GO
