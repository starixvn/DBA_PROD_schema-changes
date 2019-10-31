/*
	Task- Add routine task for removing data on ParlaySettlement_trace
	 + Create new index to support remove data
*/

USE [bodb02]
GO

CREATE NONCLUSTERED INDEX [IX_logtime] ON [dbo].[ParlaySettlement_trace]
(
	[logtime] ASC
)ON [DATA]
GO


