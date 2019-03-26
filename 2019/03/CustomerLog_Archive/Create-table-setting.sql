/*
	Task: Implement customer log archive
	Create new schema

*/

use bodb_CustomerLog
go

create table Task_ArchiveData_List_Processing(TableName varchar(200), ArchiveDate DATETIME)
create table Task_ArchiveData_Setting(ArchiveDate DATETIME, ArchiveDayCount SMALLINT)
create table Task_ArchiveData_TableList(TableName VARCHAR(255))

create table Task_ArchiveData_Transition(LogId bigint not null, LogDate datetime) ON DATA
create clustered index CIX_Task_ArchiveData_Transition on Task_ArchiveData_Transition(LogId, LogDate) ON DATA
