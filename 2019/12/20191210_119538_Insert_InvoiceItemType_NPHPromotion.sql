USE bodb_Licensee
GO

/*
	Created: 20191016@Parsons
	DB: DBCUST.bodb_Licensee
	Task: Non-peak hour promotion [#FeatureID 119538]
	Description: Insert Into LA_InvoiceItemType record: Deduct non-peak hour promotion
*/

DECLARE @DeductNPHPromotion INT = 29

IF NOT EXISTS (SELECT TOP 1 1 FROM dbo.LA_InvoiceItemType WITH(NOLOCK) WHERE InvItemTypeId = @DeductNPHPromotion)
BEGIN
	INSERT dbo.LA_InvoiceItemType (InvItemTypeId, SignDB, GroupDB, SignSOA, GroupSOA, InvItemTypeName)
	VALUES (@DeductNPHPromotion, -1, 'Expense', -1, 'Combine with 1', N'Deduct Sportsbook promotional event')
END