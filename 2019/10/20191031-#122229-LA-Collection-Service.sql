use bodb_licenseeReport
go

/*
	Created: 20191031@Bruce
	DB: DBLIC
	Task: Create summary table for Licensee recon/Collection Summary [#122229]
	Description: Create rptLicenseeReconciliation table
*/

create table [dbo].[rptLicenseeReconciliation] (
    [RecordId]          int            identity (1, 1) not null,
    [AccDate]           date           not null,
    [PartyId]           int            not null,
    [Environment]       varchar (10)   not null,
    [CurrencyName]      varchar (10)   not null,
    [OpeningBalance]    money          null,
    [AmountToCompany]   money          null,
    [ProductFees]       money          null,
    [Discount]          money          null,
    [Rebate]            money          null,
    [Others]            money          null,
    [Prepayment]        money          null,
    [ClosingBalance]    money          null,
    [SettlementDetails] varchar (4000) null,
    constraint [PK_rptLicenseeReconciliation] primary key nonclustered ([RecordId] asc)
);


Go
create clustered index [IX_rptLicenseeReconciliation]
    on [dbo].[rptLicenseeReconciliation]([AccDate] asc, [PartyId] asc);

grant select on dbo.rptLicenseeReconciliation to bodbAdminNet
grant insert on dbo.rptLicenseeReconciliation to bodbAdminNet
grant delete on dbo.rptLicenseeReconciliation to bodbAdminNet
go