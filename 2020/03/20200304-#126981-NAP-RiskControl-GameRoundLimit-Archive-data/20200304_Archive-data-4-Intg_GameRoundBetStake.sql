/*
	Task - Archive data for table: Intg_GameRoundBetStake
		+ Remove this table out replication
		+ truncate table / create new index
		+ Add back this table to replication

	please do it @ DB06x / DBTP and MNL as well
	run this script after remove replication
*/

truncate table Intg_GameRoundBetStake

go

create nonclustered index IX_CreateDate on Intg_GameRoundBetStake(CreateDate) ON [bettransLC_index]