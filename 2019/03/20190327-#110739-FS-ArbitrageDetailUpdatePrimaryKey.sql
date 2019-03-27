/*
Creator: 20190327@Casey.Huynh
Task:    Update Primary Key [Redmine ID: 110739]
Server:  bodb_FraudSensor
*/ 
ALTER TABLE ArbitrageTicketDetails
DROP CONSTRAINT  PK_ArbitrageTicketDetails


DROP INDEX NCIX_ArbitrageTicketDetails_IsIPFraud ON ArbitrageTicketDetails
DROP INDEX NCIX_ArbitrageTicketDetails_MatchIdCustId ON ArbitrageTicketDetails

CREATE CLUSTERED INDEX [NCIX_ArbitrageTicketDetails_MatchIdCustId] ON [dbo].[ArbitrageTicketDetails]
(
	[MatchId] ASC,
	[CustId] ASC
)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [IDX]
GO