/*
	Task: Disable unused trigger, preparing to be deleted later (Tables/SPs)
	Run on DB042.bodb02
*/ 

use bodb02
GO

ALTER TABLE translog DISABLE TRIGGER translog_after_insert4Danger