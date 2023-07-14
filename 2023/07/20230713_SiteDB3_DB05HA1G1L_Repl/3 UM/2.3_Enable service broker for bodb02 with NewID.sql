/* ****************************************************************
	Task: Enable service broker on db
	Run on primary node DBGRP03N1
**************************************************************** */

USE [master]
GO
ALTER DATABASE [bodb02] SET NEW_BROKER WITH ROLLBACK IMMEDIATE; 
ALTER DATABASE [bodb02] SET ENABLE_BROKER WITH ROLLBACK IMMEDIATE; 
GO

