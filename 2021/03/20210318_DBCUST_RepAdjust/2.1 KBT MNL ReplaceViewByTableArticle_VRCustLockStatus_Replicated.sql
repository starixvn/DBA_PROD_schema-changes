/*
	Task: replace temp view by table, ready for add table article
	Run script below @Replicated servers DB06x, DBTP, MNL DBMNL, MNL DB06
*/


IF EXISTS(
	SELECT TOP 1 1 FROM sys.views v WHERE OBJECT_NAME(v.object_id) = 'VRCustLockStatus'
)
	DROP VIEW [dbo].VRCustLockStatus 
GO

CREATE TABLE [dbo].[VRCustLockStatus](
	[CustID] [int] NOT NULL,
	[Type] [tinyint] NOT NULL,
 CONSTRAINT [PK_VRCustLockStatus] PRIMARY KEY CLUSTERED 
(
	[CustID] ASC,
	[Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [virtualrate_table]
) ON [virtualrate_table]