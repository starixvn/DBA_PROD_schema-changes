/*
	Task: Prepare Task_DBA_AG_Jobs_List for job AG switch
	Run on DBGRP03N1/DBGRP03N2 bodb02
*/

use bodb02
go

truncate table Task_DBA_AG_Jobs_List

insert [Task_DBA_AG_Jobs_List]
select name, 99, 0 from msdb.dbo.sysjobs

SELECT *
FROM [Task_DBA_AG_Jobs_List] b with (nolock)
	inner join DBGRP02L.bodb02.dbo.[Task_DBA_AG_Jobs_List] d on b.Jobname = d.jobname


update b set b.prioritylevel = d.prioritylevel, b.Ignore = d.ignore
FROM [Task_DBA_AG_Jobs_List] b
	inner join DBGRP02L.bodb02.dbo.[Task_DBA_AG_Jobs_List] d on b.Jobname = d.jobname