/*
	Creator:	20180720@Sophia
	Task:		Add included columns to [IX_recommend] to boost Statement Report performance - [Redmine: #00000]
	Server:		DB06
*/


--	BEGIN STEP 1:
--		Index [IX_recommend] on [bettrans]
----------------------------------------------------------------------------------------------------

USE	bodb02;
GO

DROP INDEX IX_recommend ON dbo.bettrans;

CREATE NONCLUSTERED INDEX	IX_recommend ON dbo.bettrans (
								recommend	ASC
							,	winlostdate	ASC
							,	bettype		ASC
							)
							INCLUDE (stake, actual_stake, statusID, winlost, awinlost, mwinlost, swinlost, playercomm, comm, acomm, scomm)
							ON Bettrans_index6;
GO


--	BEGIN STEP 2:
--		Index [IX_recommend] on [bettransLC]
----------------------------------------------------------------------------------------------------

USE	bodb02;
GO

DROP INDEX IX_recommend ON dbo.bettransLC;

CREATE NONCLUSTERED INDEX	IX_recommend ON dbo.bettransLC (
								recommend	ASC
							,	winlostdate	ASC
							)
							INCLUDE (stake, actual_stake, statusID, winlost, awinlost, mwinlost, swinlost, playercomm, comm, acomm, scomm)
							ON bettransLC_index;
GO


--	BEGIN STEP 3:
--		Index [IX_recommend] on [bettransRnG]
----------------------------------------------------------------------------------------------------

USE	bodb02;
GO

DROP INDEX IX_recommend ON dbo.bettransRnG;

CREATE NONCLUSTERED INDEX	IX_recommend ON dbo.bettransRnG (
								recommend	ASC
							,	winlostdate	ASC
							)
							INCLUDE (stake, actual_stake, statusID, winlost, awinlost, mwinlost, swinlost, playercomm, comm, acomm, scomm)
							ON bettransRnG_index;
GO
