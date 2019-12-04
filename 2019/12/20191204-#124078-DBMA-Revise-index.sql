
/*
	Task - Revise index on table ServiceMonitoring to avoid bloking
	Run on DB052.bodb_Maintenance
*/
DROP INDEX [IDX_ServiceMonitoring] ON [dbo].[ServiceMonitoring]
GO

ALTER TABLE [dbo].[ServiceMonitoring] DROP CONSTRAINT [PK_ServiceMonitoring]
GO

CREATE CLUSTERED INDEX CIX_ServiceMonitoring ON [dbo].[ServiceMonitoring](ServiceName, IPServer) ON [DATA]

ALTER TABLE [dbo].[ServiceMonitoring] ADD  CONSTRAINT [PK_ServiceMonitoring] PRIMARY KEY NONCLUSTERED 
(
	[ServiceId] ASC
) ON [DATA]
GO

