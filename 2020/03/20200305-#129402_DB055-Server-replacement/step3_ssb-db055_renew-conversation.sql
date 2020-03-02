/*
	Task - Setup new server DB055
		+ Renew conversation
	Run on DB055
*/

use bodb02
go

--==>> renew conversation for settlement
--==> for settlement's ssb it will be created by it self
delete from [sb].[DialogPool]

GO