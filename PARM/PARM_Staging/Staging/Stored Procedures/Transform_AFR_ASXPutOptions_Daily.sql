

-- *********************************************
-- Author:		Aaron Jackson
-- Create date: 05/04/2015
-- Description:	
-- Execute: EXEC [Staging].[Transform_AFR_ASXPutOptions_Daily]
-- *********************************************

CREATE PROCEDURE [Staging].[Transform_AFR_ASXPutOptions_Daily]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	/*
		TODO:
		Need to add missing asx codes
		Need to corrext XJO price
		... good enough for now
		need to add logging
		need to add try/catch block
		need to add state checks
		add params.. which runid is this executing for?
	*/

IF OBJECT_ID('tempdb.dbo.#Buffer', 'U') IS NOT NULL DROP TABLE #Buffer; 

WITH TransformData AS
(
	SELECT [RunID]
		  ,[SystemID]
		  ,[FileID]
		  ,[RowID]
		  ,NULL as [ASXCode]
		  ,CASE 
				WHEN LEN(LAG(OptionSeriesMonth,1,NULL) OVER (ORDER BY RowID ASC)) > 3 THEN RTRIM(LTRIM(LEFT(LAG(OptionSeriesMonth,1,NULL) OVER (ORDER BY RowID ASC), CHARINDEX('Last',LAG(OptionSeriesMonth,1,NULL) OVER (ORDER BY RowID ASC))-2)))
				ELSE
					RTRIM(LTRIM(LEFT(LAG(OptionSeriesMonth,RowID-1,NULL) OVER (ORDER BY RowID ASC), CHARINDEX('Last',LAG(OptionSeriesMonth,1,NULL) OVER (ORDER BY RowID ASC))-2)))
		   END as [Company]  --CHARINDEX ( expressionToFind ,expressionToSearch [ , start_location ] )
		  ,CASE 
				WHEN LEN(LAG(OptionSeriesMonth,1,NULL) OVER (ORDER BY RowID ASC)) > 3 THEN RTRIM(LTRIM(RIGHT(LAG(OptionSeriesMonth,1,NULL) OVER (ORDER BY RowID ASC), LEN(LAG(OptionSeriesMonth,1,NULL) OVER (ORDER BY RowID ASC))-CHARINDEX('$',LAG(OptionSeriesMonth,1,NULL) OVER (ORDER BY RowID ASC)))))
				ELSE
					NULL	 
		   END as [StockLastSale]
		  ,[OptionSeriesMonth]
		  ,[OptionSeriesYear]
		  ,[ExercisePrice]
		  ,[FairValue]
		  ,[LastSale]
		  ,[Volume]
		  ,[OpenInterest]
		  ,[ImpliedVolatility]
		  ,[Delta]
		  ,REPLACE([AnnualReturn],',,','') as [AnnualReturn]
		  --,ROW_NUMBER()
	  FROM [PARM_Staging].[Staging].[AFR_ASXPutOptions_Daily_Raw]
	  WHERE OptionSeriesMonth NOT IN ('', 'PUT OPTIONS')
)

	SELECT
		   TD.[RunID]
		  ,TD.[SystemID]
		  ,TD.[FileID]
		  ,TD.[RowID]
		  ,NULL as [ASXCode]
		  ,CASE
				WHEN TD.Company IS NULL THEN LAG(TD.Company,1,-1) OVER (ORDER BY TD.RowID ASC)
				ELSE
					TD.[Company]
		   END as [Company]
		  ,CASE
				WHEN TD.StockLastSale IS NULL THEN LAG(TD.StockLastSale,1,-1) OVER (ORDER BY TD.RowID ASC)
				ELSE
					TD.[StockLastSale]
		   END as [StockLastSale]
		  ,'Put' as [ContractType]
		  ,TD.[OptionSeriesMonth]
		  ,TD.[OptionSeriesYear]
		  ,TD.[ExercisePrice]
		  ,TD.[FairValue]
		  ,TD.[LastSale]
		  ,TD.[Volume]
		  ,TD.[OpenInterest]
		  ,TD.[ImpliedVolatility]
		  ,TD.[Delta]
		  ,TD.[AnnualReturn]
	INTO #Buffer
	FROM TransformData as TD
	WHERE TD.OptionSeriesYear != '';

	DECLARE @RowCount INT = (SELECT COUNT(*) FROM #Buffer WHERE Company IS NULL);

	WHILE @RowCount > 0
	BEGIN

		WITH UpdateCTE AS
		(
			SELECT
				Company, 
				CASE
					WHEN Company IS NULL THEN LAG(Company,1,-1) OVER (ORDER BY RowID ASC)
					ELSE [Company]
				END as [NewCompany],
				StockLastSale,
				CASE
					WHEN StockLastSale IS NULL THEN LAG(StockLastSale,1,-1) OVER (ORDER BY RowID ASC)
					ELSE [StockLastSale]
				END as [NewStockLastSale]
			FROM #Buffer
		)
			
		UPDATE UpdateCTE
		SET Company = NewCompany,
			StockLastSale = NewStockLastSale;

		SET @RowCount = (SELECT COUNT(*) FROM #Buffer WHERE Company IS NULL);

	END

	INSERT INTO [Staging].[AFR_ASXPutOptions_Daily_Transformed] 
	SELECT 
		A.RunID,
		A.SystemID,
		A.FileID,
		A.RowID,
		COALESCE(B.[ASX Code],'UNK') as [ASXCode],
		A.Company,
		A.StockLastSale,
		A.ContractType,
		A.OptionSeriesMonth,
		A.OptionSeriesYear,
		A.ExercisePrice,
		A.FairValue,
		A.LastSale,
		A.OpenInterest,
		A.ImpliedVolatility,
		A.Delta,
		A.AnnualReturn
	FROM #Buffer AS A
	LEFT JOIN [Staging].[AFR_ASX300_Daily_Raw] AS B on A.Company = B.[Company name] AND A.RunID = B.RunID



END