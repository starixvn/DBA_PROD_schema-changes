/*
	Task - Truncate table Intg_GameRoundBetStake @DBTRANS Replication
		1) Remove this table from replication
		2) truncate table / create new index using the script below
		3) Add back the table to replication
	please do it @ DBTRANS/ DB06x / DBTP and MNL as well
*/

truncate table Intg_GameRoundBetStake

go

create nonclustered index IX_CreateDate on Intg_GameRoundBetStake(CreateDate) ON [bettransLC_index]
