/*
	Revise IX_recomand on translog to avoding key lookup for ExecRep_09
	Run on DB053/DB052
*/

/*
	Current:
	CREATE NONCLUSTERED INDEX [IX_recommend] ON [dbo].[translog]
	(
		[recommend] ASC,
		[winlostdate] ASC
	)
	WITH (DROP_EXISTING = ON, FILLFACTOR = 100) ON [translog_index]
	GO
*/
CREATE NONCLUSTERED INDEX [IX_recommend] ON [dbo].[translog]
(
	[recommend] ASC,
	[winlostdate] ASC
)INCLUDE (StatusId)
WITH (DROP_EXISTING = ON, FILLFACTOR = 100, ONLINE = ON) ON [translog_index]
GO