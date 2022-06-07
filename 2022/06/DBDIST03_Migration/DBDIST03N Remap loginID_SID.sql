/*
	Task: Remap loginID-SID
	Run on DBDIST03N
*/

USE MonDB
GO
ALTER USER [DBDistN3\DBA_Scheduler] WITH LOGIN = [DBDistN3\DBA_Scheduler];
ALTER USER [DBDistN4\DBA_Scheduler] WITH LOGIN = [DBDistN4\DBA_Scheduler];
ALTER USER [vnBilly] WITH LOGIN = [vnBilly];
ALTER USER [sqlLink] WITH LOGIN = [sqlLink];
ALTER USER [rdsvntrack] WITH LOGIN = [rdsvntrack];
ALTER USER [vnPatrick] WITH LOGIN = [vnPatrick];
ALTER USER [RDCharlie] WITH LOGIN = [RDCharlie];
ALTER USER [MonDB_User] WITH LOGIN = [MonDB_User];


USE [Monitor]
GO
ALTER USER [Dot_Member] WITH LOGIN = [Dot_Member];
ALTER USER [RDCooper] WITH LOGIN = [RDCooper];
ALTER USER [RDVictor] WITH LOGIN = [RDVictor];
ALTER USER [vnPatrick] WITH LOGIN = [vnPatrick];
ALTER USER [vnBilly] WITH LOGIN = [vnBilly];
ALTER USER [rdsvntrack] WITH LOGIN = [rdsvntrack];