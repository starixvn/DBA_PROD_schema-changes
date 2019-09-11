use bodb_licensee
go

/*
	Description: Adding licensee code for oficial party 
	DB: DBCUST.bodb_licensee
*/

ALTER TABLE dbo.OAS_PartyDetail ADD LicenseeCode VARCHAR(50) NULL
GO