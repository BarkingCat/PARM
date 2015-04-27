-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [Control].[GetSystemID]
(
	@SystemName VARCHAR(255)
)
RETURNS INT
WITH SCHEMABINDING
AS
BEGIN

	DECLARE @SystemID INT = (SELECT SystemID FROM [Control].[SourceSystems] WHERE SystemName = @SystemName);

	RETURN @SystemID

END