/*
	Task - Move data file from G$ to T$ for FPS_RPT database
	Run on DBFRAUD

	Steps:
		1- update path files
		2- stop sql service
		3- copy data file from G$ to T$
		4- start sql service and check result
*/

--FPS_RPT

ALTER DATABASE FPS_RPT MODIFY FILE (NAME = FPS_RPT, FILENAME = N'T:\USER_DB\FPS_RPT\FPS_RPT.mdf');
ALTER DATABASE FPS_RPT MODIFY FILE (NAME = FPS_RPT_log, FILENAME = N'T:\USER_DB\FPS_RPT\FPS_PT_log.ldf');
ALTER DATABASE FPS_RPT MODIFY FILE (NAME = FPS_RPT_TBL_01, FILENAME = N'T:\USER_DB\FPS_RPT\FPS_RPT_TBL_01.NDF');
ALTER DATABASE FPS_RPT MODIFY FILE (NAME = FPS_RPT_IDX_01, FILENAME = N'T:\USER_DB\FPS_RPT\FPS_RPT_IDX_01.NDF');

GO
