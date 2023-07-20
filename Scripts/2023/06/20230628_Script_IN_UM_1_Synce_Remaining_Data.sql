

--2222 --after reboot pc

go

---insert remaining data of device table to temp table
declare @maxId INT = 0
select @maxId = max(d.Increment)  from Device_bigint d with(nolock)

select * into Del_UM_temp_Device_data
from device d with(nolock)
where d.Increment >= @maxId

---set identity of device_bigint to max of device table
USE [FPS_DeviceFingerprint];

GO

declare @maxId INT = 0
select @maxId = max(d.Increment)  from Device d with(nolock)
DBCC CHECKIDENT ('Device_bigint', RESEED, @maxId);

GO


---check current Increment number 
USE [FPS_DeviceFingerprint]
GO

---get the endId from the last row to check log
select top 100 * from DEL_Temp_TransferData_Log l with(nolock)
where  EndId = 1478803910

go 


select max(d.Increment)  from Device_bigint d with(nolock)
select max(d.Increment)  from Device d with(nolock)
