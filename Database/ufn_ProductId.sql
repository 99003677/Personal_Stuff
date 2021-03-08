CREATE or alter FUNCTION [dbo].[ufn_AutoProductId()]()

RETURNS VARCHAR(5)

BEGIN

	DECLARE @Result VARCHAR(5)

	DECLARE @ToString VARCHAR(5)

	DECLARE @Iterator int

	DECLARE @convert varchar(4)

	DECLARE @LastResult VARCHAR(5)

	SET @Result = (SELECT TOP 1 Product_ID FROM PRODUCTS ORDER BY Product_ID DESC)

	SET @ToString = RIGHT(@Result,4)

	SET @Iterator = CAST(@ToString as INT)+1

	SET @convert = CAST(@Iterator as varchar(4))

	SET @LastResult = CONCAT('P',@convert)

	return @LastResult

END

Go