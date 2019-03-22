
/*
	Task: Create non clustered index on betParlayResult_Archive for archiving process
	Run on DB06.bodb_Archive 
*/

CREATE NONCLUSTERED INDEX [IX_winlostdate] ON [dbo].[betParlayResult_Archive]
(
	[winlostdate] ASC
) ON [DATA]
GO