select msgID, count(distinct msgNameEN) 
from 
(
	select * from msgError with(nolocK)
	union all select * from DBCUST.custDB.dbo.msgError with(nolocK)
) XX
group by msgID
having count(distinct msgNameEN)  < 2 and count(1) = 2