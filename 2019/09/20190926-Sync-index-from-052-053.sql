/*
	Task- Syncing index IX_tstamp_transid from DB052 to DB053 
		
	Run on DB053
*/

CREATE NONCLUSTERED INDEX [IX_tstamp_transid] ON [dbo].[bettrans]
(
	[tstamp] ASC,
	[transid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Bettrans_index1]
GO
