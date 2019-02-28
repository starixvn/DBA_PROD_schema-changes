USE bodb_Licensee
GO

/*
	Created: 20190125@Bruce
	Task: Implement increased security measures for storing invoices [RedmineID: #96660]
	Database: DBLIC.bodb_Licensee
	Description: Create new table for storing invoice file 
*/

CREATE TABLE [dbo].[LA_InvoiceFile](
	[InvoiceHeaderId] [int] NOT NULL,
	[FileData] [varbinary](max) NOT NULL,
	CONSTRAINT [PK_LA_InvoiceFile] PRIMARY KEY CLUSTERED([InvoiceHeaderId] ASC)
)
GO

