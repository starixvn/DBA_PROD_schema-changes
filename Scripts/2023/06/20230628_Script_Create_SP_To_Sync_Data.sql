
ALTER PROC SyncData_ToDeviceBigInt
(
	@EndId INT = 1500000000, --- 1 471 771 799, should be use a bigger number
	@BatchSize INT = 5000,
	@MinId INT = 1 
)
AS
BEGIN

	SET NOCOUNT ON;

	IF (ISNULL(@EndId,0) = 0)
	BEGIN
		RETURN; ---job stop
	END

	DECLARE @StartId INT = 0

	SET @StartId = @EndId - @BatchSize + 1; --- 5000 rows each loop

	BEGIN TRY
		
		--get start time
		declare @startTime datetime2 = SYSDATETIME();
		declare @endTime datetime2 = DATEADD(SECOND, 1200, @startTime); -- test data insert in 20 mins

		--set iden ON to insert data
		SET IDENTITY_INSERT Device_BigINT ON

		--begin loop to insert data
		WHILE ((@EndId >= @MinId) AND @endTime >= SYSDATETIME())
		BEGIN

			IF NOT EXISTS (SELECT TOP 1 1 FROM Device d WITH(NOLOCK) WHERE d.Increment BETWEEN @StartId AND @EndId)
			BEGIN
				---increase to next batch
				SET @EndId = @StartId - 1
				SET @StartId = @EndId - @BatchSize + 1;

				CONTINUE; -- to new loop
			END

			---insert data by batch to new table
			INSERT INTO Device_BigINT (Id,Code,IdRef,CreatedDate,Increment)
			SELECT Id,Code,IdRef,CreatedDate,Increment
			FROM Device d WITH(NOLOCK)
			WHERE d.Increment BETWEEN @StartId AND @EndId

			---insert log table
			IF @@ROWCOUNT <> 0  --- rows inserted
			BEGIN
				INSERT INTO DEL_Temp_TransferData_Log(StartId, EndId, BatchSizes, IsDone, CreatedDate)
				SELECT @StartId, @EndId, @BatchSize, 1, GETDATE()
			END

			---increase to next batch
			SET @EndId = @StartId - 1
			SET @StartId = @EndId - @BatchSize + 1;

			WAITFOR DELAY '00:00:00.100'
		END

		--all data is inserted, set to off
		SET IDENTITY_INSERT Device_BigINT OFF;

	END TRY
	BEGIN CATCH

		---insert log table for current failed batch
		INSERT INTO DEL_Temp_TransferData_Log(StartId, EndId, BatchSizes, IsDone, CreatedDate)
		SELECT @StartId, @EndId, @BatchSize, 0, GETDATE()

		--error occurred, set to off
		SET IDENTITY_INSERT Device_BigINT OFF;

		---raise error
		DECLARE @errorMessage VARCHAR(MAX) = ''
		SET @errorMessage = ERROR_MESSAGE();

		RAISERROR(@errorMessage, 16, 1);

	END CATCH
	
END

GO