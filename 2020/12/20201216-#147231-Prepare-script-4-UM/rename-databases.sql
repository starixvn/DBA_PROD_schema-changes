
/*
	Task - Move some dbs from G$ to F$
		+ Rename databases
			1- bodb_Maintenance
			2- bodb_PlaytechCS
			3- bodb_CRM
			4- bodb_3rdProduct
*/
EXEC sp_renamedb 'bodb_Maintenance', 'DEL_bodb_Maintenance'
EXEC sp_renamedb 'bodb_PlaytechCS', 'DEL_bodb_PlaytechCS'
EXEC sp_renamedb 'bodb_CRM', 'DEL_bodb_CRM'
EXEC sp_renamedb 'bodb_3rdProduct', 'DEL_bodb_3rdProduct'

EXEC sp_renamedb 'bodb_Maintenance_New', 'bodb_Maintenance'
EXEC sp_renamedb 'bodb_PlaytechCS_New', 'bodb_PlaytechCS'
EXEC sp_renamedb 'bodb_CRM_New', 'bodb_CRM'
EXEC sp_renamedb 'bodb_3rdProduct_New', 'bodb_3rdProduct'