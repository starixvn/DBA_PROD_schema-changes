/*
	Task: Truncate data/change PK for indicated table
	Run @ DBCUST.custdb
			DB052.bodb02, DB053.bodb02, DB054.bodb02, DB055.bodb02, DB06.bodb02, DB061.bodb02, DBTP.bodb02, DBDW.bodb02, DBDW2.bodb02
*/

TRUNCATE TABLE TOControl_GlobalSetting
GO
ALTER TABLE [dbo].TOControl_GlobalSetting ADD ProfileID SMALLINT NOT NULL
GO

ALTER TABLE [dbo].[TOControl_GlobalSetting] DROP CONSTRAINT  [PK_TO_ControlglobalSetting]
ALTER TABLE [dbo].[TOControl_GlobalSetting] ADD CONSTRAINT [PK_TO_ControlglobalSetting] PRIMARY KEY ([CustID],[Sporttype],[IsGroupHeadLine],[ProfileID]) 