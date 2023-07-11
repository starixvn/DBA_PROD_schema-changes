/*<info serverAlias="DBSIC-master"></info>*/
/*
	Task - scale out dbtrans - create DBGRP03N2/DBGRP03N2
		+ Setup SSB ( certificate, endpoint)
	Run on DBGRP03N1/DBGRP03N2
*/


ALTER DATABASE [bodb_customerlog] SET NEW_BROKER WITH ROLLBACK IMMEDIATE;
ALTER DATABASE [bodb_customerlog] SET ENABLE_BROKER WITH ROLLBACK IMMEDIATE;
