/*
	Task: Disable unused trigger, preparing to be deleted later
*/ 

use bodb02
GO

ALTER TABLE translog DISABLE TRIGGER translog_after_insert4Danger