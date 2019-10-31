/*
	Phease 1A:
	Task- Revise indexes for Fraud Sensor relocation
	
	Run on DB054
*/

USE bodb02
GO
--//Sync index from DB052 to DB054
CREATE NONCLUSTERED INDEX [IX_tstamp_transid] ON [dbo].[bettrans]
(
	[tstamp] ASC,
	[transid] ASC
) ON [Bettrans_index1]
GO

USE bodb_FraudSensor
GO

DROP INDEX [CIX_OddsLog] ON [dbo].[OddsLog]
GO

CREATE CLUSTERED INDEX [CIX_OddsLog] ON [dbo].[OddsLog]
(
	[OddsId] ASC,
	[LogDate] ASC
) ON [DATA]
GO

--==SuspiciousInfo
ALTER TABLE [dbo].[SuspiciousInfo] DROP CONSTRAINT [PK_SuspiciousInfo] WITH ( ONLINE = OFF )
GO

CREATE CLUSTERED INDEX CIX_SuspiciousInfo ON dbo.SuspiciousInfo(EventDate, FraudCaseId, CustId) ON [DATA]

CREATE UNIQUE NONCLUSTERED INDEX IXU_SuspiciousInfo ON dbo.SuspiciousInfo(MatchId, FraudCaseId, CustId) ON [DATA]
GO

--==CustomerLog_CustId
CREATE NONCLUSTERED INDEX [NIX_CustomerLog_CustId] ON [dbo].[CustomerLog]
(
	[CustId] ASC,
	[CustLogType] ASC
)WITH (DROP_EXISTING = ON) ON [IDX]
GO