/*
Creator: 20190118@John
Task:  Adjust index for [SuspiciousCustomer] - [Redmine ID: #107858]
Server:  bodb_FraudSensor
*/ 

USE	bodb_FraudSensor;
GO

DROP INDEX CIX_SuspiciousCustomer_DelinquentHedge   
    ON dbo.SuspiciousCustomer
GO

CREATE NONCLUSTERED INDEX [NCIX_SuspiciousCustomer_DelinquentHedgeDirty] ON [dbo].[SuspiciousCustomer]
(
	[IsDelinquent] ASC,
	[IsHedge] ASC,
	[IsDirty] ASC
)
INCLUDE ([IsVerified]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [IDX]
GO
