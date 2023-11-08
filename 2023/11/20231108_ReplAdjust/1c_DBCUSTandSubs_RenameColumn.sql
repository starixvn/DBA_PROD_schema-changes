
/*
	Task: Rename column on DBCUST and its subs
	Run on DBCUST, DB05x, DB06x, DBTP10C, DBDWx, DBTRANS, DBGRP0x, DBKLC1, CASINOADMINCS, DBCASINOARV, CASINOMAIN\MAIN, CASINOQAVMN2, KL DBCUST
*/
/*<info serverAlias="DBCUST-CustDB"></info>*/
/*	
	Created: 20221207@Tacy
	Task: Rename unused columns on Custinfo
	Redmine: https://redmine.nexcel.vn/issues/179132
	DB: DBCUST-CustDB
*/

EXEC sp_rename 'Custinfo.DisableColossusBet','DEL_DisableColossusBet', 'COLUMN'
EXEC sp_rename 'Custinfo.HideColossusBet','DEL_HideColossusBet', 'COLUMN'

