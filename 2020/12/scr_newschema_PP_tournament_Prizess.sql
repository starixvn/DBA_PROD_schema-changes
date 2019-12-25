

USE bodb_Licensee
GO

/*
	Created: 20191209@Parsons
	DB: DBCUST.bodb_Licensee
	Task: PP Tournament Prizes [#FeatureID 123958]
	Description: Insert Into LA_InvoiceItemType record: Deduct PP Prizes
*/

DECLARE @DeductPPPrizes INT = 30

IF NOT EXISTS (SELECT TOP 1 1 FROM dbo.LA_InvoiceItemType WITH(NOLOCK) WHERE InvItemTypeId = @DeductPPPrizes)
BEGIN
	INSERT dbo.LA_InvoiceItemType (InvItemTypeId, SignDB, GroupDB, SignSOA, GroupSOA, InvItemTypeName)
	VALUES (@DeductPPPrizes, -1, 'Expense', -1, '', N'Deduct PP Prizes')
END



-----------------------------------------------------------------------


use bodb_LicenseeReport
go

/*
	Created: 20191209@Bruce
	DB: DBLIC.bodb_LicenseeReport
	Task: PP Tournament Prizes [#FeatureID 123958]
	Description: Adding promotion prize amount to Licensee Reconciliation
*/
if not exists(
	select 1
	from sys.columns c
	where [object_id] = object_id('rptLicenseeReconciliation') and [name]='Promotion')
begin
	alter table rptLicenseeReconciliation add Promotion money null
end
go