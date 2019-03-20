/*
	Created: Leo.Vo
	Date: 2019-03-19
	Task: [Redmine: #110322]
	DB: bodb_OWP
*/

--------------------------------
-- 1. Alter schema, create table
--------------------------------
USE bodb_OWP

-- add overtime
ALTER TABLE dbo.EmployeeWorkingShift
ADD RefShiftId INT NULL

GO
