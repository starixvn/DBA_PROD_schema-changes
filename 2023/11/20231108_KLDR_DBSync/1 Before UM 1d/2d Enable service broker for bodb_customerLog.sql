/* ****************************************************************
	Task: Enable service broker on db
	Run on primary node DBGRP03N1
**************************************************************** */
USE [master]
GO
ALTER DATABASE [bodb_customerlog] SET NEW_BROKER WITH ROLLBACK IMMEDIATE;
ALTER DATABASE [bodb_customerlog] SET ENABLE_BROKER WITH ROLLBACK IMMEDIATE;
GO
